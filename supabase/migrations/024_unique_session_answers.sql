-- 024_unique_session_answers.sql
-- The quiz saves each answer as it happens and saves the whole session again
-- before completing it, so a dropped request can't lose an answer. A unique
-- (session_id, question_id) index lets that second save upsert with
-- ON CONFLICT DO NOTHING instead of double-counting.
--
-- Deletes existing duplicate answers first, keeping the earliest one.
-- Re-runnable: the delete is a no-op once duplicates are gone, and the index
-- is guarded.

delete from session_answers a
 using session_answers b
 where a.session_id = b.session_id
   and a.question_id = b.question_id
   and (a.answered_at, a.id) > (b.answered_at, b.id);

create unique index if not exists session_answers_session_question_key
  on session_answers (session_id, question_id);
