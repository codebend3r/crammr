-- 025_engagement_metrics.sql
-- Engagement metrics derived from `session_answers`: daily active users and
-- next-day / first-week retention per signup cohort. Dates are UTC.
--
-- The views live in a private `analytics` schema because a view runs with its
-- owner's rights and bypasses RLS. The API only exposes `public`, and anon and
-- authenticated get no grants here, so only the SQL editor or a direct database
-- connection can read across users.
--
-- Re-runnable: guarded schema + `create or replace view`.

create schema if not exists analytics;
revoke all on schema analytics from public, anon, authenticated;

create or replace view analytics.user_active_days as
select s.user_id,
       (a.answered_at at time zone 'utc')::date as day,
       count(*)                                  as answers
  from public.session_answers a
  join public.sessions s on s.id = a.session_id
 group by s.user_id, (a.answered_at at time zone 'utc')::date;

create or replace view analytics.daily_active_users as
select day,
       count(*)     as active_users,
       sum(answers) as answers
  from analytics.user_active_days
 group by day
 order by day desc;

create or replace view analytics.retention_cohorts as
with cohorts as (
  select user_id, min(day) as cohort_day
    from analytics.user_active_days
   group by user_id
),
returns as (
  select c.cohort_day,
         c.user_id,
         bool_or(d.day = c.cohort_day + 1)                         as returned_next_day,
         bool_or(d.day between c.cohort_day + 1 and c.cohort_day + 7) as returned_first_week
    from cohorts c
    join analytics.user_active_days d on d.user_id = c.user_id
   group by c.cohort_day, c.user_id
)
select cohort_day,
       count(*)                                    as users,
       count(*) filter (where returned_next_day)   as returned_next_day,
       count(*) filter (where returned_first_week) as returned_first_week,
       round(100.0 * count(*) filter (where returned_next_day) / count(*), 1)   as next_day_pct,
       round(100.0 * count(*) filter (where returned_first_week) / count(*), 1) as first_week_pct
  from returns
 group by cohort_day
 order by cohort_day desc;
