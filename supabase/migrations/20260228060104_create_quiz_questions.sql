/*
  # Create Quiz Questions Table for Ontario G1 Driver's License Test

  1. New Tables
    - `questions`
      - `id` (uuid, primary key) - Unique identifier for each question
      - `question` (text) - The question text
      - `option_a` (text) - First answer option
      - `option_b` (text) - Second answer option
      - `option_c` (text) - Third answer option
      - `option_d` (text) - Fourth answer option
      - `correct_answer` (text) - The correct answer ('A', 'B', 'C', or 'D')
      - `category` (text) - Question category (e.g., 'signs', 'rules', 'safety')
      - `created_at` (timestamptz) - Timestamp of when question was created

  2. Security
    - Enable RLS on `questions` table
    - Add policy for public read access (anyone can take the test)
*/

CREATE TABLE IF NOT EXISTS questions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  question text NOT NULL,
  option_a text NOT NULL,
  option_b text NOT NULL,
  option_c text NOT NULL,
  option_d text NOT NULL,
  correct_answer text NOT NULL CHECK (correct_answer IN ('A', 'B', 'C', 'D')),
  category text NOT NULL,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE questions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view questions"
  ON questions FOR SELECT
  TO anon
  USING (true);