-- 023_sync_total_questions.sql
-- `modules.total_questions` was typed by hand in the seed files, and four
-- language modules (english, spanish, japanese, italian) claim 500 questions
-- while their seeds stop at a BATCH placeholder. The module page shows that
-- number as "All (500)", so derive it from the real question rows instead.
--
-- Re-runnable: idempotent update + replaceable function + guarded triggers.

update modules m
   set total_questions = (select count(*) from questions q where q.module_id = m.id);

create or replace function refresh_module_total_questions() returns trigger
language plpgsql
set search_path = public
as $$
begin
  if tg_op = 'INSERT' then
    update modules m
       set total_questions = (select count(*) from questions q where q.module_id = m.id)
     where m.id in (select distinct module_id from inserted_questions);
  else
    update modules m
       set total_questions = (select count(*) from questions q where q.module_id = m.id)
     where m.id in (select distinct module_id from deleted_questions);
  end if;
  return null;
end;
$$;

-- Transition tables allow only one event per trigger, hence two triggers.
drop trigger if exists questions_count_after_insert on questions;
create trigger questions_count_after_insert
  after insert on questions
  referencing new table as inserted_questions
  for each statement execute function refresh_module_total_questions();

drop trigger if exists questions_count_after_delete on questions;
create trigger questions_count_after_delete
  after delete on questions
  referencing old table as deleted_questions
  for each statement execute function refresh_module_total_questions();
