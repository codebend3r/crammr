-- 018_seed_french.sql
-- French module: 500 quiz questions

-- Question 0 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Bonjour" mean?',
         '"Bonjour" is the standard French greeting used during the day, literally meaning "good day". It works for both "hello" and "good morning".',
         'Hello / Good day',
         '"Bonjour" means "hello" or "good day".',
         0
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Hello / Good day', true, 0),
       ('Goodbye', false, 1),
       ('Good night', false, 2),
       ('Thank you', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 1 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Goodbye" in French?',
         '"Au revoir" literally means "until seeing again" and is the standard way to say goodbye.',
         'Au revoir',
         '"Goodbye" in French is "au revoir".',
         1
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Bonsoir', false, 0),
       ('Au revoir', true, 1),
       ('Salut', false, 2),
       ('Bonne nuit', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 2 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Salut" mean?',
         '"Salut" is an informal greeting used between friends, meaning both "hi" and "bye".',
         'Hi / Bye (informal)',
         '"Salut" is an informal "hi" or "bye".',
         2
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Welcome', false, 0),
       ('Please', false, 1),
       ('Hi / Bye (informal)', true, 2),
       ('Sorry', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 3 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Good evening" in French?',
         '"Bonsoir" is used from late afternoon onwards as both a greeting and a farewell.',
         'Bonsoir',
         '"Good evening" in French is "bonsoir".',
         3
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Bonne nuit', false, 0),
       ('Bonjour', false, 1),
       ('Bonsoir', true, 2),
       ('Bon après-midi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 4 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Bonne nuit" mean?',
         '"Bonne nuit" means "good night" and is only used before bed, not as a general evening greeting.',
         'Good night',
         '"Bonne nuit" means "good night" (before sleeping).',
         4
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Good morning', false, 0),
       ('Good evening', false, 1),
       ('Good afternoon', false, 2),
       ('Good night', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 5 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "How are you?" formally in French?',
         '"Comment allez-vous?" uses the formal "vous" form and is appropriate with strangers or in professional settings.',
         'Comment allez-vous ?',
         '"How are you?" (formal) is "Comment allez-vous ?".',
         5
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Comment allez-vous ?', true, 0),
       ('Ça va ?', false, 1),
       ('Quoi de neuf ?', false, 2),
       ('Comment tu vas ?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 6 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Ça va ?" mean?',
         '"Ça va ?" literally means "It goes?" and is the casual way to ask "How are you?" or "How''s it going?"',
         'How are you? (casual)',
         '"Ça va ?" means "How are you?" informally.',
         6
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('What''s your name?', false, 0),
       ('How are you? (casual)', true, 1),
       ('Where are you?', false, 2),
       ('Who are you?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 7 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Please" (formal) in French?',
         '"S''il vous plaît" uses the formal "vous". The informal version with "tu" is "s''il te plaît".',
         'S''il vous plaît',
         '"Please" (formal) is "s''il vous plaît".',
         7
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Merci', false, 0),
       ('De rien', false, 1),
       ('S''il vous plaît', true, 2),
       ('Pardon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 8 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Merci beaucoup" mean?',
         '"Merci beaucoup" means "thank you very much". "Beaucoup" means "a lot" or "very much".',
         'Thank you very much',
         '"Merci beaucoup" means "thank you very much".',
         8
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('You''re welcome', false, 0),
       ('Excuse me', false, 1),
       ('I''m sorry', false, 2),
       ('Thank you very much', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 9 (greetings) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "You''re welcome" in French?',
         '"De rien" literally means "of nothing" and is the most common response to "merci". "Je vous en prie" is more formal.',
         'De rien',
         '"You''re welcome" is "de rien" (literally "of nothing").',
         9
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('De rien', true, 0),
       ('Pardon', false, 1),
       ('S''il vous plaît', false, 2),
       ('Au revoir', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 10 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "la mère" mean?',
         '"La mère" means "the mother". The masculine equivalent is "le père".',
         'The mother',
         '"La mère" means "the mother".',
         10
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The sister', false, 0),
       ('The mother', true, 1),
       ('The aunt', false, 2),
       ('The grandmother', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 11 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the father" to French.',
         '"Le père" is "the father". Note the masculine article "le".',
         'Le père',
         '"The father" is "le père".',
         11
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le frère', false, 0),
       ('L''oncle', false, 1),
       ('Le père', true, 2),
       ('Le grand-père', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 12 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le frère" mean?',
         '"Le frère" means "the brother". "La soeur" (or "la sœur") means "the sister".',
         'The brother',
         '"Le frère" means "the brother".',
         12
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The cousin', false, 0),
       ('The friend', false, 1),
       ('The son', false, 2),
       ('The brother', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 13 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the sister" in French?',
         '"La sœur" (sometimes written "la soeur") means "the sister".',
         'La sœur',
         '"The sister" is "la sœur".',
         13
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('La sœur', true, 0),
       ('La fille', false, 1),
       ('La tante', false, 2),
       ('La cousine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 14 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "les parents" mean?',
         '"Les parents" means "the parents" (mother and father together). The singular "un parent" can also mean "a relative".',
         'The parents',
         '"Les parents" means "the parents".',
         14
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The grandparents', false, 0),
       ('The parents', true, 1),
       ('The children', false, 2),
       ('The cousins', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 15 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the daughter" to French.',
         '"La fille" means "the daughter" but also "the girl" depending on context.',
         'La fille',
         '"The daughter" is "la fille".',
         15
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('La femme', false, 0),
       ('La mère', false, 1),
       ('La sœur', false, 2),
       ('La fille', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 16 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le fils" mean?',
         '"Le fils" means "the son". Note the silent "l" in the pronunciation.',
         'The son',
         '"Le fils" means "the son".',
         16
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The son', true, 0),
       ('The brother', false, 1),
       ('The husband', false, 2),
       ('The nephew', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 17 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the grandmother" in French?',
         '"La grand-mère" means "the grandmother". The hyphen is required.',
         'La grand-mère',
         '"The grandmother" is "la grand-mère".',
         17
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('La belle-mère', false, 0),
       ('La grand-mère', true, 1),
       ('La tante', false, 2),
       ('La marraine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 18 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "l''oncle" mean?',
         '"L''oncle" means "the uncle". The article "le" elides to "l''" before a vowel.',
         'The uncle',
         '"L''oncle" means "the uncle".',
         18
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The cousin', false, 0),
       ('The grandfather', false, 1),
       ('The uncle', true, 2),
       ('The nephew', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 19 (family) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the aunt" to French.',
         '"La tante" means "the aunt". Note the silent final "e".',
         'La tante',
         '"The aunt" is "la tante".',
         19
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('La cousine', false, 0),
       ('La nièce', false, 1),
       ('La belle-sœur', false, 2),
       ('La tante', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 20 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le pain" mean?',
         '"Le pain" means "the bread", a French staple.',
         'The bread',
         '"Le pain" means "the bread".',
         20
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The bread', true, 0),
       ('The cheese', false, 1),
       ('The butter', false, 2),
       ('The cake', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 21 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the cheese" in French?',
         '"Le fromage" is "the cheese", an iconic part of French cuisine.',
         'Le fromage',
         '"The cheese" is "le fromage".',
         21
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le beurre', false, 0),
       ('Le fromage', true, 1),
       ('Le lait', false, 2),
       ('Le yaourt', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 22 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "la pomme" mean?',
         '"La pomme" means "the apple". Don''t confuse it with "la pomme de terre" (potato).',
         'The apple',
         '"La pomme" means "the apple".',
         22
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The pear', false, 0),
       ('The potato', false, 1),
       ('The apple', true, 2),
       ('The tomato', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 23 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the water" to French.',
         '"L''eau" is "the water". The "le" article elides before the vowel "e".',
         'L''eau',
         '"The water" is "l''eau".',
         23
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le vin', false, 0),
       ('L''eau', true, 1),
       ('La bière', false, 2),
       ('Le jus', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 24 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le vin" mean?',
         '"Le vin" means "the wine". France is famous for its wines.',
         'The wine',
         '"Le vin" means "the wine".',
         24
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The beer', false, 0),
       ('The water', false, 1),
       ('The wine', true, 2),
       ('The juice', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 25 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the coffee" in French?',
         '"Le café" can mean both "the coffee" and "the café" (the place).',
         'Le café',
         '"The coffee" is "le café".',
         25
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le thé', false, 0),
       ('Le lait', false, 1),
       ('Le chocolat', false, 2),
       ('Le café', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 26 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le poulet" mean?',
         '"Le poulet" means "the chicken" (the meat or live bird).',
         'The chicken',
         '"Le poulet" means "the chicken".',
         26
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The chicken', true, 0),
       ('The beef', false, 1),
       ('The fish', false, 2),
       ('The pork', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 27 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the egg" to French.',
         '"L''œuf" (singular) is "the egg". The plural "les œufs" has a different pronunciation (silent "fs").',
         'L''œuf',
         '"The egg" is "l''œuf".',
         27
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le lait', false, 0),
       ('Le beurre', false, 1),
       ('L''œuf', true, 2),
       ('Le fromage', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 28 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le petit-déjeuner" mean?',
         '"Le petit-déjeuner" literally means "the small lunch" and refers to breakfast.',
         'Breakfast',
         '"Le petit-déjeuner" means "breakfast".',
         28
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Lunch', false, 0),
       ('Dinner', false, 1),
       ('Snack', false, 2),
       ('Breakfast', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 29 (food) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I''m hungry" in French?',
         '"J''ai faim" literally means "I have hunger". French uses "avoir" (to have) for many states.',
         'J''ai faim',
         '"I''m hungry" is "j''ai faim" (literally "I have hunger").',
         29
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai faim', true, 0),
       ('J''ai soif', false, 1),
       ('Je suis fatigué', false, 2),
       ('J''ai chaud', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 30 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "la tête" mean?',
         '"La tête" means "the head". Note the circumflex on "ê".',
         'The head',
         '"La tête" means "the head".',
         30
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The face', false, 0),
       ('The head', true, 1),
       ('The hair', false, 2),
       ('The neck', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 31 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the eye" in French?',
         '"L''œil" is singular "the eye". The irregular plural is "les yeux".',
         'L''œil',
         '"The eye" is "l''œil"; plural "les yeux".',
         31
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('L''oreille', false, 0),
       ('Le nez', false, 1),
       ('L''œil', true, 2),
       ('La bouche', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 32 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "la main" mean?',
         '"La main" means "the hand". It''s feminine despite ending in a consonant sound.',
         'The hand',
         '"La main" means "the hand".',
         32
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The arm', false, 0),
       ('The foot', false, 1),
       ('The finger', false, 2),
       ('The hand', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 33 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the foot" to French.',
         '"Le pied" means "the foot". Plural is "les pieds".',
         'Le pied',
         '"The foot" is "le pied".',
         33
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le pied', true, 0),
       ('La jambe', false, 1),
       ('La main', false, 2),
       ('Le doigt', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 34 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le bras" mean?',
         '"Le bras" means "the arm". The "s" is silent in the singular.',
         'The arm',
         '"Le bras" means "the arm".',
         34
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The leg', false, 0),
       ('The arm', true, 1),
       ('The shoulder', false, 2),
       ('The elbow', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 35 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the mouth" in French?',
         '"La bouche" is feminine and means "the mouth".',
         'La bouche',
         '"The mouth" is "la bouche".',
         35
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le nez', false, 0),
       ('La langue', false, 1),
       ('La bouche', true, 2),
       ('La dent', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 36 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le nez" mean?',
         '"Le nez" means "the nose". The "z" is silent.',
         'The nose',
         '"Le nez" means "the nose".',
         36
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The ear', false, 0),
       ('The mouth', false, 1),
       ('The chin', false, 2),
       ('The nose', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 37 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the heart" to French.',
         '"Le cœur" means "the heart". The œ ligature is essential.',
         'Le cœur',
         '"The heart" is "le cœur".',
         37
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le cœur', true, 0),
       ('Le foie', false, 1),
       ('Le sang', false, 2),
       ('L''estomac', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 38 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "les cheveux" mean?',
         '"Les cheveux" (always plural) means "the hair" (on the head). For a single strand, use "un cheveu".',
         'The hair',
         '"Les cheveux" means "the hair".',
         38
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The eyebrows', false, 0),
       ('The hair', true, 1),
       ('The eyelashes', false, 2),
       ('The beard', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 39 (body) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the leg" in French?',
         '"La jambe" means "the leg". It''s a feminine noun.',
         'La jambe',
         '"The leg" is "la jambe".',
         39
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le pied', false, 0),
       ('Le genou', false, 1),
       ('La jambe', true, 2),
       ('La cheville', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 40 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What color is "rouge"?',
         '"Rouge" is "red", invariable in gender (same form for masculine and feminine).',
         'Red',
         '"Rouge" means "red".',
         40
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Red', true, 0),
       ('Blue', false, 1),
       ('Green', false, 2),
       ('Yellow', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 41 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "blue" (masculine) to French.',
         '"Bleu" is "blue". Feminine form is "bleue" — add an "e".',
         'Bleu',
         '"Blue" (masc.) is "bleu".',
         41
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vert', false, 0),
       ('Noir', false, 1),
       ('Bleu', true, 2),
       ('Gris', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 42 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "vert" mean?',
         '"Vert" is "green" (masculine). Feminine is "verte".',
         'Green',
         '"Vert" means "green".',
         42
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Purple', false, 0),
       ('Brown', false, 1),
       ('Orange', false, 2),
       ('Green', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 43 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "yellow" in French?',
         '"Jaune" means "yellow" and is invariable in gender.',
         'Jaune',
         '"Yellow" is "jaune".',
         43
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Jaune', true, 0),
       ('Orange', false, 1),
       ('Brun', false, 2),
       ('Beige', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 44 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "noir" mean?',
         '"Noir" is "black" (masc.); feminine is "noire".',
         'Black',
         '"Noir" means "black".',
         44
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('White', false, 0),
       ('Gray', false, 1),
       ('Black', true, 2),
       ('Dark', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 45 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "white" (feminine) to French.',
         '"Blanc" is masculine; "blanche" is the feminine form, with an unusual "ch" ending.',
         'Blanche',
         '"White" (fem.) is "blanche".',
         45
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Blanc', false, 0),
       ('Blanche', true, 1),
       ('Blanque', false, 2),
       ('Blance', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 46 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "gris" mean?',
         '"Gris" is "gray" (masc.); feminine is "grise".',
         'Gray',
         '"Gris" means "gray".',
         46
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Brown', false, 0),
       ('Silver', false, 1),
       ('Beige', false, 2),
       ('Gray', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 47 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "pink" in French?',
         '"Rose" means "pink" and is also the word for "rose" (the flower).',
         'Rose',
         '"Pink" is "rose".',
         47
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Rose', true, 0),
       ('Violet', false, 1),
       ('Pourpre', false, 2),
       ('Mauve', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 48 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "marron" mean?',
         '"Marron" means "brown". It''s invariable — never changes form. "Brun" also exists but is less common.',
         'Brown',
         '"Marron" means "brown" (invariable).',
         48
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Orange', false, 0),
       ('Beige', false, 1),
       ('Brown', true, 2),
       ('Maroon (only)', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 49 (colors) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "purple" to French.',
         '"Violet" (masc.) or "violette" (fem.) means "purple" in French.',
         'Violet',
         '"Purple" is "violet" (masc.) / "violette" (fem.).',
         49
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Rouge', false, 0),
       ('Rose', false, 1),
       ('Bleu foncé', false, 2),
       ('Violet', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 50 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "un" in English?',
         '"Un" is "one" (masculine); the feminine form is "une".',
         'One',
         '"Un" means "one".',
         50
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('One', true, 0),
       ('Two', false, 1),
       ('Three', false, 2),
       ('Zero', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 51 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "ten" in French?',
         '"Dix" means "ten". The "x" is pronounced [s] in isolation, silent before consonants.',
         'Dix',
         '"Ten" is "dix".',
         51
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Neuf', false, 0),
       ('Dix', true, 1),
       ('Onze', false, 2),
       ('Vingt', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 52 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "cinquante" ?',
         '"Cinquante" is "fifty" (50). Note the spelling: cinq + uante.',
         '50',
         '"Cinquante" means "fifty" (50).',
         52
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('15', false, 0),
       ('25', false, 1),
       ('50', true, 2),
       ('500', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 53 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "seventy" in French (standard French)?',
         '"Soixante-dix" literally means "sixty-ten" = 70. Belgian/Swiss French uses "septante".',
         'Soixante-dix',
         '"Seventy" is "soixante-dix" (60+10) in standard French.',
         53
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Septante', false, 0),
       ('Soixante-dix', true, 1),
       ('Soixante-sept', false, 2),
       ('Septembre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 54 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "quatre-vingts" in English?',
         '"Quatre-vingts" literally means "four twenties" = 80. The "s" drops when followed by another number ("quatre-vingt-un").',
         '80',
         '"Quatre-vingts" means "eighty" (4 × 20).',
         54
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('40', false, 0),
       ('48', false, 1),
       ('80', true, 2),
       ('800', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 55 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "one hundred" in French?',
         '"Cent" means "one hundred". You don''t say "un cent" — just "cent".',
         'Cent',
         '"One hundred" is "cent" (no "un").',
         55
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mille', false, 0),
       ('Un cent', false, 1),
       ('Cent', true, 2),
       ('Centaine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 56 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "mille"?',
         '"Mille" is "one thousand" (1000). It''s invariable — never takes an "s".',
         '1000',
         '"Mille" means "one thousand".',
         56
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('100', false, 0),
       ('1000', true, 1),
       ('10000', false, 2),
       ('1000000', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 57 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you write "21" in French?',
         '"Vingt et un" — note the "et" connector for numbers ending in 1 (except 81 and 91).',
         'Vingt et un',
         '"21" in French is "vingt et un".',
         57
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vingt-un', false, 0),
       ('Vingt et un', true, 1),
       ('Deux-un', false, 2),
       ('Vingt-et-une', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 58 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "quinze" in English?',
         '"Quinze" is "fifteen" (15).',
         '15',
         '"Quinze" means "fifteen".',
         58
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('5', false, 0),
       ('14', false, 1),
       ('15', true, 2),
       ('50', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 59 (numbers) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "first" (ordinal, masc.) in French?',
         '"Premier" is "first" (masc.); "première" is feminine.',
         'Premier',
         '"First" (masc.) is "premier".',
         59
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Premier', true, 0),
       ('Deuxième', false, 1),
       ('Un', false, 2),
       ('Une fois', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 60 (time) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "What time is it?" in French?',
         '"Quelle heure est-il ?" is the standard question. Literally "What hour is it?"',
         'Quelle heure est-il ?',
         '"What time is it?" is "Quelle heure est-il ?".',
         60
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quel temps fait-il ?', false, 0),
       ('Quelle heure est-il ?', true, 1),
       ('À quelle heure ?', false, 2),
       ('Quel jour est-on ?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 61 (time) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "midi" mean?',
         '"Midi" means "noon" / "midday" (12 PM).',
         'Noon',
         '"Midi" means "noon".',
         61
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Midnight', false, 0),
       ('Morning', false, 1),
       ('Noon', true, 2),
       ('Afternoon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 62 (time) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "minuit" mean?',
         '"Minuit" means "midnight" (12 AM).',
         'Midnight',
         '"Minuit" means "midnight".',
         62
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Midnight', true, 0),
       ('Dawn', false, 1),
       ('Dusk', false, 2),
       ('Noon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 63 (time) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "half past" (e.g., 3:30) in French?',
         '"Trois heures et demie" = 3:30. "Et demie" means "and a half".',
         'Et demie',
         '"Half past" is "et demie" (e.g., "trois heures et demie").',
         63
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Et quart', false, 0),
       ('Moins le quart', false, 1),
       ('Et demie', true, 2),
       ('Et trente', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 64 (time) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "It is 4:15" to French.',
         '"Il est quatre heures et quart" = 4:15. "Et quart" = "and a quarter".',
         'Il est quatre heures et quart',
         '"It is 4:15" is "Il est quatre heures et quart".',
         64
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il est quatre heures et demie', false, 0),
       ('Il est quatre heures moins le quart', false, 1),
       ('Il est quatre heures quinze', false, 2),
       ('Il est quatre heures et quart', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 65 (days) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "lundi" mean?',
         '"Lundi" is "Monday". French days are not capitalized.',
         'Monday',
         '"Lundi" means "Monday".',
         65
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sunday', false, 0),
       ('Monday', true, 1),
       ('Tuesday', false, 2),
       ('Friday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 66 (days) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Wednesday" in French?',
         '"Mercredi" is "Wednesday".',
         'Mercredi',
         '"Wednesday" is "mercredi".',
         66
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mardi', false, 0),
       ('Jeudi', false, 1),
       ('Mercredi', true, 2),
       ('Vendredi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 67 (days) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "samedi" in English?',
         '"Samedi" is "Saturday".',
         'Saturday',
         '"Samedi" means "Saturday".',
         67
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sunday', false, 0),
       ('Saturday', true, 1),
       ('Friday', false, 2),
       ('Thursday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 68 (days) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Sunday" in French?',
         '"Dimanche" is "Sunday".',
         'Dimanche',
         '"Sunday" is "dimanche".',
         68
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Samedi', false, 0),
       ('Lundi', false, 1),
       ('Vendredi', false, 2),
       ('Dimanche', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 69 (days) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le weekend" or "le week-end" mean?',
         '"Le week-end" is borrowed from English and means "the weekend".',
         'The weekend',
         '"Le week-end" means "the weekend".',
         69
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The weekday', false, 0),
       ('The weekend', true, 1),
       ('The vacation', false, 2),
       ('The morning', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 70 (months) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What month is "janvier"?',
         '"Janvier" is January. French months are not capitalized.',
         'January',
         '"Janvier" is "January".',
         70
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('January', true, 0),
       ('June', false, 1),
       ('July', false, 2),
       ('February', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 71 (months) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "April" in French?',
         '"Avril" is "April".',
         'Avril',
         '"April" is "avril".',
         71
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mars', false, 0),
       ('Avril', true, 1),
       ('Mai', false, 2),
       ('Août', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 72 (months) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "août" in English?',
         '"Août" is August. The "t" is sometimes pronounced, sometimes silent.',
         'August',
         '"Août" means "August".',
         72
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('August', true, 0),
       ('October', false, 1),
       ('September', false, 2),
       ('April', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 73 (months) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "December" in French?',
         '"Décembre" is December.',
         'Décembre',
         '"December" is "décembre".',
         73
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Novembre', false, 0),
       ('Octobre', false, 1),
       ('Décembre', true, 2),
       ('Janvier', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 74 (dates) --------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "today is Tuesday" in French?',
         '"Aujourd''hui, c''est mardi" or "On est mardi aujourd''hui" both work.',
         'Aujourd''hui, c''est mardi',
         '"Today is Tuesday" is "Aujourd''hui, c''est mardi".',
         74
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Hier, c''est mardi', false, 0),
       ('Aujourd''hui, c''est mardi', true, 1),
       ('Demain est mardi', false, 2),
       ('Mardi, je suis là', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 75 (dates) --------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "aujourd''hui" mean?',
         '"Aujourd''hui" means "today". It''s historically "au jour d''hui" — "on the day of today".',
         'Today',
         '"Aujourd''hui" means "today".',
         75
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Yesterday', false, 0),
       ('Tomorrow', false, 1),
       ('Today', true, 2),
       ('Now', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 76 (dates) --------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "yesterday" in French?',
         '"Hier" is "yesterday". The "h" is silent.',
         'Hier',
         '"Yesterday" is "hier".',
         76
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Hier', true, 0),
       ('Demain', false, 1),
       ('Aujourd''hui', false, 2),
       ('Avant-hier', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 77 (dates) --------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "demain" mean?',
         '"Demain" is "tomorrow". "Après-demain" is "the day after tomorrow".',
         'Tomorrow',
         '"Demain" means "tomorrow".',
         77
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Today', false, 0),
       ('Yesterday', false, 1),
       ('Last week', false, 2),
       ('Tomorrow', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 78 (weather) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "It''s cold" in French?',
         '"Il fait froid" — French uses "faire" (to make/do) for weather expressions.',
         'Il fait froid',
         '"It''s cold" is "il fait froid".',
         78
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il est froid', false, 0),
       ('Il fait froid', true, 1),
       ('Il y a froid', false, 2),
       ('C''est froid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 79 (weather) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "il fait chaud" mean?',
         '"Il fait chaud" means "it''s hot" (weather).',
         'It is hot',
         '"Il fait chaud" means "it''s hot".',
         79
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It is cold', false, 0),
       ('It is windy', false, 1),
       ('It is hot', true, 2),
       ('It is humid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 80 (weather) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "It''s raining" in French?',
         '"Il pleut" — from the impersonal verb "pleuvoir" (to rain).',
         'Il pleut',
         '"It''s raining" is "il pleut".',
         80
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il neige', false, 0),
       ('Il fait beau', false, 1),
       ('Il pleut', true, 2),
       ('Il y a du vent', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 81 (weather) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "il neige" mean?',
         '"Il neige" means "it''s snowing" — from "neiger" (to snow).',
         'It is snowing',
         '"Il neige" means "it''s snowing".',
         81
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It is freezing', false, 0),
       ('It is sunny', false, 1),
       ('It is cloudy', false, 2),
       ('It is snowing', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 82 (weather) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "It''s nice weather" to French.',
         '"Il fait beau" — "beau" (literally "beautiful") is the standard word for nice weather.',
         'Il fait beau',
         '"It''s nice weather" is "il fait beau".',
         82
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il fait beau', true, 0),
       ('Il fait bon', false, 1),
       ('Il est beau', false, 2),
       ('Le temps est beau', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 83 (animals) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le chien" mean?',
         '"Le chien" is "the dog". Feminine form: "la chienne".',
         'The dog',
         '"Le chien" means "the dog".',
         83
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The cat', false, 0),
       ('The dog', true, 1),
       ('The horse', false, 2),
       ('The wolf', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 84 (animals) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the cat" in French?',
         '"Le chat" is "the cat" (masc.); feminine is "la chatte".',
         'Le chat',
         '"The cat" is "le chat".',
         84
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le chien', false, 0),
       ('Le poisson', false, 1),
       ('Le chat', true, 2),
       ('Le lapin', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 85 (animals) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le cheval" mean?',
         '"Le cheval" means "the horse". Plural: "les chevaux".',
         'The horse',
         '"Le cheval" means "the horse" (pl. "chevaux").',
         85
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The cow', false, 0),
       ('The donkey', false, 1),
       ('The pony', false, 2),
       ('The horse', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 86 (animals) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the bird" to French.',
         '"L''oiseau" means "the bird"; plural "les oiseaux".',
         'L''oiseau',
         '"The bird" is "l''oiseau".',
         86
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('L''oiseau', true, 0),
       ('Le poisson', false, 1),
       ('La souris', false, 2),
       ('Le papillon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 87 (animals) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "la vache" mean?',
         '"La vache" is "the cow". It''s also used as a mild exclamation ("oh la vache!" — "wow!").',
         'The cow',
         '"La vache" means "the cow".',
         87
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The pig', false, 0),
       ('The cow', true, 1),
       ('The goat', false, 2),
       ('The sheep', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 88 (animals) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the fish" in French?',
         '"Le poisson" is "the fish".',
         'Le poisson',
         '"The fish" is "le poisson".',
         88
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le requin', false, 0),
       ('Le poisson', true, 1),
       ('Le crabe', false, 2),
       ('L''écrevisse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 89 (animals) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "l''oiseau chante" mean?',
         '"L''oiseau chante" means "the bird sings/is singing". "Chanter" = to sing.',
         'The bird sings',
         '"L''oiseau chante" means "the bird sings".',
         89
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The bird flies', false, 0),
       ('The bird eats', false, 1),
       ('The bird sings', true, 2),
       ('The bird sleeps', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 90 (seasons) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le printemps" mean?',
         '"Le printemps" is "spring". Use "au printemps" for "in spring".',
         'Spring',
         '"Le printemps" means "spring".',
         90
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Summer', false, 0),
       ('Winter', false, 1),
       ('Spring', true, 2),
       ('Fall', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 91 (seasons) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "summer" in French?',
         '"L''été" is "summer" (masculine). "En été" = "in summer".',
         'L''été',
         '"Summer" is "l''été".',
         91
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('L''été', true, 0),
       ('L''hiver', false, 1),
       ('L''automne', false, 2),
       ('Le printemps', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 92 (seasons) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "l''automne" mean?',
         '"L''automne" is "autumn / fall". Use "en automne" for "in autumn".',
         'Autumn',
         '"L''automne" means "autumn".',
         92
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Winter', false, 0),
       ('Autumn', true, 1),
       ('Summer', false, 2),
       ('Spring', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 93 (seasons) ------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "winter" to French.',
         '"L''hiver" is "winter". "En hiver" = "in winter".',
         'L''hiver',
         '"Winter" is "l''hiver".',
         93
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('L''automne', false, 0),
       ('L''été', false, 1),
       ('Le printemps', false, 2),
       ('L''hiver', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 94 (time of day) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le matin" mean?',
         '"Le matin" is "the morning". "Le matin" by itself also means "in the morning".',
         'The morning',
         '"Le matin" means "morning".',
         94
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The morning', true, 0),
       ('The night', false, 1),
       ('The evening', false, 2),
       ('The afternoon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 95 (time of day) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the afternoon" in French?',
         '"L''après-midi" is "the afternoon". Can be masculine or feminine.',
         'L''après-midi',
         '"The afternoon" is "l''après-midi".',
         95
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le soir', false, 0),
       ('L''après-midi', true, 1),
       ('Le matin', false, 2),
       ('La journée', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 96 (time of day) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "le soir" mean?',
         '"Le soir" is "the evening". It''s when people use "bonsoir".',
         'The evening',
         '"Le soir" means "the evening".',
         96
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('The morning', false, 0),
       ('The night', false, 1),
       ('The evening', true, 2),
       ('The midday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 97 (time of day) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the night" to French.',
         '"La nuit" is "the night". It''s feminine.',
         'La nuit',
         '"The night" is "la nuit".',
         97
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le soir', false, 0),
       ('La nuit', true, 1),
       ('Le matin', false, 2),
       ('La soirée', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 98 (time) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "une semaine" mean?',
         '"Une semaine" is "a week".',
         'A week',
         '"Une semaine" means "a week".',
         98
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('A day', false, 0),
       ('A month', false, 1),
       ('A year', false, 2),
       ('A week', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 99 (time) ---------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "a year" in French?',
         '"Une année" (duration emphasis) or "un an" (point in time) both translate to "a year".',
         'Un an / Une année',
         '"A year" is "un an" or "une année".',
         99
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Un an', true, 0),
       ('Un mois', false, 1),
       ('Un jour', false, 2),
       ('Un siècle', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 100 (verb être) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "être" for "je" (present tense).',
         '"Je suis" = "I am". "Être" is one of the two most important irregular verbs.',
         'Je suis',
         '"I am" is "je suis" (être).',
         100
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je es', false, 0),
       ('Je suis', true, 1),
       ('J''ai', false, 2),
       ('Je sont', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 101 (verb être) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "être" for "nous" (present tense).',
         '"Nous sommes" = "we are".',
         'Nous sommes',
         '"We are" is "nous sommes".',
         101
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous êtes', false, 0),
       ('Nous sont', false, 1),
       ('Nous sommes', true, 2),
       ('Nous suis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 102 (verb être) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "être" for "ils" (present tense).',
         '"Ils sont" = "they are" (masc. or mixed).',
         'Ils sont',
         '"They are" (m.) is "ils sont".',
         102
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils sont', true, 0),
       ('Ils ont', false, 1),
       ('Ils êtes', false, 2),
       ('Ils sommes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 103 (verb avoir) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "avoir" for "je" (present tense).',
         '"J''ai" = "I have". The "e" of "je" elides before the vowel "a".',
         'J''ai',
         '"I have" is "j''ai".',
         103
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je suis', false, 0),
       ('Je as', false, 1),
       ('Je ai', false, 2),
       ('J''ai', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 104 (verb avoir) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "avoir" for "tu" (present tense).',
         '"Tu as" = "you have" (informal singular).',
         'Tu as',
         '"You have" (sing.) is "tu as".',
         104
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu es', false, 0),
       ('Tu as', true, 1),
       ('Tu ai', false, 2),
       ('Tu ont', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 105 (verb avoir) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "avoir" for "vous" (present tense).',
         '"Vous avez" = "you have" (formal or plural).',
         'Vous avez',
         '"You have" (formal/pl.) is "vous avez".',
         105
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vous êtes', false, 0),
       ('Vous as', false, 1),
       ('Vous avez', true, 2),
       ('Vous ont', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 106 (verb aller) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "aller" for "je" (present tense).',
         '"Je vais" = "I go" / "I am going". "Aller" is highly irregular.',
         'Je vais',
         '"I go" is "je vais" (aller).',
         106
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je vais', true, 0),
       ('Je va', false, 1),
       ('Je vai', false, 2),
       ('Je suis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 107 (verb aller) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "aller" for "nous" (present tense).',
         '"Nous allons" = "we go". The stem switches to "all-" in the nous/vous forms.',
         'Nous allons',
         '"We go" is "nous allons" (aller).',
         107
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous vont', false, 0),
       ('Nous allons', true, 1),
       ('Nous vais', false, 2),
       ('Nous va', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 108 (verb faire) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "faire" for "vous" (present tense).',
         '"Vous faites" — an irregular form (note: not "faisez").',
         'Vous faites',
         '"You do/make" (formal/pl.) is "vous faites".',
         108
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vous faisez', false, 0),
       ('Vous fait', false, 1),
       ('Vous faites', true, 2),
       ('Vous font', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 109 (verb faire) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "faire" for "ils" (present tense).',
         '"Ils font" = "they do/make".',
         'Ils font',
         '"They make" is "ils font" (faire).',
         109
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils faisent', false, 0),
       ('Ils sont', false, 1),
       ('Ils ont', false, 2),
       ('Ils font', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 110 (verb vouloir) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vouloir" for "je" (present tense).',
         '"Je veux" = "I want". The stem changes to "veul-" in the plural.',
         'Je veux',
         '"I want" is "je veux".',
         110
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je veux', true, 0),
       ('Je veut', false, 1),
       ('Je voulons', false, 2),
       ('Je voulez', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 111 (verb vouloir) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vouloir" for "nous".',
         '"Nous voulons" = "we want".',
         'Nous voulons',
         '"We want" is "nous voulons".',
         111
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous veulent', false, 0),
       ('Nous veulons', false, 1),
       ('Nous voulons', true, 2),
       ('Nous voulez', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 112 (verb pouvoir) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "pouvoir" for "je".',
         '"Je peux" = "I can". An alternative archaic form "puis" exists ("Puis-je?").',
         'Je peux',
         '"I can" is "je peux".',
         112
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je peut', false, 0),
       ('Je peux', true, 1),
       ('Je pouvons', false, 2),
       ('Je pouvez', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 113 (verb pouvoir) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "pouvoir" for "ils".',
         '"Ils peuvent" = "they can". Note the stem change to "peuv-".',
         'Ils peuvent',
         '"They can" is "ils peuvent".',
         113
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils pouvent', false, 0),
       ('Ils peuvent', true, 1),
       ('Ils peuent', false, 2),
       ('Ils pouvont', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 114 (regular -er verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "parler" (to speak) for "je".',
         '"Je parle" — regular -er verbs drop -er and add -e for "je". This pattern covers ~90% of French verbs.',
         'Je parle',
         '"I speak" is "je parle" (parler, -er regular).',
         114
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je parler', false, 0),
       ('Je parle', true, 1),
       ('Je parles', false, 2),
       ('Je parlez', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 115 (regular -er verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "manger" for "nous".',
         '"Nous mangeons" — verbs ending in -ger keep the "e" before -ons to preserve the soft "g" sound.',
         'Nous mangeons',
         '"We eat" is "nous mangeons" (keep the "e" before -ons).',
         115
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous mangons', false, 0),
       ('Nous mangeons', true, 1),
       ('Nous mangeons-y', false, 2),
       ('Nous mangions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 116 (regular -er verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "aimer" for "tu".',
         '"Tu aimes" — -er regulars end in -es for the "tu" form.',
         'Tu aimes',
         '"You love" is "tu aimes".',
         116
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu aime', false, 0),
       ('Tu aimer', false, 1),
       ('Tu aimes', true, 2),
       ('Tu aiment', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 117 (regular -er verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "regarder" for "ils".',
         '"Ils regardent" — -er regulars end in -ent for ils/elles (silent ending).',
         'Ils regardent',
         '"They watch" is "ils regardent".',
         117
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils regardent', true, 0),
       ('Ils regardes', false, 1),
       ('Ils regarde', false, 2),
       ('Ils regardons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 118 (regular -ir verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "finir" for "je".',
         '"Je finis" — -ir regulars end in -is for je/tu.',
         'Je finis',
         '"I finish" is "je finis" (-ir regular).',
         118
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je finit', false, 0),
       ('Je fini', false, 1),
       ('Je finis', true, 2),
       ('Je finissons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 119 (regular -ir verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "choisir" for "nous".',
         '"Nous choisissons" — -ir regulars insert "iss" between stem and ending in the plural.',
         'Nous choisissons',
         '"We choose" is "nous choisissons" (-iss- infix).',
         119
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous choisons', false, 0),
       ('Nous choisissons', true, 1),
       ('Nous choisirons', false, 2),
       ('Nous choisis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 120 (regular -ir verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "réussir" for "ils".',
         '"Ils réussissent" = "they succeed".',
         'Ils réussissent',
         '"They succeed" is "ils réussissent".',
         120
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils réussent', false, 0),
       ('Ils réussissent', true, 1),
       ('Ils réussir', false, 2),
       ('Ils réussirent', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 121 (regular -re verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vendre" for "je".',
         '"Je vends" — -re regulars end in -s for je/tu and have no ending for il/elle.',
         'Je vends',
         '"I sell" is "je vends" (-re regular).',
         121
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je vend', false, 0),
       ('Je vends', true, 1),
       ('Je vendre', false, 2),
       ('Je vendis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 122 (regular -re verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "attendre" for "il".',
         '"Il attend" — note: no ending added in the il/elle form for -re verbs.',
         'Il attend',
         '"He waits" is "il attend".',
         122
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il attends', false, 0),
       ('Il attendt', false, 1),
       ('Il attende', false, 2),
       ('Il attend', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 123 (regular -re verbs) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "répondre" for "vous".',
         '"Vous répondez" — -re regulars take -ez for vous.',
         'Vous répondez',
         '"You answer" is "vous répondez".',
         123
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vous répondez', true, 0),
       ('Vous répondes', false, 1),
       ('Vous répondent', false, 2),
       ('Vous répondons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 124 (irregular verb prendre) --------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "prendre" for "nous".',
         '"Nous prenons" — irregular: drop the "d" of the stem in the plural.',
         'Nous prenons',
         '"We take" is "nous prenons".',
         124
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous prendons', false, 0),
       ('Nous prenons', true, 1),
       ('Nous prendrons', false, 2),
       ('Nous prendions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 125 (verb venir) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "venir" for "je".',
         '"Je viens" = "I come". Note the stem change to "vien-".',
         'Je viens',
         '"I come" is "je viens".',
         125
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je vient', false, 0),
       ('Je vens', false, 1),
       ('Je viens', true, 2),
       ('Je venis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 126 (verb voir) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "voir" for "tu".',
         '"Tu vois" = "you see".',
         'Tu vois',
         '"You see" is "tu vois".',
         126
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu voit', false, 0),
       ('Tu vois', true, 1),
       ('Tu voyez', false, 2),
       ('Tu vu', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 127 (verb savoir) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "savoir" for "je".',
         '"Je sais" = "I know" (a fact). For knowing a person/place, use "connaître".',
         'Je sais',
         '"I know" (fact) is "je sais" (savoir).',
         127
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je sais', true, 0),
       ('Je sait', false, 1),
       ('Je connais', false, 2),
       ('Je savons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 128 (verb devoir) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "devoir" for "je".',
         '"Je dois" = "I must" / "I have to".',
         'Je dois',
         '"I must" is "je dois".',
         128
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je doit', false, 0),
       ('Je dois', true, 1),
       ('Je devons', false, 2),
       ('Je devs', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 129 (verb être) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "il est" mean?',
         '"Il est" = "he is" or "it is" (with masc. nouns).',
         'He is / It is',
         '"Il est" means "he is" or "it is".',
         129
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('He has', false, 0),
       ('He goes', false, 1),
       ('He is', true, 2),
       ('He does', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 130 (verb conjugation patterns) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "être" for "tu".',
         '"Tu es" = "you are" (informal singular).',
         'Tu es',
         '"You are" (sing.) is "tu es".',
         130
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu est', false, 0),
       ('Tu es', true, 1),
       ('Tu as', false, 2),
       ('Tu suis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 131 (verb avoir) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "avoir" for "nous".',
         '"Nous avons" = "we have".',
         'Nous avons',
         '"We have" is "nous avons".',
         131
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous ont', false, 0),
       ('Nous as', false, 1),
       ('Nous avons', true, 2),
       ('Nous sommes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 132 (verb aller) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "aller" for "ils".',
         '"Ils vont" = "they go". Stem switches to "v-" in singular and 3rd plural.',
         'Ils vont',
         '"They go" is "ils vont".',
         132
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils allent', false, 0),
       ('Ils vont', true, 1),
       ('Ils vais', false, 2),
       ('Ils allons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 133 (verb faire) --------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "faire" for "je".',
         '"Je fais" = "I do/make".',
         'Je fais',
         '"I make" is "je fais".',
         133
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je fait', false, 0),
       ('Je fais', true, 1),
       ('Je faisons', false, 2),
       ('Je font', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 134 (verb vouloir) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vouloir" for "ils".',
         '"Ils veulent" = "they want".',
         'Ils veulent',
         '"They want" is "ils veulent".',
         134
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils voulent', false, 0),
       ('Ils veut', false, 1),
       ('Ils veulent', true, 2),
       ('Ils voulont', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 135 (verb pouvoir) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "pouvoir" for "nous".',
         '"Nous pouvons" = "we can".',
         'Nous pouvons',
         '"We can" is "nous pouvons".',
         135
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous peuvons', false, 0),
       ('Nous pouvons', true, 1),
       ('Nous pouvent', false, 2),
       ('Nous peuvent', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 136 (verb -er) ----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "j''écoute" mean?',
         '"J''écoute" = "I listen" / "I''m listening" (écouter, regular -er).',
         'I listen',
         '"J''écoute" means "I listen".',
         136
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I speak', false, 0),
       ('I read', false, 1),
       ('I write', false, 2),
       ('I listen', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 137 (verb -er) ----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "we work" to French.',
         '"Nous travaillons" (travailler, regular -er).',
         'Nous travaillons',
         '"We work" is "nous travaillons".',
         137
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous travaillons', true, 0),
       ('Nous travailles', false, 1),
       ('Nous travail', false, 2),
       ('Nous travailent', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 138 (verb -ir) ----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "they finish" to French.',
         '"Ils finissent" — regular -ir verb with -iss- in the plural.',
         'Ils finissent',
         '"They finish" is "ils finissent".',
         138
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils finent', false, 0),
       ('Ils finissent', true, 1),
       ('Ils finis', false, 2),
       ('Ils finiront', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 139 (verb -re) ----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "we wait" to French.',
         '"Nous attendons" (attendre, regular -re).',
         'Nous attendons',
         '"We wait" is "nous attendons".',
         139
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous attendons', true, 0),
       ('Nous attendent', false, 1),
       ('Nous attendes', false, 2),
       ('Nous attendez', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 140 (mixed verbs) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in the blank: "Elle ___ un livre." (avoir)',
         '"Elle a un livre" = "She has a book". "Avoir" — third person singular = "a".',
         'a',
         '"She has" is "elle a".',
         140
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('est', false, 0),
       ('a', true, 1),
       ('as', false, 2),
       ('ai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 141 (mixed verbs) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in the blank: "Nous ___ français." (parler)',
         '"Nous parlons français" = "We speak French".',
         'parlons',
         '"We speak" is "nous parlons".',
         141
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('parle', false, 0),
       ('parlez', false, 1),
       ('parlons', true, 2),
       ('parlent', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 142 (mixed verbs) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in the blank: "Vous ___ au cinéma." (aller)',
         '"Vous allez au cinéma" = "You go to the cinema".',
         'allez',
         '"You go" (vous) is "allez".',
         142
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('allez', true, 0),
       ('allons', false, 1),
       ('vais', false, 2),
       ('vont', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 143 (verb -er with stem change) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "acheter" for "j".',
         '"J''achète" — note the grave accent on the "e" before silent ending.',
         'J''achète',
         '"I buy" is "j''achète" (stem change).',
         143
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''achete', false, 0),
       ('J''acheter', false, 1),
       ('J''achète', true, 2),
       ('J''achetai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 144 (verb -er with stem change) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "appeler" for "j".',
         '"J''appelle" — verbs in -eler double the "l" before silent endings.',
         'J''appelle',
         '"I call" is "j''appelle" (double "l" stem change).',
         144
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''appelle', true, 0),
       ('J''appele', false, 1),
       ('J''appèle', false, 2),
       ('J''appeller', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 145 (verb conjugation) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "elle a" in English?',
         '"Elle a" = "she has" (avoir, present).',
         'She has',
         '"Elle a" means "she has".',
         145
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('She is', false, 0),
       ('She goes', false, 1),
       ('She has', true, 2),
       ('She comes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 146 (verb conjugation) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "nous faisons" in English?',
         '"Nous faisons" = "we do/make" (faire, irregular).',
         'We do/make',
         '"Nous faisons" means "we do/make".',
         146
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('We are', false, 0),
       ('We do/make', true, 1),
       ('We go', false, 2),
       ('We have', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 147 (verb conjugation) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I can" (pouvoir) to French.',
         '"Je peux" — present tense of pouvoir.',
         'Je peux',
         '"I can" is "je peux".',
         147
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je peut', false, 0),
       ('Je pouvons', false, 1),
       ('Je peux', true, 2),
       ('Je pourrais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 148 (verb conjugation) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I want a coffee" to French.',
         '"Je veux un café" — straightforward word order.',
         'Je veux un café',
         '"I want a coffee" is "Je veux un café".',
         148
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je peux un café', false, 0),
       ('Je veux un café', true, 1),
       ('J''ai un café', false, 2),
       ('Je suis un café', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 149 (verb conjugation) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which form is correct for "they have"?',
         '"Ils ont" = "they have" (avoir).',
         'Ils ont',
         '"They have" is "ils ont".',
         149
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils sont', false, 0),
       ('Ils ont', true, 1),
       ('Ils as', false, 2),
       ('Ils a', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 150 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the passé composé of "manger" for "je"?',
         '"J''ai mangé" — passé composé = auxiliary (avoir/être) + past participle. "Manger" uses "avoir".',
         'J''ai mangé',
         '"I ate" is "j''ai mangé" (passé composé).',
         150
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je mange', false, 0),
       ('Je mangeais', false, 1),
       ('J''ai mangé', true, 2),
       ('Je mangé', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 151 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which auxiliary do most verbs use in the passé composé?',
         '"Avoir" is used for the vast majority of French verbs. Only DR & MRS VANDERTRAMP verbs and reflexives use "être".',
         'Avoir',
         'Most verbs use "avoir" in passé composé.',
         151
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Avoir', true, 0),
       ('Être', false, 1),
       ('Aller', false, 2),
       ('Faire', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 152 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "aller"?',
         '"Allé" — used with "être" in passé composé.',
         'Allé',
         'Past participle of "aller" is "allé".',
         152
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Allé', true, 0),
       ('Aller', false, 1),
       ('Va', false, 2),
       ('Allais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 153 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She went to Paris" to French.',
         '"Elle est allée à Paris" — "aller" uses "être"; past participle agrees in gender ("allée" with the feminine subject).',
         'Elle est allée à Paris',
         '"She went to Paris" is "Elle est allée à Paris".',
         153
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elle a allé à Paris', false, 0),
       ('Elle est allée à Paris', true, 1),
       ('Elle est allé à Paris', false, 2),
       ('Elle allait à Paris', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 154 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "j''ai vu" mean?',
         '"J''ai vu" = "I saw" / "I have seen" (voir).',
         'I saw',
         '"J''ai vu" means "I saw".',
         154
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I see', false, 0),
       ('I was seeing', false, 1),
       ('I saw', true, 2),
       ('I will see', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 155 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "être"?',
         '"Été" — "J''ai été" = "I have been" / "I was".',
         'Été',
         'Past participle of "être" is "été".',
         155
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Étais', false, 0),
       ('Étant', false, 1),
       ('Est', false, 2),
       ('Été', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 156 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "avoir"?',
         '"Eu" — pronounced "u". "J''ai eu" = "I had".',
         'Eu',
         'Past participle of "avoir" is "eu".',
         156
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu', true, 0),
       ('Eut', false, 1),
       ('Avu', false, 2),
       ('Avait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 157 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "faire"?',
         '"Fait" — "J''ai fait" = "I did/made".',
         'Fait',
         'Past participle of "faire" is "fait".',
         157
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Faisé', false, 0),
       ('Faire', false, 1),
       ('Fait', true, 2),
       ('Faisant', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 158 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "prendre"?',
         '"Pris" — "J''ai pris" = "I took".',
         'Pris',
         'Past participle of "prendre" is "pris".',
         158
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Pris', true, 0),
       ('Prenu', false, 1),
       ('Prendu', false, 2),
       ('Prendre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 159 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the imparfait of "parler" for "je"?',
         '"Je parlais" — imparfait endings are -ais, -ais, -ait, -ions, -iez, -aient.',
         'Je parlais',
         '"I was speaking" is "je parlais" (imparfait).',
         159
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je parle', false, 0),
       ('J''ai parlé', false, 1),
       ('Je parlais', true, 2),
       ('Je parlai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 160 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the imparfait stem of "être"?',
         '"Ét-" — "j''étais", "tu étais", etc. "Être" is the only verb with an irregular imparfait stem.',
         'Ét- (j''étais)',
         '"Être" imparfait stem is "ét-".',
         160
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Suis-', false, 0),
       ('Ét-', true, 1),
       ('Êtr-', false, 2),
       ('Es-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 161 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'When is the imparfait typically used?',
         'Imparfait describes ongoing past states, habitual actions, descriptions, and background — "used to" or "was doing".',
         'Habits / ongoing past actions / descriptions',
         'Imparfait = habits, ongoing past, descriptions.',
         161
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Single completed action', false, 0),
       ('Future plans', false, 1),
       ('Habits, ongoing past states, descriptions', true, 2),
       ('Conditional hypotheses', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 162 (imparfait vs passé composé) ---------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which best fits "I was eating when she arrived"?',
         '"Je mangeais quand elle est arrivée" — imparfait for the ongoing action, passé composé for the interrupting event.',
         'Imparfait + Passé composé',
         'Ongoing action = imparfait; interrupting event = passé composé.',
         162
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Both passé composé', false, 0),
       ('Both imparfait', false, 1),
       ('Imparfait + Passé composé', true, 2),
       ('Both présent', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 163 (passé composé être verbs) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which verb uses "être" as auxiliary in the passé composé?',
         '"Venir" is part of the DR & MRS VANDERTRAMP group that takes "être". So do aller, partir, naître, etc.',
         'Venir',
         '"Venir" takes "être" in passé composé.',
         163
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Manger', false, 0),
       ('Parler', false, 1),
       ('Faire', false, 2),
       ('Venir', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 164 (passé composé être verbs) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "We arrived" (we = mixed group) to French.',
         '"Nous sommes arrivés" — "arriver" uses être; past participle agrees with subject (masc. plural).',
         'Nous sommes arrivés',
         '"We arrived" is "Nous sommes arrivés".',
         164
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous avons arrivé', false, 0),
       ('Nous sommes arrivés', true, 1),
       ('Nous étions arrivés', false, 2),
       ('Nous arrivions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 165 (passé composé agreement) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "Marie est ___ au marché"?',
         '"Marie est allée" — past participle agrees with "Marie" (fem. sing.), so add an "e".',
         'allée',
         'With "être", past participle agrees with subject: "allée" (fem. sing.).',
         165
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('allé', false, 0),
       ('allés', false, 1),
       ('allée', true, 2),
       ('aller', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 166 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "tu as fini" mean?',
         '"Tu as fini" = "you have finished" / "you finished" (finir, avoir auxiliary).',
         'You finished',
         '"Tu as fini" means "you finished".',
         166
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('You finish', false, 0),
       ('You will finish', false, 1),
       ('You finished', true, 2),
       ('You were finishing', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 167 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I have spoken" to French.',
         '"J''ai parlé" — passé composé of "parler".',
         'J''ai parlé',
         '"I have spoken" is "j''ai parlé".',
         167
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai parlé', true, 0),
       ('Je parle', false, 1),
       ('Je parlais', false, 2),
       ('Je parlerai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 168 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I used to play" to French.',
         '"Je jouais" — imparfait expresses habits/repeated past actions.',
         'Je jouais',
         '"I used to play" is "je jouais".',
         168
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je joue', false, 0),
       ('J''ai joué', false, 1),
       ('Je jouerai', false, 2),
       ('Je jouais', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 169 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the imparfait of "avoir" for "nous"?',
         '"Nous avions" — formed from the nous present-tense stem "av-" + imparfait endings.',
         'Nous avions',
         '"We had" (imparfait) is "nous avions".',
         169
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous avons', false, 0),
       ('Nous avions', true, 1),
       ('Nous aurions', false, 2),
       ('Nous eûmes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 170 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She was reading" to French.',
         '"Elle lisait" — imparfait of "lire" for ongoing past action.',
         'Elle lisait',
         '"She was reading" is "elle lisait".',
         170
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elle a lu', false, 0),
       ('Elle lit', false, 1),
       ('Elle lirait', false, 2),
       ('Elle lisait', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 171 (passé composé vs imparfait) ---------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which tense for "Suddenly, the phone rang"?',
         'A sudden, completed event = passé composé. "Soudain, le téléphone a sonné".',
         'Passé composé',
         'Sudden completed events use passé composé.',
         171
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Imparfait', false, 0),
       ('Passé composé', true, 1),
       ('Présent', false, 2),
       ('Futur', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 172 (passé composé vs imparfait) ---------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which tense for "Every Saturday, I would visit grandma"?',
         'Repeated habitual action = imparfait. "Tous les samedis, je rendais visite à grand-mère".',
         'Imparfait',
         'Habitual past = imparfait.',
         172
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Passé composé', false, 0),
       ('Présent', false, 1),
       ('Imparfait', true, 2),
       ('Conditionnel', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 173 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "écrire"?',
         '"Écrit" — "J''ai écrit" = "I wrote".',
         'Écrit',
         'Past participle of "écrire" is "écrit".',
         173
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Écris', false, 0),
       ('Écrit', true, 1),
       ('Écrivé', false, 2),
       ('Écriré', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 174 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "lire"?',
         '"Lu" — "J''ai lu" = "I read" (past).',
         'Lu',
         'Past participle of "lire" is "lu".',
         174
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Lu', true, 0),
       ('Lit', false, 1),
       ('Lis', false, 2),
       ('Lisé', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 175 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "voir"?',
         '"Vu" — "J''ai vu" = "I saw".',
         'Vu',
         'Past participle of "voir" is "vu".',
         175
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Voit', false, 0),
       ('Voi', false, 1),
       ('Vu', true, 2),
       ('Voyé', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 176 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "naître"?',
         '"Né" — "Je suis né(e)" = "I was born". Uses "être".',
         'Né',
         'Past participle of "naître" is "né".',
         176
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Naissé', false, 0),
       ('Né', true, 1),
       ('Naît', false, 2),
       ('Naître', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 177 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "mourir"?',
         '"Mort" — "Il est mort" = "He died". Uses "être".',
         'Mort',
         'Past participle of "mourir" is "mort".',
         177
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mouri', false, 0),
       ('Mouru', false, 1),
       ('Mourru', false, 2),
       ('Mort', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 178 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I came home" (j''ai vs je suis)?',
         '"Je suis rentré(e)" — "rentrer" (to return home) uses "être".',
         'Je suis rentré',
         '"Rentrer" uses "être" in passé composé.',
         178
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai rentré', false, 0),
       ('Je suis rentré', true, 1),
       ('Je rentrais', false, 2),
       ('Je rentré', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 179 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "il faisait beau" mean?',
         '"Il faisait beau" = "the weather was nice" — imparfait used for past descriptions.',
         'The weather was nice',
         '"Il faisait beau" = "the weather was nice".',
         179
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It is sunny', false, 0),
       ('The weather will be nice', false, 1),
       ('The weather was nice', true, 2),
       ('He was handsome', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 180 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Imparfait conjugation: "vous" form of "finir"?',
         '"Vous finissiez" — based on "finiss-" stem + imparfait ending "-iez".',
         'Vous finissiez',
         '"You used to finish" is "vous finissiez".',
         180
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vous finissez', false, 0),
       ('Vous finissiez', true, 1),
       ('Vous finiriez', false, 2),
       ('Vous finîtes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 181 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "He has waited" to French.',
         '"Il a attendu" — passé composé of "attendre" with auxiliary "avoir".',
         'Il a attendu',
         '"He has waited" is "il a attendu".',
         181
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il a attendu', true, 0),
       ('Il est attendu', false, 1),
       ('Il attendait', false, 2),
       ('Il attend', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 182 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "Elles sont ___ tard." (partir, passé composé)',
         '"Elles sont parties" — "partir" uses "être", and past participle agrees: feminine plural = -es.',
         'parties',
         '"Elles sont parties" — "être" agreement with fem. pl.',
         182
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('parti', false, 0),
       ('partie', false, 1),
       ('parties', true, 2),
       ('partis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 183 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Imparfait: "il" form of "aller"?',
         '"Il allait" — based on nous-stem "all-" + "-ait".',
         'Il allait',
         '"He used to go" is "il allait".',
         183
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il va', false, 0),
       ('Il allait', true, 1),
       ('Il alla', false, 2),
       ('Il est allé', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 184 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ils sont sortis" mean?',
         '"Ils sont sortis" = "they went out" (sortir, être, masc. plural).',
         'They went out',
         '"Ils sont sortis" = "they went out".',
         184
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('They go out', false, 0),
       ('They were going out', false, 1),
       ('They went out', true, 2),
       ('They are out', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 185 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "j''étais" mean?',
         '"J''étais" = "I was" (imparfait of être).',
         'I was',
         '"J''étais" means "I was".',
         185
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I have been', false, 0),
       ('I am', false, 1),
       ('I will be', false, 2),
       ('I was', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 186 (passé composé reflexive) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which auxiliary do reflexive (pronominal) verbs use in passé composé?',
         'All pronominal/reflexive verbs use "être" — e.g., "Je me suis levé(e)".',
         'Être',
         'Reflexive verbs use "être" in passé composé.',
         186
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Avoir', false, 0),
       ('Être', true, 1),
       ('Aller', false, 2),
       ('Either', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 187 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct imparfait for "ils" of "faire"?',
         '"Ils faisaient" — note: the stem "fais-" with -aient ending.',
         'Ils faisaient',
         '"They were doing" is "ils faisaient".',
         187
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils font', false, 0),
       ('Ils faisaient', true, 1),
       ('Ils fait', false, 2),
       ('Ils feraient', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 188 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I bought a book" to French.',
         '"J''ai acheté un livre" — acheter uses avoir; past participle "acheté".',
         'J''ai acheté un livre',
         '"I bought a book" = "J''ai acheté un livre".',
         188
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je achète un livre', false, 0),
       ('J''ai acheté un livre', true, 1),
       ('Je suis acheté un livre', false, 2),
       ('Je achetais un livre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 189 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Past participle of "venir"?',
         '"Venu" — "Je suis venu(e)" = "I came".',
         'Venu',
         'Past participle of "venir" is "venu".',
         189
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vient', false, 0),
       ('Venait', false, 1),
       ('Venu', true, 2),
       ('Venir', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 190 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "We were eating" to French.',
         '"Nous mangions" — imparfait. (Note: not "mangeons" — that''s present.)',
         'Nous mangions',
         '"We were eating" is "nous mangions".',
         190
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous mangeons', false, 0),
       ('Nous mangions', true, 1),
       ('Nous avons mangé', false, 2),
       ('Nous mangerons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 191 (passé composé negation) -------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you negate "j''ai mangé"?',
         '"Je n''ai pas mangé" — "ne...pas" wraps the auxiliary in compound tenses.',
         'Je n''ai pas mangé',
         'Negation: "ne" and "pas" surround the auxiliary.',
         191
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je n''ai mangé pas', false, 0),
       ('Je ne mangé pas', false, 1),
       ('Je n''ai pas mangé', true, 2),
       ('Je ne pas ai mangé', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 192 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Past participle of "boire"?',
         '"Bu" — "J''ai bu" = "I drank".',
         'Bu',
         'Past participle of "boire" is "bu".',
         192
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Boit', false, 0),
       ('Buvé', false, 1),
       ('Boivé', false, 2),
       ('Bu', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 193 (imparfait) ---------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Imparfait "elles" of "boire"?',
         '"Elles buvaient" — based on nous-stem "buv-".',
         'Elles buvaient',
         '"They were drinking" is "elles buvaient".',
         193
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elles boivent', false, 0),
       ('Elles ont bu', false, 1),
       ('Elles buvaient', true, 2),
       ('Elles boivaient', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 194 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She has danced" to French.',
         '"Elle a dansé" — passé composé, avoir + dansé.',
         'Elle a dansé',
         '"She has danced" is "elle a dansé".',
         194
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elle dansait', false, 0),
       ('Elle a dansé', true, 1),
       ('Elle est dansée', false, 2),
       ('Elle danse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 195 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Past participle of "ouvrir"?',
         '"Ouvert" — "J''ai ouvert" = "I opened".',
         'Ouvert',
         'Past participle of "ouvrir" is "ouvert".',
         195
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ouvré', false, 0),
       ('Ouvrit', false, 1),
       ('Ouvert', true, 2),
       ('Ouvri', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 196 (mixed) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Past participle of "mettre"?',
         '"Mis" — "J''ai mis" = "I put".',
         'Mis',
         'Past participle of "mettre" is "mis".',
         196
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mettu', false, 0),
       ('Mis', true, 1),
       ('Mit', false, 2),
       ('Mettait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 197 (mixed) -------------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Past participle of "dire"?',
         '"Dit" — "J''ai dit" = "I said".',
         'Dit',
         'Past participle of "dire" is "dit".',
         197
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Dis', false, 0),
       ('Disé', false, 1),
       ('Dit', true, 2),
       ('Diré', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 198 (passé composé) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "He didn''t come" to French.',
         '"Il n''est pas venu" — "venir" uses "être"; negate around the auxiliary.',
         'Il n''est pas venu',
         '"He didn''t come" is "il n''est pas venu".',
         198
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il n''est pas venu', true, 0),
       ('Il n''a pas venu', false, 1),
       ('Il ne vient pas', false, 2),
       ('Il n''est venu pas', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 199 (imparfait stem) ---------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How is the imparfait stem normally formed?',
         'Take the "nous" form of the present tense and remove "-ons" — that gives the imparfait stem.',
         'nous-form minus -ons',
         'Imparfait stem = nous-present minus "-ons".',
         199
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Add -ai- to infinitive', false, 0),
       ('Take "nous" present, drop "-ons"', true, 1),
       ('Drop infinitive ending', false, 2),
       ('Use the future stem', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 200 (futur simple) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the futur simple of "parler" for "je"?',
         '"Je parlerai" — for -er/-ir verbs, take the infinitive + future endings (-ai, -as, -a, -ons, -ez, -ont).',
         'Je parlerai',
         '"I will speak" is "je parlerai".',
         200
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je parlerai', true, 0),
       ('Je parlais', false, 1),
       ('Je parle', false, 2),
       ('Je parlerais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 201 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the futur simple stem of "être"?',
         '"Ser-" — "je serai", "tu seras", etc. "Être" has an irregular future stem.',
         'Ser-',
         '"Être" future stem is "ser-" (je serai).',
         201
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Êtr-', false, 0),
       ('Ser-', true, 1),
       ('Es-', false, 2),
       ('Étai-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 202 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the futur simple stem of "avoir"?',
         '"Aur-" — "j''aurai", "tu auras", etc.',
         'Aur-',
         '"Avoir" future stem is "aur-".',
         202
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Avoir-', false, 0),
       ('Av-', false, 1),
       ('Aur-', true, 2),
       ('Aurai-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 203 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I will go" to French.',
         '"J''irai" — irregular future stem "ir-" for "aller".',
         'J''irai',
         '"I will go" is "j''irai".',
         203
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je vais', false, 0),
       ('J''aller', false, 1),
       ('J''irai', true, 2),
       ('Je vais aller', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 204 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "faire"?',
         '"Fer-" — "je ferai", "tu feras", etc.',
         'Fer-',
         '"Faire" future stem is "fer-".',
         204
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Fais-', false, 0),
       ('Fer-', true, 1),
       ('Fait-', false, 2),
       ('Fer-ai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 205 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "venir"?',
         '"Viendr-" — "je viendrai", "tu viendras", etc.',
         'Viendr-',
         '"Venir" future stem is "viendr-".',
         205
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ven-', false, 0),
       ('Vien-', false, 1),
       ('Vienn-', false, 2),
       ('Viendr-', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 206 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "voir"?',
         '"Verr-" — "je verrai", "tu verras", etc.',
         'Verr-',
         '"Voir" future stem is "verr-".',
         206
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Verr-', true, 0),
       ('Voi-', false, 1),
       ('Voir-', false, 2),
       ('Voyr-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 207 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "we will be" to French.',
         '"Nous serons" — future of être for nous.',
         'Nous serons',
         '"We will be" is "nous serons".',
         207
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous sommes', false, 0),
       ('Nous étions', false, 1),
       ('Nous serions', false, 2),
       ('Nous serons', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 208 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "they will have" to French.',
         '"Ils auront" — future of avoir for ils.',
         'Ils auront',
         '"They will have" is "ils auront".',
         208
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils auront', true, 0),
       ('Ils ont', false, 1),
       ('Ils auraient', false, 2),
       ('Ils avaient', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 209 (futur simple usage) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What''s the difference between "futur simple" and "futur proche"?',
         '"Futur proche" = "aller + infinitive" (near future, informal). "Futur simple" = a single conjugated form (more formal, distant or definite future).',
         'Proche = aller+inf; simple = single conjugated form',
         'Futur proche = aller + infinitive; futur simple = one-word form.',
         209
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('No difference', false, 0),
       ('Proche = aller+infinitive; simple = one conjugated form', true, 1),
       ('Proche is past; simple is future', false, 2),
       ('Simple is more casual', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 210 (futur proche) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I''m going to eat" (futur proche).',
         '"Je vais manger" — aller (present) + infinitive.',
         'Je vais manger',
         '"I''m going to eat" is "je vais manger".',
         210
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je mangerai', false, 0),
       ('Je vais manger', true, 1),
       ('Je vais mangé', false, 2),
       ('Je mangeais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 211 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conditional of "parler" for "je"?',
         '"Je parlerais" — conditional uses future stem + imparfait endings.',
         'Je parlerais',
         '"I would speak" is "je parlerais".',
         211
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je parle', false, 0),
       ('Je parlerai', false, 1),
       ('Je parlais', false, 2),
       ('Je parlerais', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 212 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How is the conditional formed?',
         'Take the future stem (often the infinitive) and add the imparfait endings (-ais, -ais, -ait, -ions, -iez, -aient).',
         'Future stem + imparfait endings',
         'Conditional = future stem + imparfait endings.',
         212
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Present stem + future endings', false, 0),
       ('Future stem + imparfait endings', true, 1),
       ('Future stem + present endings', false, 2),
       ('Infinitive + subjunctive endings', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 213 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I would like a coffee" (politeness).',
         '"Je voudrais un café" — the conditional of "vouloir" softens requests.',
         'Je voudrais un café',
         'Polite request: "Je voudrais un café".',
         213
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je veux un café', false, 0),
       ('Je voudrais un café', true, 1),
       ('Je voulais un café', false, 2),
       ('J''aurais un café', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 214 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conditional of "être" for "tu"?',
         '"Tu serais" — future stem "ser-" + imparfait "-ais".',
         'Tu serais',
         '"You would be" is "tu serais".',
         214
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu es', false, 0),
       ('Tu seras', false, 1),
       ('Tu serais', true, 2),
       ('Tu étais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 215 (conditional usage) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the conditional typically express?',
         'Conditional expresses hypothetical situations, politeness, and "would" actions.',
         'Hypotheticals / politeness ("would")',
         'Conditional = "would" / hypothetical / politeness.',
         215
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Past completed action', false, 0),
       ('Definite future', false, 1),
       ('Hypothetical, politeness ("would")', true, 2),
       ('Habitual past', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 216 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "We would go" to French.',
         '"Nous irions" — conditional of aller.',
         'Nous irions',
         '"We would go" is "nous irions".',
         216
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous allons', false, 0),
       ('Nous irons', false, 1),
       ('Nous irions', true, 2),
       ('Nous allions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 217 (plus-que-parfait) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How is the plus-que-parfait formed?',
         'Imparfait of avoir/être + past participle. Like English "had + done".',
         'Imparfait of avoir/être + past participle',
         'Plus-que-parfait = imparfait of aux + past participle.',
         217
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Present of aux + participle', false, 0),
       ('Future of aux + participle', false, 1),
       ('Imparfait of aux + past participle', true, 2),
       ('Conditional of aux + participle', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 218 (plus-que-parfait) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I had eaten" to French.',
         '"J''avais mangé" — imparfait of avoir + past participle.',
         'J''avais mangé',
         '"I had eaten" is "j''avais mangé".',
         218
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai mangé', false, 0),
       ('Je mangeais', false, 1),
       ('J''avais mangé', true, 2),
       ('Je mangerai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 219 (plus-que-parfait) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She had left" to French.',
         '"Elle était partie" — "partir" uses être; agreement with feminine subject (-e).',
         'Elle était partie',
         '"She had left" is "elle était partie".',
         219
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elle est partie', false, 0),
       ('Elle a parti', false, 1),
       ('Elle était partie', true, 2),
       ('Elle partait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 220 (plus-que-parfait usage) -------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'When do you use the plus-que-parfait?',
         'For an action completed before another past action — "I had done X before Y happened".',
         'Action completed before another past action',
         'Plus-que-parfait = action completed before another past action.',
         220
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Action completed before another past action', true, 0),
       ('Future events', false, 1),
       ('Ongoing past description', false, 2),
       ('Hypothetical statement', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 221 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "tomorrow I will work" to French.',
         '"Demain je travaillerai" — futur simple of "travailler".',
         'Demain je travaillerai',
         '"Tomorrow I will work" is "demain je travaillerai".',
         221
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Demain je travaille', false, 0),
       ('Demain je travaillais', false, 1),
       ('Demain je travaillerai', true, 2),
       ('Demain je travaillerais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 222 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conditional of "pouvoir" for "je"?',
         '"Je pourrais" = "I could" / "I would be able to". Future stem "pourr-".',
         'Je pourrais',
         '"I could" is "je pourrais".',
         222
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je peux', false, 0),
       ('Je pouvais', false, 1),
       ('Je pourrai', false, 2),
       ('Je pourrais', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 223 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future of "savoir" for "nous"?',
         '"Nous saurons" — future stem "saur-".',
         'Nous saurons',
         '"We will know" is "nous saurons".',
         223
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous savons', false, 0),
       ('Nous saurons', true, 1),
       ('Nous saurions', false, 2),
       ('Nous savions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 224 (future stems) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "envoyer"?',
         '"Enverr-" — irregular: "j''enverrai" = "I will send".',
         'Enverr-',
         '"Envoyer" future stem is "enverr-".',
         224
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Envoy-', false, 0),
       ('Envoier-', false, 1),
       ('Enverr-', true, 2),
       ('Envoyer-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 225 (future stems) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "tenir"?',
         '"Tiendr-" — like "venir → viendr-".',
         'Tiendr-',
         '"Tenir" future stem is "tiendr-".',
         225
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tiendr-', true, 0),
       ('Tien-', false, 1),
       ('Ten-', false, 2),
       ('Tenir-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 226 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "vouloir"?',
         '"Voudr-" — "je voudrai" (future), "je voudrais" (conditional).',
         'Voudr-',
         '"Vouloir" future stem is "voudr-".',
         226
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Voul-', false, 0),
       ('Voulu-', false, 1),
       ('Voudr-', true, 2),
       ('Veul-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 227 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "devoir"?',
         '"Devr-" — "je devrai" = "I will have to".',
         'Devr-',
         '"Devoir" future stem is "devr-".',
         227
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Doi-', false, 0),
       ('Devoir-', false, 1),
       ('Devr-', true, 2),
       ('Devra-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 228 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "It will rain" to French.',
         '"Il pleuvra" — future of "pleuvoir", impersonal.',
         'Il pleuvra',
         '"It will rain" is "il pleuvra".',
         228
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il pleut', false, 0),
       ('Il pleuvait', false, 1),
       ('Il a plu', false, 2),
       ('Il pleuvra', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 229 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future of "finir" for "tu"?',
         '"Tu finiras" — based on infinitive + "as".',
         'Tu finiras',
         '"You will finish" is "tu finiras".',
         229
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu finiras', true, 0),
       ('Tu finiras-tu', false, 1),
       ('Tu finis', false, 2),
       ('Tu finirais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 230 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "they will see" to French.',
         '"Ils verront" — future of voir, irregular stem "verr-".',
         'Ils verront',
         '"They will see" is "ils verront".',
         230
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils voient', false, 0),
       ('Ils verront', true, 1),
       ('Ils verraient', false, 2),
       ('Ils voyaient', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 231 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conditional of "avoir" for "j"?',
         '"J''aurais" = "I would have".',
         'J''aurais',
         '"I would have" is "j''aurais".',
         231
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai', false, 0),
       ('J''aurai', false, 1),
       ('J''aurais', true, 2),
       ('J''avais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 232 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conditional of "faire" for "il"?',
         '"Il ferait" = "he would do".',
         'Il ferait',
         '"He would do/make" is "il ferait".',
         232
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il fait', false, 0),
       ('Il fera', false, 1),
       ('Il faisait', false, 2),
       ('Il ferait', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 233 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conditional usage: "If I were rich, I would travel".',
         '"Si j''étais riche, je voyagerais" — imparfait in si-clause, conditional in result.',
         'Si + imparfait + conditional',
         '"If + imparfait, conditional" expresses hypothetical.',
         233
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Si j''étais riche, je voyagerais', true, 0),
       ('Si je serai riche, je voyagerai', false, 1),
       ('Si j''ai été riche, je voyagerais', false, 2),
       ('Si je suis riche, je voyagerais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 234 (conditional) ------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "He would like to come" to French.',
         '"Il voudrait venir" — conditional of vouloir + infinitive.',
         'Il voudrait venir',
         '"He would like to come" = "il voudrait venir".',
         234
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il veut venir', false, 0),
       ('Il voudrait venir', true, 1),
       ('Il voudrait venu', false, 2),
       ('Il viendrait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 235 (plus-que-parfait) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Plus-que-parfait of "voir" for "tu"?',
         '"Tu avais vu" — imparfait of avoir + past participle "vu".',
         'Tu avais vu',
         '"You had seen" is "tu avais vu".',
         235
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu as vu', false, 0),
       ('Tu avais vu', true, 1),
       ('Tu auras vu', false, 2),
       ('Tu voyais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 236 (plus-que-parfait) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Plus-que-parfait of "aller" for "elles"?',
         '"Elles étaient allées" — aller uses être; agreement with feminine plural subject.',
         'Elles étaient allées',
         '"They (f.) had gone" is "elles étaient allées".',
         236
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elles avaient allé', false, 0),
       ('Elles étaient allés', false, 1),
       ('Elles étaient allées', true, 2),
       ('Elles allaient', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 237 (plus-que-parfait in si) -------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which tense pair: "If I had known, I would have come"?',
         'Plus-que-parfait + conditionnel passé: "Si j''avais su, je serais venu(e)".',
         'Plus-que-parfait + conditionnel passé',
         'Past unreal hypothetical = plus-que-parfait + conditionnel passé.',
         237
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Plus-que-parfait + conditionnel passé', true, 0),
       ('Imparfait + conditionnel', false, 1),
       ('Présent + futur', false, 2),
       ('Passé composé + futur', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 238 (conditional passé) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How is the conditionnel passé formed?',
         'Conditional of auxiliary (aurais/serais) + past participle.',
         'Conditional of aux + past participle',
         'Conditionnel passé = conditional of aux + past participle.',
         238
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Present of aux + participle', false, 0),
       ('Imparfait of aux + participle', false, 1),
       ('Conditional of aux + past participle', true, 2),
       ('Future of aux + participle', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 239 (conditional passé) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I would have eaten" to French.',
         '"J''aurais mangé" — conditional of avoir + past participle.',
         'J''aurais mangé',
         '"I would have eaten" is "j''aurais mangé".',
         239
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''avais mangé', false, 0),
       ('Je mangerais', false, 1),
       ('J''aurais mangé', true, 2),
       ('Je mangerai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 240 (futur antérieur) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I will have finished" to French.',
         '"J''aurai fini" — futur antérieur: future of aux + past participle.',
         'J''aurai fini',
         '"I will have finished" is "j''aurai fini".',
         240
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je finirai', false, 0),
       ('J''aurai fini', true, 1),
       ('J''ai fini', false, 2),
       ('J''avais fini', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 241 (future stems mixed) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "courir"?',
         '"Courr-" — double "r" in future of courir.',
         'Courr-',
         '"Courir" future stem is "courr-".',
         241
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Cour-', false, 0),
       ('Courir-', false, 1),
       ('Courr-', true, 2),
       ('Couri-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 242 (future stems mixed) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future stem of "mourir"?',
         '"Mourr-" — double "r", like "courir".',
         'Mourr-',
         '"Mourir" future stem is "mourr-".',
         242
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mour-', false, 0),
       ('Mourr-', true, 1),
       ('Mourir-', false, 2),
       ('Mort-', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 243 (futur simple usage) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In French, after "quand" referring to the future, which tense is used?',
         'Unlike English, French uses the futur after "quand", "lorsque", "dès que" if the action is in the future. "Quand il arrivera..." = "When he arrives..."',
         'Future tense (not present)',
         'After "quand" in future contexts, use futur (not present).',
         243
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Present', false, 0),
       ('Future', true, 1),
       ('Imparfait', false, 2),
       ('Subjunctive', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 244 (futur antérieur) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'When is futur antérieur used?',
         'For a future action that will be completed before another future action — "I will have done X by then".',
         'Future action completed before another future action',
         'Futur antérieur = will have X-ed (before another future event).',
         244
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Future action completed before another future action', true, 0),
       ('Hypothetical', false, 1),
       ('Habitual past', false, 2),
       ('Direct speech in the past', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 245 (conditional passé) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She would have gone" to French.',
         '"Elle serait allée" — conditional of être + past participle, agreement with feminine subject.',
         'Elle serait allée',
         '"She would have gone" is "elle serait allée".',
         245
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elle aurait allé', false, 0),
       ('Elle serait allée', true, 1),
       ('Elle est allée', false, 2),
       ('Elle irait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 246 (futur simple usage) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "When she arrives, we will eat" to French.',
         '"Quand elle arrivera, nous mangerons" — both verbs in the future.',
         'Quand elle arrivera, nous mangerons',
         'Both clauses in futur simple after "quand".',
         246
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quand elle arrive, nous mangeons', false, 0),
       ('Quand elle arrivera, nous mangerons', true, 1),
       ('Quand elle arrive, nous mangerons', false, 2),
       ('Quand elle arrivera, nous mangeons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 247 (plus-que-parfait) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Plus-que-parfait of "faire" for "nous"?',
         '"Nous avions fait" — imparfait of avoir + past participle "fait".',
         'Nous avions fait',
         '"We had done" is "nous avions fait".',
         247
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous avons fait', false, 0),
       ('Nous faisons', false, 1),
       ('Nous avions fait', true, 2),
       ('Nous ferions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 248 (futur simple) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Future of "manger" for "vous"?',
         '"Vous mangerez" — infinitive + "ez".',
         'Vous mangerez',
         '"You will eat" (formal/pl.) is "vous mangerez".',
         248
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vous mangerez', true, 0),
       ('Vous mangez', false, 1),
       ('Vous mangeriez', false, 2),
       ('Vous mangiez', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 249 (mixed tenses) ----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Identify the tense: "Si tu venais, je serais content".',
         'Si + imparfait + conditional = present-time hypothetical. "If you came, I would be happy."',
         'Imparfait + conditional',
         '"Si + imparfait, conditionnel" is the standard hypothetical.',
         249
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Présent + futur', false, 0),
       ('Passé composé + présent', false, 1),
       ('Plus-que-parfait + conditionnel passé', false, 2),
       ('Imparfait + conditionnel', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 250 (adjectives gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "grand"?',
         '"Grande" — most adjectives add "-e" to form the feminine.',
         'Grande',
         'Feminine of "grand" is "grande".',
         250
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Grand', false, 0),
       ('Grande', true, 1),
       ('Grands', false, 2),
       ('Grandes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 251 (adjectives gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "petit"?',
         '"Petite" — add "-e" and the "t" is now pronounced.',
         'Petite',
         'Feminine of "petit" is "petite".',
         251
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Petit', false, 0),
       ('Petits', false, 1),
       ('Petite', true, 2),
       ('Pettre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 252 (adjectives gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "heureux"?',
         '"Heureuse" — adjectives in "-eux" become "-euse" in feminine.',
         'Heureuse',
         '"-eux" → "-euse" in feminine.',
         252
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Heureux', false, 0),
       ('Heureuse', true, 1),
       ('Heureusse', false, 2),
       ('Heureuxe', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 253 (adjectives gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "beau"?',
         '"Belle" — an irregular feminine. "Beau" has a special form "bel" before vowel-initial masc. nouns.',
         'Belle',
         'Feminine of "beau" is "belle"; "bel" before vowel.',
         253
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Beaue', false, 0),
       ('Beau', false, 1),
       ('Bel', false, 2),
       ('Belle', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 254 (adjectives gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which adjective is invariable?',
         '"Marron" (brown) is invariable — no gender or number change. Same for "orange".',
         'Marron',
         '"Marron" and "orange" are invariable.',
         254
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Marron', true, 0),
       ('Grand', false, 1),
       ('Petit', false, 2),
       ('Beau', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 255 (adjectives plural) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the plural of "national"?',
         '"Nationaux" — most "-al" adjectives become "-aux" in masc. plural.',
         'Nationaux',
         '"-al" → "-aux" in masc. plural.',
         255
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nationals', false, 0),
       ('Nationaux', true, 1),
       ('Nationales', false, 2),
       ('Nationale', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 256 (adjectives plural) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the plural of "vieux"?',
         '"Vieux" — invariable in the masc. plural (already ends in -x).',
         'Vieux',
         '"Vieux" is unchanged in masc. plural.',
         256
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vieuxs', false, 0),
       ('Vieuse', false, 1),
       ('Vieux', true, 2),
       ('Vieuses', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 257 (adjective position BAGS) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the BAGS rule describe?',
         'BAGS = Beauty, Age, Goodness/Badness, Size — adjectives in these categories typically come BEFORE the noun in French.',
         'Adjectives that go BEFORE the noun',
         'BAGS = Beauty, Age, Goodness, Size — precede the noun.',
         257
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Adjectives after the noun', false, 0),
       ('Adjectives before the noun', true, 1),
       ('Irregular plurals', false, 2),
       ('Verb conjugation rule', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 258 (adjective position) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which adjective normally comes BEFORE the noun?',
         '"Petit" (size) follows the BAGS rule and goes before the noun: "un petit chien".',
         'Petit',
         '"Petit" precedes the noun (BAGS - size).',
         258
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Rouge', false, 0),
       ('Intelligent', false, 1),
       ('Petit', true, 2),
       ('Français', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 259 (adjective position) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Where does "rouge" go relative to its noun?',
         'Color adjectives go AFTER the noun: "une voiture rouge".',
         'After the noun',
         'Colors come after the noun: "une voiture rouge".',
         259
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Before the noun', false, 0),
       ('After the noun', true, 1),
       ('It depends on the speaker', false, 2),
       ('Always before', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 260 (adjective agreement) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Une voiture ___" (red).',
         '"Une voiture rouge" — "rouge" is invariable in gender (no extra -e needed).',
         'rouge',
         '"Rouge" is invariable: "une voiture rouge".',
         260
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('rouges', false, 0),
       ('rouge', true, 1),
       ('rougée', false, 2),
       ('rougee', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 261 (adjective agreement) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Des chiens ___" (small, masc. pl.).',
         '"Des petits chiens" — "petit" goes before the noun and takes -s in plural.',
         'petits',
         '"Petits" (masc. pl., precedes noun).',
         261
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('petit', false, 0),
       ('petites', false, 1),
       ('petit-s', false, 2),
       ('petits', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 262 (adjective agreement) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Une ___ maison" (beautiful, fem. sing.).',
         '"Une belle maison" — "belle" is the feminine of "beau" and precedes the noun.',
         'belle',
         '"Belle maison" — fem. of "beau".',
         262
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('beau', false, 0),
       ('belle', true, 1),
       ('bel', false, 2),
       ('beaue', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 263 (adjective form bel) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which form do you use: "un ___ homme"?',
         '"Un bel homme" — "bel" is used before a masc. noun starting with a vowel or silent "h".',
         'bel',
         '"Bel" used before vowel/silent-h masc. nouns.',
         263
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('beau', false, 0),
       ('bel', true, 1),
       ('belle', false, 2),
       ('beaux', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 264 (adjective forms) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the masculine of "blanche"?',
         '"Blanc" — irregular masc. form.',
         'Blanc',
         'Masculine of "blanche" is "blanc".',
         264
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Blanc', true, 0),
       ('Blanche', false, 1),
       ('Blanchet', false, 2),
       ('Blan', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 265 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "actif"?',
         '"Active" — adjectives in "-f" become "-ve" in feminine.',
         'Active',
         '"-f" → "-ve" in feminine.',
         265
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Actif', false, 0),
       ('Actife', false, 1),
       ('Active', true, 2),
       ('Activée', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 266 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "premier"?',
         '"Première" — "-er" becomes "-ère" with a grave accent.',
         'Première',
         '"-er" → "-ère" in feminine.',
         266
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Premier', false, 0),
       ('Premiere', false, 1),
       ('Premier-e', false, 2),
       ('Première', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 267 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "vieux"?',
         '"Vieille" — irregular. Like beau/belle, "vieux" has special form "vieil" before vowel-initial masc. nouns.',
         'Vieille',
         'Feminine of "vieux" is "vieille".',
         267
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vieuse', false, 0),
       ('Vieille', true, 1),
       ('Vieuxe', false, 2),
       ('Vieille-e', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 268 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "nouveau"?',
         '"Nouvelle" — irregular. "Nouvel" is used before a masc. vowel-initial noun.',
         'Nouvelle',
         'Feminine of "nouveau" is "nouvelle".',
         268
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nouveau', false, 0),
       ('Nouvel', false, 1),
       ('Nouvelle', true, 2),
       ('Nouveaue', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 269 (adjective placement) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "a small house"?',
         '"Une petite maison" — "petit" (BAGS: size) goes before the noun.',
         'Une petite maison',
         '"Petit" precedes the noun: "une petite maison".',
         269
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Une maison petite', false, 0),
       ('Une petite maison', true, 1),
       ('Un petit maison', false, 2),
       ('Une maisone petit', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 270 (adjective placement) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "a French book"?',
         '"Un livre français" — nationality adjectives follow the noun.',
         'Un livre français',
         'Nationality adjectives follow the noun.',
         270
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Un français livre', false, 0),
       ('Un livre français', true, 1),
       ('Une livre française', false, 2),
       ('Un livré français', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 271 (adjective meaning change) ----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "mon ancien professeur" mean?',
         'Before noun, "ancien" means "former" — "my former teacher". After the noun, "ancien" means "ancient/old".',
         'My former teacher',
         '"Ancien" before noun = "former"; after noun = "ancient".',
         271
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('My ancient teacher', false, 0),
       ('My former teacher', true, 1),
       ('My elderly teacher', false, 2),
       ('My main teacher', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 272 (adjective number) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the plural of "bleu" (masc.)?',
         '"Bleus" — just add -s in plural (regular).',
         'Bleus',
         'Plural of "bleu" is "bleus".',
         272
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Bleus', true, 0),
       ('Bleux', false, 1),
       ('Bleues', false, 2),
       ('Blues', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 273 (agreement) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Les ___ filles" (intelligent, fem. pl.).',
         '"Les intelligentes filles" or more commonly "Les filles intelligentes" — feminine plural "intelligentes".',
         'intelligentes',
         '"Intelligentes" — fem. pl.',
         273
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('intelligent', false, 0),
       ('intelligents', false, 1),
       ('intelligente', false, 2),
       ('intelligentes', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 274 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "long"?',
         '"Longue" — adds "u" before the "e".',
         'Longue',
         'Feminine of "long" is "longue".',
         274
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Longe', false, 0),
       ('Longue', true, 1),
       ('Long', false, 2),
       ('Longgue', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 275 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "doux"?',
         '"Douce" — irregular feminine.',
         'Douce',
         'Feminine of "doux" is "douce".',
         275
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Doux', false, 0),
       ('Douxe', false, 1),
       ('Douce', true, 2),
       ('Douxce', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 276 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "frais"?',
         '"Fraîche" — irregular with circumflex.',
         'Fraîche',
         'Feminine of "frais" is "fraîche".',
         276
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Fraîche', true, 0),
       ('Fraise', false, 1),
       ('Fraisse', false, 2),
       ('Fraîse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 277 (adjective agreement) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What rule governs adjective agreement in French?',
         'Adjectives agree in both gender (masc/fem) and number (sing/pl) with the noun they modify.',
         'Agree in gender + number',
         'French adjectives agree in gender and number.',
         277
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Agree in gender only', false, 0),
       ('Agree in number only', false, 1),
       ('Agree in gender and number', true, 2),
       ('No agreement', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 278 (adjective demonstrative) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "this book" in French?',
         '"Ce livre" — "ce" is the masculine singular demonstrative. "Cet" is used before vowel/silent-h.',
         'Ce livre',
         '"This book" is "ce livre".',
         278
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Cette livre', false, 0),
       ('Ce livre', true, 1),
       ('Ces livre', false, 2),
       ('Cet livre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 279 (adjective demonstrative) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "this woman" in French?',
         '"Cette femme" — "cette" is the feminine singular demonstrative.',
         'Cette femme',
         '"This woman" is "cette femme".',
         279
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ce femme', false, 0),
       ('Cet femme', false, 1),
       ('Cette femme', true, 2),
       ('Ces femme', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 280 (adjective demonstrative) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "this man" (vowel-start noun) in French?',
         '"Cet homme" — "cet" is used before masc. nouns starting with vowels or silent "h".',
         'Cet homme',
         '"This man" is "cet homme" (cet before vowel/h).',
         280
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ce homme', false, 0),
       ('Cet homme', true, 1),
       ('Cette homme', false, 2),
       ('Ces homme', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 281 (possessive adjective) --------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "my book" in French?',
         '"Mon livre" — "mon" agrees with the noun, not the owner; "livre" is masc.',
         'Mon livre',
         '"My book" is "mon livre" (mon = masc. sing.).',
         281
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ma livre', false, 0),
       ('Mes livre', false, 1),
       ('Mon livre', true, 2),
       ('Moi livre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 282 (possessive adjective) --------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "my sister" in French?',
         '"Ma sœur" — "ma" is feminine singular.',
         'Ma sœur',
         '"My sister" is "ma sœur".',
         282
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mon sœur', false, 0),
       ('Ma sœur', true, 1),
       ('Mes sœur', false, 2),
       ('Mais sœur', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 283 (possessive special) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "my friend (female)" in French?',
         '"Mon amie" — even though "amie" is feminine, "mon" is used because the noun starts with a vowel.',
         'Mon amie',
         '"Mon" before vowel-initial fem. noun: "mon amie".',
         283
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ma amie', false, 0),
       ('Mon amie', true, 1),
       ('Mes amie', false, 2),
       ('M''amie', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 284 (possessive plural) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "my friends" in French?',
         '"Mes amis" — "mes" is plural (any gender).',
         'Mes amis',
         '"My friends" is "mes amis".',
         284
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mon amis', false, 0),
       ('Ma amis', false, 1),
       ('Mes amis', true, 2),
       ('Mais amis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 285 (adjective ending) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "bon"?',
         '"Bonne" — doubles the "n" then adds "e".',
         'Bonne',
         'Feminine of "bon" is "bonne".',
         285
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Bone', false, 0),
       ('Bon', false, 1),
       ('Bonée', false, 2),
       ('Bonne', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 286 (adjective ending) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "gentil"?',
         '"Gentille" — doubles the "l" and adds "e".',
         'Gentille',
         'Feminine of "gentil" is "gentille".',
         286
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Gentile', false, 0),
       ('Gentille', true, 1),
       ('Gentil-e', false, 2),
       ('Gentilée', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 287 (irregular fem.) --------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "favori"?',
         '"Favorite" — adds "te" rather than just "e".',
         'Favorite',
         'Feminine of "favori" is "favorite".',
         287
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Favorie', false, 0),
       ('Favorite', true, 1),
       ('Favorée', false, 2),
       ('Favorisse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 288 (adjective placement) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Correct order: "a young woman"?',
         '"Une jeune femme" — "jeune" is a BAGS (age) adjective and precedes the noun.',
         'Une jeune femme',
         '"Jeune" precedes the noun (age).',
         288
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Une femme jeune', false, 0),
       ('Un jeune femme', false, 1),
       ('Une jeune femme', true, 2),
       ('La jeune une femme', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 289 (adjective meaning change) ----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "un grand homme" mean?',
         'Before noun, "grand" = "great" (figurative). "Un homme grand" = "a tall man" (literal).',
         'A great man',
         '"Grand" before noun = "great" (figurative).',
         289
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('A tall man', false, 0),
       ('A great man', true, 1),
       ('A big man', false, 2),
       ('A heavy man', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 290 (adjective meaning change) ----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ma propre voiture" mean?',
         'Before noun, "propre" = "own". After noun, "propre" = "clean".',
         'My own car',
         '"Propre" before noun = "own"; after noun = "clean".',
         290
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('My clean car', false, 0),
       ('My new car', false, 1),
       ('My old car', false, 2),
       ('My own car', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 291 (color agreement) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Plural of "noir" (masc. pl.)?',
         '"Noirs" — regular -s in plural.',
         'Noirs',
         'Plural of "noir" is "noirs".',
         291
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Noires', false, 0),
       ('Noirs', true, 1),
       ('Noir', false, 2),
       ('Noiraux', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 292 (adjective placement) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Where does "intelligent" go?',
         'Most descriptive adjectives (like personality, opinion) go AFTER the noun. "Un homme intelligent".',
         'After the noun',
         'Most descriptive adjectives follow the noun.',
         292
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Before the noun', false, 0),
       ('After the noun', true, 1),
       ('It depends', false, 2),
       ('Either way', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 293 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "italien"?',
         '"Italienne" — doubles the "n" before "-e".',
         'Italienne',
         'Feminine of "italien" is "italienne".',
         293
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Italiene', false, 0),
       ('Italienne', true, 1),
       ('Italien-e', false, 2),
       ('Italina', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 294 (adjective gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine of "sérieux"?',
         '"Sérieuse" — "-eux" → "-euse".',
         'Sérieuse',
         'Feminine of "sérieux" is "sérieuse".',
         294
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sérieusee', false, 0),
       ('Sérieusse', false, 1),
       ('Sérieuxe', false, 2),
       ('Sérieuse', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 295 (adjective number) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the masc. plural of "beau"?',
         '"Beaux" — irregular plural (with -x).',
         'Beaux',
         'Plural of "beau" is "beaux".',
         295
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Beaus', false, 0),
       ('Beaux', true, 1),
       ('Beles', false, 2),
       ('Beau', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 296 (adjective number) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Plural of "nouveau" (masc. pl.)?',
         '"Nouveaux" — irregular plural with -x.',
         'Nouveaux',
         'Plural of "nouveau" is "nouveaux".',
         296
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nouveaus', false, 0),
       ('Nouveaux', true, 1),
       ('Nouvels', false, 2),
       ('Nouveau', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 297 (possessive) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "your (singular informal) car" in French?',
         '"Ta voiture" — fem. sing. "ta" because "voiture" is feminine.',
         'Ta voiture',
         '"Your car" (sing. inf.) is "ta voiture".',
         297
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ton voiture', false, 0),
       ('Ta voiture', true, 1),
       ('Tes voiture', false, 2),
       ('Vos voiture', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 298 (possessive) -----------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "her dog" / "his dog" in French?',
         '"Son chien" — possessive agrees with the OBJECT''s gender, not the owner''s. Both "his" and "her dog" = "son chien".',
         'Son chien',
         '"Son chien" can mean "his dog" or "her dog".',
         298
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sa chien', false, 0),
       ('Ses chien', false, 1),
       ('Son chien', true, 2),
       ('Leur chien', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 299 (possessive plural) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "their house" in French?',
         '"Leur maison" — "leur" is for "their" (sing. object).',
         'Leur maison',
         '"Their house" is "leur maison".',
         299
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Leurs maison', false, 0),
       ('Leur maison', true, 1),
       ('Sa maison', false, 2),
       ('Ses maison', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 300 (articles) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the masculine singular definite article in French?',
         '"Le" — masc. sing. definite article. "Le chien" = "the dog".',
         'Le',
         'Masc. sing. definite article is "le".',
         300
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('La', false, 0),
       ('Les', false, 1),
       ('Le', true, 2),
       ('Un', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 301 (articles) -------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the feminine indefinite article in French?',
         '"Une" — fem. sing. indefinite article. "Une voiture" = "a car".',
         'Une',
         'Feminine indefinite article is "une".',
         301
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Un', false, 0),
       ('Une', true, 1),
       ('Des', false, 2),
       ('La', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 302 (articles plural) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the plural definite article in French?',
         '"Les" — covers both genders in plural. "Les chiens", "les filles".',
         'Les',
         'Plural definite article is "les" (both genders).',
         302
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Les', true, 0),
       ('Des', false, 1),
       ('Le', false, 2),
       ('La', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 303 (articles partitive) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I eat bread" in French?',
         '"Je mange du pain" — "du" is the partitive article (some/an unspecified amount).',
         'Je mange du pain',
         '"Du" is partitive (some bread).',
         303
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je mange le pain', false, 0),
       ('Je mange du pain', true, 1),
       ('Je mange un pain', false, 2),
       ('Je mange de pain', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 304 (articles partitive) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the partitive for a feminine noun?',
         '"De la" — for fem. sing. "Je mange de la salade".',
         'De la',
         'Partitive (fem. sing.) is "de la".',
         304
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Du', false, 0),
       ('De la', true, 1),
       ('Des', false, 2),
       ('De l''', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 305 (articles partitive) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the partitive before a vowel-initial noun?',
         '"De l''" — used before a vowel-initial noun of either gender. "Je bois de l''eau".',
         'De l''',
         '"De l''" before vowel/silent-h noun.',
         305
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Du', false, 0),
       ('De la', false, 1),
       ('De l''', true, 2),
       ('Des', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 306 (articles partitive) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the plural partitive article?',
         '"Des" — plural partitive (some). Also the plural of the indefinite "un/une".',
         'Des',
         'Plural partitive is "des".',
         306
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Les', false, 0),
       ('De', false, 1),
       ('Du', false, 2),
       ('Des', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 307 (preposition à) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "à Paris" mean?',
         '"À + city" = "in/to + city". "À Paris" = "in Paris" or "to Paris".',
         'In/To Paris',
         '"À + city" = "in" or "to" that city.',
         307
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('From Paris', false, 0),
       ('In/To Paris', true, 1),
       ('At Paris (only)', false, 2),
       ('Near Paris', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 308 (preposition en) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "in France" in French?',
         '"En France" — "en" is used with feminine countries.',
         'En France',
         '"En + feminine country" = in/to that country.',
         308
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('À France', false, 0),
       ('Dans France', false, 1),
       ('En France', true, 2),
       ('Au France', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 309 (preposition au) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "in Japan" in French?',
         '"Au Japon" — "au" (à + le) for masc. countries.',
         'Au Japon',
         '"Au + masc. country" = in/to that country.',
         309
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('En Japon', false, 0),
       ('À Japon', false, 1),
       ('Au Japon', true, 2),
       ('Dans Japon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 310 (preposition aux) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "in the United States" in French?',
         '"Aux États-Unis" — "aux" (à + les) for plural-name countries.',
         'Aux États-Unis',
         '"Aux + plural country" = in/to.',
         310
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('En États-Unis', false, 0),
       ('Aux États-Unis', true, 1),
       ('Au États-Unis', false, 2),
       ('Dans États-Unis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 311 (contraction du) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         '"De + le" contracts to:',
         '"Du" is the obligatory contraction of "de + le". "Je viens du cinéma".',
         'Du',
         '"De + le" → "du".',
         311
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Del', false, 0),
       ('De le', false, 1),
       ('D''l', false, 2),
       ('Du', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 312 (contraction au) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         '"À + le" contracts to:',
         '"Au" is the contraction of "à + le". "Je vais au cinéma".',
         'Au',
         '"À + le" → "au".',
         312
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Au', true, 0),
       ('À le', false, 1),
       ('Aux', false, 2),
       ('À l''', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 313 (contraction aux) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         '"À + les" contracts to:',
         '"Aux" — used before any plural noun. "Je parle aux enfants".',
         'Aux',
         '"À + les" → "aux".',
         313
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Au', false, 0),
       ('Aux', true, 1),
       ('À les', false, 2),
       ('Des', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 314 (contraction des) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         '"De + les" contracts to:',
         '"Des" — both the contraction "de + les" and the plural indefinite/partitive.',
         'Des',
         '"De + les" → "des".',
         314
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Des', true, 0),
       ('Du', false, 1),
       ('De les', false, 2),
       ('Aux', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 315 (preposition chez) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "chez moi" mean?',
         '"Chez moi" = "at my place/home". "Chez" is used for going to/being at someone''s home.',
         'At my place',
         '"Chez moi" = "at my place".',
         315
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('At my place', true, 0),
       ('With me', false, 1),
       ('Near me', false, 2),
       ('For me', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 316 (preposition chez) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "at the doctor''s" in French?',
         '"Chez le médecin" — "chez" + place of profession is standard.',
         'Chez le médecin',
         '"At the doctor''s" is "chez le médecin".',
         316
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Au médecin', false, 0),
       ('Chez le médecin', true, 1),
       ('Dans le médecin', false, 2),
       ('À médecin', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 317 (preposition dans) -----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What''s the difference between "dans" and "en"?',
         '"Dans" = inside a specific place; "en" = in (more abstract, with countries, materials, transport).',
         'Dans = inside specific place; en = abstract/general',
         '"Dans" = specific inside; "en" = abstract.',
         317
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Identical', false, 0),
       ('Dans = inside specific place; en = abstract', true, 1),
       ('Dans = time; en = place', false, 2),
       ('Dans = past; en = future', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 318 (preposition de) -------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you express "from Paris" in French?',
         '"De Paris" — "de" indicates origin.',
         'De Paris',
         '"From Paris" is "de Paris".',
         318
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('À Paris', false, 0),
       ('De Paris', true, 1),
       ('En Paris', false, 2),
       ('Dans Paris', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 319 (preposition de origin) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I''m from the United States" in French?',
         '"Je viens des États-Unis" — "de + les" = "des" for plural country names.',
         'Je viens des États-Unis',
         '"From the US" is "des États-Unis".',
         319
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je viens d''États-Unis', false, 0),
       ('Je viens à États-Unis', false, 1),
       ('Je viens des États-Unis', true, 2),
       ('Je viens en États-Unis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 320 (articles definite) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I like coffee" (in general) in French?',
         '"J''aime le café" — definite article used for general likes/preferences.',
         'J''aime le café',
         'General preferences use the definite article in French.',
         320
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''aime café', false, 0),
       ('J''aime un café', false, 1),
       ('J''aime le café', true, 2),
       ('J''aime du café', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 321 (articles negation) ---------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What happens to "un/une/du/de la/des" after a negation?',
         'They all change to "de" (or "d''" before vowel). "Je n''ai pas de pain", "Je n''ai pas d''ami".',
         'Becomes "de" / "d''"',
         'After negation, indefinite/partitive → "de" / "d''".',
         321
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('No change', false, 0),
       ('Becomes "de" or "d''"', true, 1),
       ('Becomes "le/la"', false, 2),
       ('Disappears entirely', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 322 (article negation) ----------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Negate "J''ai un chien" properly.',
         '"Je n''ai pas de chien" — indefinite "un" becomes "de" after negation.',
         'Je n''ai pas de chien',
         '"Un" → "de" after negation: "pas de chien".',
         322
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je n''ai pas un chien', false, 0),
       ('Je n''ai pas de chien', true, 1),
       ('Je ne ai pas chien', false, 2),
       ('Je n''ai un chien', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 323 (preposition à or de) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "the book of the child" to French.',
         '"Le livre de l''enfant" — possession is expressed with "de".',
         'Le livre de l''enfant',
         'Possession uses "de" in French.',
         323
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le livre à l''enfant', false, 0),
       ('Le livre de l''enfant', true, 1),
       ('L''enfant''s livre', false, 2),
       ('Le livre par l''enfant', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 324 (preposition sur/sous) ----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "sur la table" mean?',
         '"Sur" = "on". "Sur la table" = "on the table".',
         'On the table',
         '"Sur" means "on".',
         324
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Under the table', false, 0),
       ('Behind the table', false, 1),
       ('Near the table', false, 2),
       ('On the table', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 325 (preposition sur/sous) ----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "sous la table" mean?',
         '"Sous" = "under". "Sous la table" = "under the table".',
         'Under the table',
         '"Sous" means "under".',
         325
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('On the table', false, 0),
       ('Under the table', true, 1),
       ('Beside the table', false, 2),
       ('In front of the table', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 326 (preposition devant/derrière) --------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "devant" mean?',
         '"Devant" = "in front of". Opposite: "derrière" (behind).',
         'In front of',
         '"Devant" = "in front of"; "derrière" = "behind".',
         326
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Behind', false, 0),
       ('Beside', false, 1),
       ('In front of', true, 2),
       ('Inside', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 327 (preposition entre) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "entre" mean?',
         '"Entre" = "between". "Entre la chaise et la table" = "between the chair and the table".',
         'Between',
         '"Entre" = "between".',
         327
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Between', true, 0),
       ('Inside', false, 1),
       ('After', false, 2),
       ('Before', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 328 (preposition avec/sans) -------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "avec" mean?',
         '"Avec" = "with". Opposite: "sans" (without).',
         'With',
         '"Avec" = "with".',
         328
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Without', false, 0),
       ('With', true, 1),
       ('For', false, 2),
       ('To', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 329 (preposition sans) ----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "sans" mean?',
         '"Sans" = "without". Used as in "sans sucre" (without sugar).',
         'Without',
         '"Sans" = "without".',
         329
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('With', false, 0),
       ('For', false, 1),
       ('Toward', false, 2),
       ('Without', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 330 (preposition pour) ----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "pour" mean?',
         '"Pour" = "for". Used for purpose, recipient, or duration in the future.',
         'For',
         '"Pour" = "for".',
         330
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('For', true, 0),
       ('From', false, 1),
       ('By', false, 2),
       ('With', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 331 (preposition par) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "par" mean?',
         '"Par" = "by" or "through". Used for agents in passive voice or means.',
         'By / Through',
         '"Par" = "by" / "through".',
         331
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('For', false, 0),
       ('By / Through', true, 1),
       ('Toward', false, 2),
       ('With', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 332 (article gender) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which article goes with "université"?',
         '"L''université" — "le" elides before vowel-initial nouns. Underlying is "la" because "université" is feminine.',
         'L''',
         '"L''université" — "la" elides before vowel.',
         332
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le', false, 0),
       ('La', false, 1),
       ('L''', true, 2),
       ('Les', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 333 (gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the correct article for "problème"?',
         '"Le problème" — masculine despite ending in "e" (Greek-origin words ending in -ème are usually masc.).',
         'Le',
         '"Problème" is masculine: "le problème".',
         333
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('La', false, 0),
       ('Le', true, 1),
       ('Les', false, 2),
       ('L''', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 334 (gender) ------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What gender is "le travail"?',
         'Masculine. The plural is the irregular "les travaux".',
         'Masculine',
         '"Travail" is masculine; plural "travaux".',
         334
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Masculine', true, 0),
       ('Feminine', false, 1),
       ('Neuter', false, 2),
       ('Both', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 335 (countries gender) ---------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which gender is "le Mexique"?',
         'Masculine — "le Mexique" is one of few countries ending in "e" that are masc.',
         'Masculine',
         '"Le Mexique" is masc. (exception).',
         335
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Feminine', false, 0),
       ('Masculine', true, 1),
       ('No gender', false, 2),
       ('Either', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 336 (preposition à) -----------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I''m going to school" in French?',
         '"Je vais à l''école" — "à" + definite article elides before vowel.',
         'Je vais à l''école',
         '"To school" = "à l''école".',
         336
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je vais au école', false, 0),
       ('Je vais à école', false, 1),
       ('Je vais à l''école', true, 2),
       ('Je vais en école', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 337 (preposition au) ---------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I''m going to the cinema" in French?',
         '"Je vais au cinéma" — "à + le" = "au".',
         'Je vais au cinéma',
         '"To the cinema" = "au cinéma".',
         337
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je vais à le cinéma', false, 0),
       ('Je vais au cinéma', true, 1),
       ('Je vais en cinéma', false, 2),
       ('Je vais dans cinéma', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 338 (preposition aux) --------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Il parle ___ enfants".',
         '"Aux enfants" — à + les = aux.',
         'aux',
         '"À + les" → "aux".',
         338
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('à les', false, 0),
       ('au', false, 1),
       ('aux', true, 2),
       ('à le', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 339 (preposition en + transport) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "by car" in French?',
         '"En voiture" — "en" is used for transportation you enter; "à pied" (on foot), "à vélo" (by bike).',
         'En voiture',
         '"By car" = "en voiture".',
         339
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Par voiture', false, 0),
       ('À voiture', false, 1),
       ('Dans voiture', false, 2),
       ('En voiture', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 340 (preposition à + transport) ----------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "on foot" in French?',
         '"À pied" — "à" for transport you don''t enter (foot, bike, horse).',
         'À pied',
         '"On foot" = "à pied".',
         340
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('À pied', true, 0),
       ('En pied', false, 1),
       ('Par pied', false, 2),
       ('De pied', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 341 (article de) ------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Je viens ___ Canada".',
         '"Du Canada" — masc. country, "de + le" = "du".',
         'du',
         '"From Canada" = "du Canada".',
         341
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('de', false, 0),
       ('de la', false, 1),
       ('du', true, 2),
       ('des', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 342 (article de + fem) ------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Je viens ___ France".',
         '"De France" — for feminine countries, "de" (no article).',
         'de',
         '"From France" = "de France".',
         342
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('du', false, 0),
       ('de', true, 1),
       ('de la', false, 2),
       ('des', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 343 (preposition en + season) -----------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "in winter" in French?',
         '"En hiver" — "en" for seasons except "au printemps".',
         'En hiver',
         '"In winter" = "en hiver"; but "au printemps".',
         343
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Au hiver', false, 0),
       ('Dans hiver', false, 1),
       ('En hiver', true, 2),
       ('À hiver', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 344 (preposition au + season) ----------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "in spring" in French?',
         '"Au printemps" — exception: spring uses "au" instead of "en".',
         'Au printemps',
         '"In spring" = "au printemps" (exception).',
         344
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Au printemps', true, 0),
       ('En printemps', false, 1),
       ('Dans printemps', false, 2),
       ('À printemps', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 345 (preposition pendant) -------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "pendant" mean?',
         '"Pendant" = "during" / "for" (duration).',
         'During / For (duration)',
         '"Pendant" = "during" / "for".',
         345
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Before', false, 0),
       ('After', false, 1),
       ('Beside', false, 2),
       ('During / For', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 346 (preposition depuis) -------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "depuis" mean?',
         '"Depuis" = "since" / "for" (time still in progress). Used with present tense.',
         'Since / For (ongoing)',
         '"Depuis" = "since" / "for" (still ongoing).',
         346
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Since / For (still ongoing)', true, 0),
       ('Soon', false, 1),
       ('Then', false, 2),
       ('Tomorrow', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 347 (preposition avant/après) ------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "avant" mean?',
         '"Avant" = "before". Opposite: "après" (after).',
         'Before',
         '"Avant" = "before"; "après" = "after".',
         347
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('After', false, 0),
       ('Before', true, 1),
       ('During', false, 2),
       ('Since', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 348 (preposition près de) --------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "près de" mean?',
         '"Près de" = "near" / "close to". Always followed by "de".',
         'Near (close to)',
         '"Près de" = "near".',
         348
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Far from', false, 0),
       ('Near (close to)', true, 1),
       ('Inside of', false, 2),
       ('In front of', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 349 (preposition loin de) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "loin de" mean?',
         '"Loin de" = "far from".',
         'Far from',
         '"Loin de" = "far from".',
         349
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Near', false, 0),
       ('Beside', false, 1),
       ('Far from', true, 2),
       ('In front of', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 350 (idiom) --------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "c''est la vie" mean?',
         '"C''est la vie" literally "it''s life" — an idiomatic acceptance of fate ("that''s life").',
         'That''s life',
         '"C''est la vie" = "that''s life".',
         350
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I love life', false, 0),
       ('That''s life', true, 1),
       ('It''s alive', false, 2),
       ('Life is good', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 351 (idiom) ------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "il pleut des cordes" mean?',
         '"Il pleut des cordes" literally "it''s raining ropes" = "it''s pouring".',
         'It''s pouring rain',
         '"Il pleut des cordes" = "it''s pouring".',
         351
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s raining ropes (literally)', false, 0),
       ('It''s raining cats and dogs / pouring', true, 1),
       ('Ropes are wet', false, 2),
       ('It''s drizzling', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 352 (idiom) ------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "avoir le cafard" mean?',
         '"Avoir le cafard" literally "to have the cockroach" = to feel blue / depressed.',
         'To feel down / blue',
         '"Avoir le cafard" = "to feel down".',
         352
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To be excited', false, 0),
       ('To be sleepy', false, 1),
       ('To feel down / blue', true, 2),
       ('To have an infestation', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 353 (courtesy) --------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "excusez-moi" mean?',
         '"Excusez-moi" = "excuse me" (formal). The informal is "excuse-moi".',
         'Excuse me (formal)',
         '"Excusez-moi" = formal "excuse me".',
         353
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Excuse me', true, 0),
       ('I''m sorry', false, 1),
       ('Please', false, 2),
       ('Thank you', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 354 (courtesy) --------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "désolé(e)" mean?',
         '"Désolé(e)" = "sorry" (the "e" is added if the speaker is female).',
         'Sorry',
         '"Désolé(e)" = "sorry".',
         354
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sorry', true, 0),
       ('Welcome', false, 1),
       ('Pleased', false, 2),
       ('Excited', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 355 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "actuellement" mean? (faux ami)',
         'False cognate: "actuellement" = "currently" / "right now", NOT "actually".',
         'Currently',
         '"Actuellement" = "currently" (false friend!).',
         355
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Actually', false, 0),
       ('Currently', true, 1),
       ('In fact', false, 2),
       ('Actively', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 356 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "éventuellement" mean? (faux ami)',
         'False cognate: "éventuellement" = "possibly" / "perhaps", NOT "eventually". "Eventually" = "finalement".',
         'Possibly',
         '"Éventuellement" = "possibly" (false friend!).',
         356
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eventually', false, 0),
       ('In the end', false, 1),
       ('Possibly', true, 2),
       ('Soon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 357 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "sensible" mean in French? (faux ami)',
         '"Sensible" in French = "sensitive". "Sensible" (Eng.) translates to "raisonnable".',
         'Sensitive',
         '"Sensible" = "sensitive" (false friend!).',
         357
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Reasonable', false, 0),
       ('Practical', false, 1),
       ('Sane', false, 2),
       ('Sensitive', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 358 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "déception" mean in French? (faux ami)',
         '"Déception" = "disappointment". English "deception" = "tromperie".',
         'Disappointment',
         '"Déception" = "disappointment" (false friend!).',
         358
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Deception (lying)', false, 0),
       ('Disappointment', true, 1),
       ('Decision', false, 2),
       ('Description', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 359 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "librairie" mean in French? (faux ami)',
         '"Librairie" = "bookstore". A "library" is "bibliothèque".',
         'Bookstore',
         '"Librairie" = "bookstore" (false friend!).',
         359
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Library', false, 0),
       ('Bookstore', true, 1),
       ('Liquor store', false, 2),
       ('Bookshelf', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 360 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ça suffit" mean?',
         '"Ça suffit" = "that''s enough".',
         'That''s enough',
         '"Ça suffit" = "that''s enough".',
         360
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('That''s enough', true, 0),
       ('That''s wrong', false, 1),
       ('I agree', false, 2),
       ('I''m hungry', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 361 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ne t''inquiète pas" mean?',
         '"Ne t''inquiète pas" = "don''t worry" (informal).',
         'Don''t worry',
         '"Ne t''inquiète pas" = "don''t worry".',
         361
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Don''t leave', false, 0),
       ('Don''t worry', true, 1),
       ('Don''t look', false, 2),
       ('Stay calm', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 362 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "bien sûr" mean?',
         '"Bien sûr" = "of course".',
         'Of course',
         '"Bien sûr" = "of course".',
         362
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Maybe', false, 0),
       ('Of course', true, 1),
       ('Very well', false, 2),
       ('Indeed', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 363 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "peut-être" mean?',
         '"Peut-être" = "maybe" / "perhaps".',
         'Maybe',
         '"Peut-être" = "maybe".',
         363
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Surely', false, 0),
       ('Maybe', true, 1),
       ('Never', false, 2),
       ('Already', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 364 (idiom) -----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "tomber dans les pommes" mean?',
         '"Tomber dans les pommes" literally "to fall into the apples" = to faint.',
         'To faint',
         '"Tomber dans les pommes" = "to faint".',
         364
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To faint', true, 0),
       ('To trip', false, 1),
       ('To make pies', false, 2),
       ('To go to the orchard', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 365 (idiom) -----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "coûter les yeux de la tête" mean?',
         '"Coûter les yeux de la tête" = "to cost an arm and a leg" (lit. "to cost the eyes of the head").',
         'To cost a fortune',
         '"Coûter les yeux de la tête" = "to cost a fortune".',
         365
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To be free', false, 0),
       ('To cost a fortune', true, 1),
       ('To break easily', false, 2),
       ('To be heavy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 366 (greeting) --------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "enchanté(e)" mean?',
         '"Enchanté(e)" = "nice to meet you" (literally "enchanted").',
         'Nice to meet you',
         '"Enchanté(e)" = "nice to meet you".',
         366
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I''m bored', false, 0),
       ('I''m busy', false, 1),
       ('Nice to meet you', true, 2),
       ('See you later', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 367 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "à tout à l''heure" mean?',
         '"À tout à l''heure" = "see you in a bit" (later today).',
         'See you in a bit',
         '"À tout à l''heure" = "see you later today".',
         367
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('See you in a bit (today)', true, 0),
       ('Until next year', false, 1),
       ('Right now', false, 2),
       ('Goodbye forever', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 368 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "à bientôt" mean?',
         '"À bientôt" = "see you soon".',
         'See you soon',
         '"À bientôt" = "see you soon".',
         368
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('See you yesterday', false, 0),
       ('See you soon', true, 1),
       ('Goodbye forever', false, 2),
       ('See you tonight', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 369 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "à demain" mean?',
         '"À demain" = "see you tomorrow".',
         'See you tomorrow',
         '"À demain" = "see you tomorrow".',
         369
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('See you yesterday', false, 0),
       ('Until next time', false, 1),
       ('See you tomorrow', true, 2),
       ('See you in a week', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 370 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "je ne sais pas" mean?',
         '"Je ne sais pas" = "I don''t know" (savoir = to know).',
         'I don''t know',
         '"Je ne sais pas" = "I don''t know".',
         370
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I don''t know', true, 0),
       ('I don''t want', false, 1),
       ('I can''t', false, 2),
       ('I''m not here', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 371 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "tout à fait" mean?',
         '"Tout à fait" = "exactly" / "absolutely".',
         'Exactly / Absolutely',
         '"Tout à fait" = "exactly".',
         371
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Not at all', false, 0),
       ('Exactly / Absolutely', true, 1),
       ('Almost', false, 2),
       ('Maybe', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 372 (idiom) -----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "donner sa langue au chat" mean?',
         'Literally "to give one''s tongue to the cat" = to give up trying to guess.',
         'To give up guessing',
         '"Donner sa langue au chat" = "I give up (guessing)".',
         372
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To feed the cat', false, 0),
       ('To remain silent', false, 1),
       ('To give up guessing', true, 2),
       ('To talk too much', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 373 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "bon appétit" mean?',
         '"Bon appétit" = wishing someone a good meal — said before eating.',
         'Enjoy your meal',
         '"Bon appétit" = "enjoy your meal".',
         373
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Enjoy your meal', true, 0),
       ('Good morning', false, 1),
       ('Bon voyage', false, 2),
       ('Have fun', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 374 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "à votre santé" mean?',
         '"À votre santé" = "to your health" — toast (cheers!).',
         'To your health (cheers)',
         '"À votre santé" = "cheers!" / "to your health".',
         374
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Welcome', false, 0),
       ('Goodbye', false, 1),
       ('To your health (cheers)', true, 2),
       ('See you later', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 375 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "n''importe quoi" mean?',
         '"N''importe quoi" = "anything" or, idiomatically, "nonsense".',
         'Anything / Nonsense',
         '"N''importe quoi" = "anything" / "nonsense".',
         375
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Whoever', false, 0),
       ('Anything / Nonsense', true, 1),
       ('Wherever', false, 2),
       ('Whenever', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 376 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "qu''est-ce que c''est ?" mean?',
         '"Qu''est-ce que c''est ?" = "What is it?" / "What is that?"',
         'What is it?',
         '"Qu''est-ce que c''est ?" = "What is it?".',
         376
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Where is it?', false, 0),
       ('Why is it?', false, 1),
       ('Who is it?', false, 2),
       ('What is it?', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 377 (idiom) -----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "poser un lapin" mean?',
         '"Poser un lapin" literally "to lay a rabbit" = to stand someone up.',
         'To stand someone up',
         '"Poser un lapin" = "to stand someone up".',
         377
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To stand someone up', true, 0),
       ('To buy a pet', false, 1),
       ('To go hunting', false, 2),
       ('To prepare dinner', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 378 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "à mon avis" mean?',
         '"À mon avis" = "in my opinion".',
         'In my opinion',
         '"À mon avis" = "in my opinion".',
         378
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('At my house', false, 0),
       ('In my opinion', true, 1),
       ('Of course', false, 2),
       ('To my friend', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 379 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ça dépend" mean?',
         '"Ça dépend" = "it depends".',
         'It depends',
         '"Ça dépend" = "it depends".',
         379
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s done', false, 0),
       ('It depends', true, 1),
       ('It''s easy', false, 2),
       ('It''s simple', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 380 (greeting) --------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "comment vous appelez-vous ?" mean?',
         '"Comment vous appelez-vous ?" = "What''s your name?" (formal). Literally "How do you call yourself?".',
         'What''s your name? (formal)',
         '"Comment vous appelez-vous ?" = "What''s your name?".',
         380
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('How are you?', false, 0),
       ('What''s your name? (formal)', true, 1),
       ('Where do you live?', false, 2),
       ('How old are you?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 381 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I am tired" to French.',
         '"Je suis fatigué(e)" — état (state) with être. Add "e" for feminine speaker.',
         'Je suis fatigué(e)',
         '"I am tired" = "je suis fatigué(e)".',
         381
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai fatigué', false, 0),
       ('Je suis fatigué', true, 1),
       ('Je fatigue', false, 2),
       ('J''ai sommeil seulement', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 382 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I''m thirsty" to French.',
         '"J''ai soif" — French uses "avoir" with sensations.',
         'J''ai soif',
         '"I''m thirsty" = "j''ai soif".',
         382
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai faim', false, 0),
       ('Je suis soif', false, 1),
       ('J''ai soif', true, 2),
       ('Je soif', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 383 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you express age in French?',
         '"J''ai 25 ans" — use "avoir + number + ans". Literally "I have 25 years".',
         'Avoir + number + ans',
         'Age uses avoir: "J''ai X ans".',
         383
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Être + age', false, 0),
       ('Faire + age', false, 1),
       ('Avoir + number + ans', true, 2),
       ('Aller + age', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 384 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I''m hot" (temperature) to French.',
         '"J''ai chaud" — sensation with avoir.',
         'J''ai chaud',
         '"I''m hot" = "j''ai chaud".',
         384
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je suis chaud', false, 0),
       ('Il fait chaud à moi', false, 1),
       ('Je chaud', false, 2),
       ('J''ai chaud', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 385 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I''m afraid" to French.',
         '"J''ai peur" — sensation/emotion with avoir.',
         'J''ai peur',
         '"I''m afraid" = "j''ai peur".',
         385
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''ai peur', true, 0),
       ('Je suis peur', false, 1),
       ('Je peur', false, 2),
       ('Je crains seulement', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 386 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ça marche" mean?',
         '"Ça marche" literally "it walks" = "it works" / "okay, sounds good".',
         'It works / Okay',
         '"Ça marche" = "it works" / "okay".',
         386
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It walks', false, 0),
       ('It works / Okay', true, 1),
       ('It''s broken', false, 2),
       ('Try again', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 387 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "à peu près" mean?',
         '"À peu près" = "approximately" / "more or less".',
         'Approximately',
         '"À peu près" = "approximately".',
         387
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Near me', false, 0),
       ('A little bit', false, 1),
       ('Approximately', true, 2),
       ('Exactly', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 388 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "assister" mean in French? (faux ami)',
         '"Assister" = "to attend". To assist = "aider".',
         'To attend',
         '"Assister" = "to attend" (false friend!).',
         388
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To assist', false, 0),
       ('To attend', true, 1),
       ('To insist', false, 2),
       ('To resist', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 389 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "passer un examen" mean? (faux ami)',
         '"Passer un examen" = to TAKE an exam (not pass it!). To pass = "réussir".',
         'To take an exam',
         '"Passer un examen" = "to take" (not pass) an exam.',
         389
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To pass an exam', false, 0),
       ('To take an exam', true, 1),
       ('To fail an exam', false, 2),
       ('To study an exam', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 390 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "rester" mean in French? (faux ami)',
         '"Rester" = "to stay" / "to remain". To rest = "se reposer".',
         'To stay',
         '"Rester" = "to stay" (false friend!).',
         390
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To rest', false, 0),
       ('To run', false, 1),
       ('To stay', true, 2),
       ('To restart', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 391 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "demander" mean? (faux ami)',
         '"Demander" = "to ask". To demand = "exiger".',
         'To ask',
         '"Demander" = "to ask" (false friend!).',
         391
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To ask', true, 0),
       ('To demand', false, 1),
       ('To require', false, 2),
       ('To insist', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 392 (false cognate) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "réaliser" usually mean? (faux ami)',
         '"Réaliser" = "to achieve" / "to make come true". For "to realize" (become aware), use "se rendre compte".',
         'To achieve / to fulfill',
         '"Réaliser" = "to achieve" (false friend!).',
         392
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To realize (become aware)', false, 0),
       ('To rewind', false, 1),
       ('To achieve / fulfill', true, 2),
       ('To recognize', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 393 (idiom) -----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "avoir un coup de foudre" mean?',
         'Literally "to have a strike of lightning" = "to fall in love at first sight".',
         'Love at first sight',
         '"Coup de foudre" = "love at first sight".',
         393
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To be struck', false, 0),
       ('To be shocked', false, 1),
       ('To get angry', false, 2),
       ('Love at first sight', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 394 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "je m''en fiche" (familiar) mean?',
         '"Je m''en fiche" = "I don''t care" (informal, mildly rude).',
         'I don''t care',
         '"Je m''en fiche" = "I don''t care".',
         394
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I don''t care', true, 0),
       ('I don''t know', false, 1),
       ('I''m sorry', false, 2),
       ('I''m happy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 395 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "je vous en prie" mean?',
         '"Je vous en prie" = "you''re welcome" (formal) or "please, go ahead".',
         'You''re welcome (formal)',
         '"Je vous en prie" = formal "you''re welcome".',
         395
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I''m praying', false, 0),
       ('You''re welcome (formal)', true, 1),
       ('Please pray', false, 2),
       ('See you soon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 396 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "n''est-ce pas ?" mean?',
         '"N''est-ce pas ?" = "isn''t that so?" / "right?" — a tag question.',
         'Isn''t it? / Right?',
         '"N''est-ce pas ?" = "right?" (tag question).',
         396
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Why not?', false, 0),
       ('Isn''t it? / Right?', true, 1),
       ('What''s that?', false, 2),
       ('How is it?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 397 (phrase) ----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "bof" mean (colloquial)?',
         '"Bof" expresses indifference — like "meh" in English.',
         'Meh',
         '"Bof" = "meh" (indifference).',
         397
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Yes!', false, 0),
       ('No!', false, 1),
       ('Meh (indifferent)', true, 2),
       ('Wow!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 398 (idiom) -----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "avoir la pêche" mean?',
         '"Avoir la pêche" literally "to have the peach" = "to be in great shape" / energetic.',
         'To feel great',
         '"Avoir la pêche" = "to feel great".',
         398
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To feel great / energetic', true, 0),
       ('To eat fruit', false, 1),
       ('To be sour', false, 2),
       ('To be tired', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 399 (idiom) -----------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "il n''y a pas de quoi" mean?',
         '"Il n''y a pas de quoi" = "you''re welcome" / "don''t mention it".',
         'You''re welcome / Don''t mention it',
         '"Il n''y a pas de quoi" = "don''t mention it".',
         399
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I don''t have anything', false, 0),
       ('What''s the matter?', false, 1),
       ('You''re welcome / Don''t mention it', true, 2),
       ('No problem here', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 400 (subject pronouns) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which subject pronoun means "we"?',
         '"Nous" — first person plural subject pronoun. In casual speech, "on" is often used instead.',
         'Nous',
         '"Nous" = "we" (formal/standard).',
         400
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vous', false, 0),
       ('Nous', true, 1),
       ('Ils', false, 2),
       ('Elles', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 401 (subject pronouns) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "on" typically mean?',
         '"On" = "one" / "we" (informal) / "people in general". Takes 3rd singular verb.',
         'One / We (informal)',
         '"On" = "one"/"we" (informal); always takes 3rd sing. verb.',
         401
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I', false, 0),
       ('They (only)', false, 1),
       ('One / We (informal)', true, 2),
       ('You (formal)', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 402 (direct object pronoun) ------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace the direct object: "Je mange la pomme" →',
         '"Je la mange" — "la" replaces "la pomme" (direct object, fem. sing.).',
         'Je la mange',
         'Direct object "la pomme" → "la"; goes before verb.',
         402
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je mange la', false, 0),
       ('Je la mange', true, 1),
       ('Je lui mange', false, 2),
       ('Je en mange', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 403 (direct object pronoun) ------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace the direct object: "Je vois le chien" →',
         '"Je le vois" — "le" for masc. direct object.',
         'Je le vois',
         'Masc. direct object pronoun is "le".',
         403
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je le vois', true, 0),
       ('Je lui vois', false, 1),
       ('Je vois le', false, 2),
       ('Je voit', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 404 (direct object pronoun) ------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace the direct object: "Tu aimes les fleurs" →',
         '"Tu les aimes" — "les" for plural direct objects (any gender).',
         'Tu les aimes',
         'Plural direct object pronoun is "les".',
         404
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu aimes les', false, 0),
       ('Tu leur aimes', false, 1),
       ('Tu les aimes', true, 2),
       ('Tu en aimes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 405 (indirect object pronoun) ----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace the indirect object: "Je parle à Marie" →',
         '"Je lui parle" — "lui" replaces "à + person" (indirect object, sing.).',
         'Je lui parle',
         'Indirect object pronoun (sing.) is "lui".',
         405
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je la parle', false, 0),
       ('Je lui parle', true, 1),
       ('Je leur parle', false, 2),
       ('Je parle à elle', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 406 (indirect object pronoun) ----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the plural indirect object pronoun?',
         '"Leur" — for indirect objects (plural, both genders). Note: not "leurs".',
         'Leur',
         'Plural indirect object pronoun is "leur".',
         406
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Les', false, 0),
       ('Leurs', false, 1),
       ('Leur', true, 2),
       ('Lui', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 407 (pronoun y) ------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the pronoun "y" replace?',
         '"Y" replaces "à + place / thing" — typically a location. "Je vais à Paris" → "J''y vais".',
         '"à + thing/place" (often location)',
         '"Y" replaces "à + place/thing".',
         407
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('"de + thing"', false, 0),
       ('"à + person"', false, 1),
       ('"à + thing/place"', true, 2),
       ('Direct objects', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 408 (pronoun en) -----------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the pronoun "en" replace?',
         '"En" replaces "de + thing" or a partitive/quantity. "Je mange du pain" → "J''en mange".',
         '"de + thing" or partitive',
         '"En" replaces "de + thing" / partitive.',
         408
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('"de + thing" or partitive', true, 0),
       ('"à + place"', false, 1),
       ('Subject', false, 2),
       ('Reflexive', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 409 (pronoun en) ----------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "Je veux trois pommes" →',
         '"J''en veux trois" — "en" replaces the noun; the quantity stays.',
         'J''en veux trois',
         'With a quantity, "en" replaces the noun: "j''en veux trois".',
         409
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je les veux trois', false, 0),
       ('Je y veux trois', false, 1),
       ('J''en veux trois', true, 2),
       ('Je veux trois en', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 410 (reflexive pronoun) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the reflexive pronoun for "je"?',
         '"Me" — "je me lave" = "I wash myself".',
         'Me',
         'Reflexive for "je" is "me".',
         410
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Te', false, 0),
       ('Me', true, 1),
       ('Se', false, 2),
       ('Nous', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 411 (reflexive pronoun) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the reflexive pronoun for "il" / "elle"?',
         '"Se" — "il se lave" / "elle se lave". Always "se" for 3rd person reflexive (singular and plural).',
         'Se',
         'Reflexive for "il/elle/ils/elles" is "se".',
         411
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Le', false, 0),
       ('Lui', false, 1),
       ('Se', true, 2),
       ('Soi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 412 (object pronoun placement) ---------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Where do object pronouns go in standard sentences?',
         'Before the conjugated verb. "Je le vois", not "Je vois le".',
         'Before the conjugated verb',
         'Object pronouns go BEFORE the conjugated verb.',
         412
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Before the conjugated verb', true, 0),
       ('After the conjugated verb', false, 1),
       ('At end of sentence', false, 2),
       ('Anywhere', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 413 (subject pronoun) ------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the formal singular "you"?',
         '"Vous" is used both for formal singular ("you, sir") and any plural "you".',
         'Vous',
         'Formal "you" (sing.) is "vous".',
         413
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tu', false, 0),
       ('Vous', true, 1),
       ('Toi', false, 2),
       ('On', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 414 (object pronoun negation) ----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you negate "Je le vois"?',
         '"Je ne le vois pas" — "ne" before pronoun, "pas" after verb.',
         'Je ne le vois pas',
         'Negation wraps the pronoun + verb: "ne le vois pas".',
         414
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je ne vois pas le', false, 0),
       ('Je ne le vois pas', true, 1),
       ('Je le ne vois pas', false, 2),
       ('Je ne pas le vois', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 415 (object pronoun imperative) --------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In a positive command, where does the object pronoun go?',
         'In a positive command, it follows the verb with a hyphen: "Regarde-le!". In a negative command, it stays before: "Ne le regarde pas!".',
         'After verb with hyphen (positive command)',
         'Positive command: pronoun after verb with hyphen.',
         415
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Before the verb', false, 0),
       ('After verb with hyphen', true, 1),
       ('Same position', false, 2),
       ('It''s dropped', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 416 (object pronoun order) -------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In "Je le lui donne", what does each pronoun do?',
         '"Le" = direct object (it), "lui" = indirect object (to him/her). Order: me/te/se/nous/vous → le/la/les → lui/leur → y → en.',
         'le = direct object; lui = indirect object',
         '"Le" direct, "lui" indirect; direct comes before indirect (3rd person).',
         416
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Both direct', false, 0),
       ('Both indirect', false, 1),
       ('le = direct, lui = indirect', true, 2),
       ('le = subject, lui = direct', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 417 (pronoun y location) ---------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "Je vais à la plage" →',
         '"J''y vais" — "y" replaces "à la plage" (location).',
         'J''y vais',
         '"À la plage" → "y": "j''y vais".',
         417
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je la vais', false, 0),
       ('Je en vais', false, 1),
       ('J''y vais', true, 2),
       ('Je vais y', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 418 (stressed pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the stressed (disjunctive) pronoun for "je"?',
         '"Moi" — used after prepositions, for emphasis, after c''est.',
         'Moi',
         'Stressed pronoun for "je" is "moi".',
         418
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Me', false, 0),
       ('Moi', true, 1),
       ('Je', false, 2),
       ('Mon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 419 (stressed pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the stressed pronoun for "tu"?',
         '"Toi" — used after prepositions, in emphasis. "Avec toi" = "with you".',
         'Toi',
         'Stressed pronoun for "tu" is "toi".',
         419
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Te', false, 0),
       ('Tu', false, 1),
       ('Ton', false, 2),
       ('Toi', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 420 (stressed pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "with him"?',
         '"Avec lui" — "lui" is the stressed (and indirect) pronoun.',
         'Avec lui',
         '"With him" is "avec lui".',
         420
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Avec il', false, 0),
       ('Avec le', false, 1),
       ('Avec lui', true, 2),
       ('Avec le-même', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 421 (stressed pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "with her"?',
         '"Avec elle" — "elle" is also the stressed form.',
         'Avec elle',
         '"With her" is "avec elle".',
         421
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Avec elle', true, 0),
       ('Avec la', false, 1),
       ('Avec lui', false, 2),
       ('Avec elles', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 422 (pronoun en) -----------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "Je viens de Paris" →',
         '"J''en viens" — "en" replaces "de + place" for origin.',
         'J''en viens',
         '"De Paris" → "en": "j''en viens".',
         422
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je le viens', false, 0),
       ('Je y viens', false, 1),
       ('J''en viens', true, 2),
       ('Je viens en', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 423 (reflexive pronoun) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "se laver" for "nous"?',
         '"Nous nous lavons" — reflexive pronoun for "nous" is "nous".',
         'Nous nous lavons',
         '"We wash ourselves" is "nous nous lavons".',
         423
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nous lavons', false, 0),
       ('Nous nous lavons', true, 1),
       ('Nous se lavons', false, 2),
       ('Nous me lavons', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 424 (reflexive verb) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se réveiller" mean?',
         '"Se réveiller" = "to wake up" (oneself).',
         'To wake up',
         '"Se réveiller" = "to wake up".',
         424
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To sleep', false, 0),
       ('To wake up', true, 1),
       ('To get dressed', false, 2),
       ('To eat', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 425 (reflexive verb) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "s''habiller" mean?',
         '"S''habiller" = "to get dressed".',
         'To get dressed',
         '"S''habiller" = "to get dressed".',
         425
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To shower', false, 0),
       ('To wake up', false, 1),
       ('To eat', false, 2),
       ('To get dressed', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 426 (object pronoun) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "J''ai vu Marie" →',
         '"Je l''ai vue" — direct object pronoun "la" elides before vowel; past participle agrees with preceding direct object (Marie, fem. sing.).',
         'Je l''ai vue',
         'Direct object "la" elides; participle agrees with preceding direct object.',
         426
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je la ai vu', false, 0),
       ('Je l''ai vu', false, 1),
       ('Je l''ai vue', true, 2),
       ('J''ai la vue', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 427 (object pronoun) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace the indirect object: "Je téléphone à mes parents" →',
         '"Je leur téléphone" — "leur" replaces "à + plural people".',
         'Je leur téléphone',
         '"Téléphoner à + people" → indirect object: "leur".',
         427
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je les téléphone', false, 0),
       ('Je leur téléphone', true, 1),
       ('Je leurs téléphone', false, 2),
       ('Je téléphone leur', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 428 (reflexive in command) -------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Wake up!" (informal command)?',
         '"Réveille-toi !" — reflexive "toi" (stressed form) after the verb in a positive command.',
         'Réveille-toi !',
         '"Wake up!" (informal) = "réveille-toi !".',
         428
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Te réveille !', false, 0),
       ('Réveille-toi !', true, 1),
       ('Réveille toi !', false, 2),
       ('Toi réveille !', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 429 (pronoun y) -----------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "Je pense à mon travail" →',
         '"J''y pense" — "y" replaces "à + thing/abstract", here a job.',
         'J''y pense',
         '"À + thing" → "y": "j''y pense".',
         429
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je le pense', false, 0),
       ('J''y pense', true, 1),
       ('J''en pense', false, 2),
       ('Je lui pense', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 430 (object pronoun) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "Je donne le livre à Paul" →',
         '"Je le lui donne" — "le" (direct) + "lui" (indirect, 3rd person).',
         'Je le lui donne',
         '"Le lui donne" — direct before indirect (3rd person).',
         430
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je lui le donne', false, 0),
       ('Je le lui donne', true, 1),
       ('Je lui donne le', false, 2),
       ('Je le donne lui', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 431 (reflexive verb) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se souvenir de" mean?',
         '"Se souvenir de" = "to remember". A pronominal verb requiring "de".',
         'To remember',
         '"Se souvenir de" = "to remember".',
         431
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To remember', true, 0),
       ('To forget', false, 1),
       ('To dream', false, 2),
       ('To think', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 432 (reflexive verb) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "s''appeler" mean?',
         '"S''appeler" = "to be called" / "to call oneself". "Je m''appelle Paul" = "My name is Paul".',
         'To be called',
         '"S''appeler" = "to be called".',
         432
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To telephone', false, 0),
       ('To be called', true, 1),
       ('To shout', false, 2),
       ('To call others', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 433 (subject pronoun) ------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which subject pronoun is used for an all-female "they"?',
         '"Elles" — feminine plural "they". "Ils" is used for mixed or all-male groups.',
         'Elles',
         'All-female "they" = "elles"; mixed/male = "ils".',
         433
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ils', false, 0),
       ('Elles', true, 1),
       ('Elle', false, 2),
       ('Eux', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 434 (object pronoun) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "Il me donne le cadeau" →',
         '"Il me le donne" — me (indirect) + le (direct). Order: me/te/se/nous/vous before le/la/les.',
         'Il me le donne',
         '"Me le donne" — me/te/se/nous/vous come before le/la/les.',
         434
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il le me donne', false, 0),
       ('Il me le donne', true, 1),
       ('Il le donne me', false, 2),
       ('Il me donne le', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 435 (pronoun y or en) ------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "J''ai besoin de ce livre" →',
         '"J''en ai besoin" — "avoir besoin de" + thing → "en".',
         'J''en ai besoin',
         '"De + thing" → "en": "j''en ai besoin".',
         435
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('J''y ai besoin', false, 0),
       ('Je le ai besoin', false, 1),
       ('J''en ai besoin', true, 2),
       ('J''ai besoin en', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 436 (relative pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which relative pronoun is the subject of its clause?',
         '"Qui" is the subject relative pronoun. "Que" is the direct object.',
         'Qui',
         '"Qui" = subject; "que" = direct object (relative pronouns).',
         436
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Qui', true, 0),
       ('Que', false, 1),
       ('Dont', false, 2),
       ('Où', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 437 (relative pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which relative pronoun replaces "de + something"?',
         '"Dont" replaces "de + thing/person" in a relative clause. "Le livre dont je parle" = "The book of which I''m speaking".',
         'Dont',
         '"Dont" replaces "de + thing" in relative clauses.',
         437
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Qui', false, 0),
       ('Que', false, 1),
       ('Où', false, 2),
       ('Dont', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 438 (relative pronoun où) --------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the relative pronoun "où" replace?',
         '"Où" replaces a place or a time. "La ville où je suis né" = "the city where I was born".',
         'Place or time',
         '"Où" = "where" or "when" (relative pronoun).',
         438
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Place or time', true, 0),
       ('Subject', false, 1),
       ('Direct object', false, 2),
       ('Possession', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 439 (reflexive past) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She woke up" (passé composé).',
         '"Elle s''est réveillée" — pronominal verbs use "être"; agreement with feminine subject (-e).',
         'Elle s''est réveillée',
         'Pronominal verbs use être in passé composé; agreement with subject.',
         439
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Elle a réveillé', false, 0),
       ('Elle s''est réveillé', false, 1),
       ('Elle s''est réveillée', true, 2),
       ('Elle se réveillait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 440 (stressed pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "It''s me!" in French?',
         '"C''est moi !" — use the stressed pronoun after "c''est".',
         'C''est moi !',
         '"It''s me!" = "c''est moi !".',
         440
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('C''est je !', false, 0),
       ('C''est me !', false, 1),
       ('Je suis !', false, 2),
       ('C''est moi !', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 441 (stressed pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the stressed pronoun for "ils"?',
         '"Eux" — used after prepositions for masc. plural. "Avec eux" = "with them".',
         'Eux',
         'Stressed for "ils" is "eux".',
         441
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eux', true, 0),
       ('Ils', false, 1),
       ('Leur', false, 2),
       ('Lui', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 442 (stressed pronoun) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the stressed pronoun for "elles"?',
         '"Elles" — same form. "Avec elles" = "with them" (fem. pl.).',
         'Elles',
         'Stressed for "elles" is "elles" (same).',
         442
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eux', false, 0),
       ('Leurs', false, 1),
       ('Elles', true, 2),
       ('La', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 443 (object pronoun double) ------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Replace: "Il y a des fleurs" — with object pronoun.',
         '"Il y en a" — "des fleurs" replaced by "en" (partitive).',
         'Il y en a',
         '"Il y en a" — combine "y" + "en".',
         443
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il y a en', false, 0),
       ('Il en y a', false, 1),
       ('Il y les a', false, 2),
       ('Il y en a', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 444 (reflexive present) ---------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "se lever" for "je"?',
         '"Je me lève" — note grave accent in stem-change.',
         'Je me lève',
         '"I get up" is "je me lève".',
         444
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je me leve', false, 0),
       ('Je me lève', true, 1),
       ('Je me léve', false, 2),
       ('Je lève', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 445 (interrogative pronoun) -----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Who?" in French?',
         '"Qui ?" — "qui" is the interrogative for people. "Qui parle ?" = "Who is speaking?".',
         'Qui ?',
         '"Who?" = "qui ?".',
         445
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Qui ?', true, 0),
       ('Quoi ?', false, 1),
       ('Que ?', false, 2),
       ('Où ?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 446 (interrogative pronoun) -----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "What?" (standalone) in French?',
         '"Quoi ?" — standalone. Within a sentence as direct object, use "que" or "qu''est-ce que".',
         'Quoi ?',
         '"What?" (alone) = "quoi ?".',
         446
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Qui ?', false, 0),
       ('Quoi ?', true, 1),
       ('Où ?', false, 2),
       ('Quand ?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 447 (interrogative quel) --------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct form: "___ couleur préfères-tu ?"',
         '"Quelle" — feminine sing. interrogative adjective agreeing with "couleur" (fem.).',
         'Quelle',
         '"Quelle couleur" — feminine sing. "quelle".',
         447
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quel', false, 0),
       ('Quels', false, 1),
       ('Quelle', true, 2),
       ('Quelles', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 448 (interrogative quel) --------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose: "___ livres lis-tu ?"',
         '"Quels" — masc. plural interrogative adjective agreeing with "livres".',
         'Quels',
         '"Quels livres" — masc. pl. "quels".',
         448
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quel', false, 0),
       ('Quels', true, 1),
       ('Quelle', false, 2),
       ('Quelles', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 449 (interrogative) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you ask "How much/many?" in French?',
         '"Combien ?" — used for both "how much" and "how many".',
         'Combien ?',
         '"How much/many?" = "combien ?".',
         449
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Comment ?', false, 0),
       ('Combien ?', true, 1),
       ('Pourquoi ?', false, 2),
       ('Quand ?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 450 (subjunctive) ---------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'When is the subjunctive used in French?',
         'After expressions of doubt, desire, emotion, necessity, possibility — usually introduced by "que".',
         'After doubt, desire, emotion, necessity, etc.',
         'Subjunctive: after que + doubt/desire/emotion/necessity.',
         450
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To state facts', false, 0),
       ('After doubt, desire, emotion, etc.', true, 1),
       ('Future events', false, 2),
       ('Past habits', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 451 (subjunctive form) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "parler" for "que je"?',
         '"Que je parle" — for -er verbs, the subjunctive often looks like the present indicative for "je/tu/il/ils".',
         'Que je parle',
         '"Que je parle" — subjunctive present of "parler".',
         451
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que je parlais', false, 0),
       ('Que je parle', true, 1),
       ('Que je parlerai', false, 2),
       ('Que je parlerais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 452 (subjunctive être) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "être" for "que je"?',
         '"Que je sois" — irregular subjunctive of être.',
         'Que je sois',
         '"Que je sois" — subjunctive of être.',
         452
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que je suis', false, 0),
       ('Que je sois', true, 1),
       ('Que je soit', false, 2),
       ('Que je serai', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 453 (subjunctive avoir) ---------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "avoir" for "que j"?',
         '"Que j''aie" — irregular subjunctive of avoir.',
         'Que j''aie',
         '"Que j''aie" — subjunctive of avoir.',
         453
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que j''ai', false, 0),
       ('Que j''aurai', false, 1),
       ('Que j''avais', false, 2),
       ('Que j''aie', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 454 (subjunctive trigger) -------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which expression triggers the subjunctive?',
         '"Il faut que" (it is necessary that) requires subjunctive. "Il faut que tu sois là".',
         'Il faut que',
         '"Il faut que" triggers the subjunctive.',
         454
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je pense que', false, 0),
       ('Il faut que', true, 1),
       ('Je sais que', false, 2),
       ('Il est certain que', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 455 (subjunctive trigger) -------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I want you to come" to French.',
         '"Je veux que tu viennes" — verb of desire + que + subjunctive.',
         'Je veux que tu viennes',
         '"Vouloir que" + subjunctive.',
         455
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je veux que tu viens', false, 0),
       ('Je veux que tu viendras', false, 1),
       ('Je veux toi venir', false, 2),
       ('Je veux que tu viennes', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 456 (subjunctive trigger) -------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Does "Je pense que" trigger the subjunctive (affirmative)?',
         'No — affirmative "je pense que" uses the indicative. The negative "je ne pense pas que" can trigger subjunctive (doubt).',
         'No (affirmative); yes if negative',
         '"Je pense que" + indicative; "Je ne pense pas que" + subjunctive.',
         456
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Yes, always', false, 0),
       ('Yes, only in past', false, 1),
       ('No (affirmative); yes if negative', true, 2),
       ('Never', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 457 (subjunctive aller) ---------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "aller" for "que tu"?',
         '"Que tu ailles" — irregular. The stem changes to "aill-".',
         'Que tu ailles',
         '"Que tu ailles" — subjunctive of aller.',
         457
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que tu vas', false, 0),
       ('Que tu ailles', true, 1),
       ('Que tu iras', false, 2),
       ('Que tu allions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 458 (subjunctive faire) ---------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "faire" for "que nous"?',
         '"Que nous fassions" — irregular subjunctive stem "fass-".',
         'Que nous fassions',
         '"Que nous fassions" — subjunctive of faire.',
         458
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que nous faisons', false, 0),
       ('Que nous fassions', true, 1),
       ('Que nous ferons', false, 2),
       ('Que nous faisions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 459 (subjunctive vouloir) ----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "vouloir" for "qu''il"?',
         '"Qu''il veuille" — irregular.',
         'Qu''il veuille',
         '"Qu''il veuille" — subjunctive of vouloir.',
         459
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Qu''il veut', false, 0),
       ('Qu''il voudra', false, 1),
       ('Qu''il veuille', true, 2),
       ('Qu''il voulait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 460 (si-clauses present-future) -----
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which tense pair: "If it rains, I will stay home"?',
         '"Si + present + future". "S''il pleut, je resterai chez moi".',
         'Si + present + future',
         'Real condition: si + présent, futur.',
         460
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Si + present + future', true, 0),
       ('Si + future + future', false, 1),
       ('Si + imparfait + conditional', false, 2),
       ('Si + plus-que-parfait + cond. passé', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 461 (si-clauses) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which tense pair: "If I had time, I would help"?',
         '"Si + imparfait + conditional". "Si j''avais le temps, j''aiderais".',
         'Si + imparfait + conditional',
         'Present unreal: si + imparfait, conditionnel.',
         461
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Si + present + future', false, 0),
       ('Si + imparfait + conditional', true, 1),
       ('Si + plus-que-parfait + cond. passé', false, 2),
       ('Si + passé composé + present', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 462 (si-clauses) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which tense pair: "If she had known, she would have come"?',
         '"Si + plus-que-parfait + conditionnel passé". "Si elle avait su, elle serait venue".',
         'Si + plus-que-parfait + conditionnel passé',
         'Past unreal: si + plus-que-parfait, conditionnel passé.',
         462
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Si + present + conditional', false, 0),
       ('Si + imparfait + conditional', false, 1),
       ('Si + plus-que-parfait + conditionnel passé', true, 2),
       ('Si + future + future', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 463 (si-clauses) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What tense never follows "si" (in conditionals)?',
         'Never use the future or conditional after "si" in a hypothetical. "Si je serai" is wrong; use "si je suis".',
         'Future or conditional',
         'After "si" never use the future or conditional.',
         463
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Present', false, 0),
       ('Imparfait', false, 1),
       ('Future or conditional', true, 2),
       ('Plus-que-parfait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 464 (pronominal verb) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se rappeler" mean?',
         '"Se rappeler" = "to remember" (synonym of "se souvenir de"). Takes a direct object (no "de").',
         'To remember',
         '"Se rappeler" = "to remember" (direct object).',
         464
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To recall someone back', false, 0),
       ('To remember', true, 1),
       ('To call again', false, 2),
       ('To remind', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 465 (pronominal verb) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se promener" mean?',
         '"Se promener" = "to go for a walk".',
         'To go for a walk',
         '"Se promener" = "to go for a walk".',
         465
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To promise oneself', false, 0),
       ('To go for a walk', true, 1),
       ('To shop', false, 2),
       ('To explore', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 466 (pronominal verb) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se dépêcher" mean?',
         '"Se dépêcher" = "to hurry".',
         'To hurry',
         '"Se dépêcher" = "to hurry".',
         466
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To rest', false, 0),
       ('To slow down', false, 1),
       ('To hurry', true, 2),
       ('To wait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 467 (pronominal verb) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "s''asseoir" mean?',
         '"S''asseoir" = "to sit down".',
         'To sit down',
         '"S''asseoir" = "to sit down".',
         467
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To sit down', true, 0),
       ('To stand up', false, 1),
       ('To lie down', false, 2),
       ('To ask', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 468 (pronominal verb) ----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se brosser les dents" mean?',
         '"Se brosser les dents" = "to brush one''s teeth". Use the definite article (not possessive) for body parts in French.',
         'To brush one''s teeth',
         '"Se brosser les dents" = "to brush one''s teeth".',
         468
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To wash hands', false, 0),
       ('To wash hair', false, 1),
       ('To brush one''s teeth', true, 2),
       ('To wash one''s feet', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 469 (subjunctive) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "venir" for "que tu"?',
         '"Que tu viennes" — irregular subjunctive.',
         'Que tu viennes',
         '"Que tu viennes" — subjunctive of venir.',
         469
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que tu viens', false, 0),
       ('Que tu viendras', false, 1),
       ('Que tu venais', false, 2),
       ('Que tu viennes', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 470 (subjunctive) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "savoir" for "que je"?',
         '"Que je sache" — irregular.',
         'Que je sache',
         '"Que je sache" — subjunctive of savoir.',
         470
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que je sais', false, 0),
       ('Que je sache', true, 1),
       ('Que je saurai', false, 2),
       ('Que je savais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 471 (subjunctive) -------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "pouvoir" for "que nous"?',
         '"Que nous puissions" — irregular.',
         'Que nous puissions',
         '"Que nous puissions" — subjunctive of pouvoir.',
         471
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que nous pouvons', false, 0),
       ('Que nous pourrons', false, 1),
       ('Que nous puissions', true, 2),
       ('Que nous pourrions', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 472 (subjunctive trigger) -----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I am happy that you are here" to French.',
         '"Je suis content(e) que tu sois là" — emotion + que + subjunctive.',
         'Je suis content que tu sois là',
         'Emotion + que → subjunctive.',
         472
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Je suis content que tu es là', false, 0),
       ('Je suis content que tu sois là', true, 1),
       ('Je suis content de toi là', false, 2),
       ('Je suis content tu là', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 473 (subjunctive trigger) -----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which doesn''t require subjunctive?',
         '"Je sais que" expresses certainty → indicative, NOT subjunctive.',
         'Je sais que',
         '"Je sais que" (certainty) → indicative, not subjunctive.',
         473
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il faut que', false, 0),
       ('Je veux que', false, 1),
       ('Je sais que', true, 2),
       ('Bien que', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 474 (subjunctive trigger) -----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Does "bien que" (although) trigger subjunctive?',
         'Yes — "bien que" always takes subjunctive: "bien qu''il soit fatigué".',
         'Yes',
         '"Bien que" always triggers subjunctive.',
         474
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Yes', true, 0),
       ('No', false, 1),
       ('Only in past', false, 2),
       ('Only with être', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 475 (subjunctive form) --------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive of "finir" for "que je"?',
         '"Que je finisse" — uses present "nous" stem "finiss-" + subjunctive endings.',
         'Que je finisse',
         '"Que je finisse" — subjunctive of finir.',
         475
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que je finis', false, 0),
       ('Que je finirai', false, 1),
       ('Que je finissais', false, 2),
       ('Que je finisse', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 476 (subjunctive) -----------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How is the regular subjunctive stem formed?',
         'Take the "ils/elles" present-tense form and remove "-ent". E.g., "ils parlent" → "parl-".',
         '"ils" present minus -ent',
         'Regular subjunctive stem = "ils" present minus "-ent".',
         476
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Infinitive minus -er', false, 0),
       ('"ils" present minus -ent', true, 1),
       ('Future minus -ai', false, 2),
       ('Imparfait minus -ait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 477 (subjunctive vs indicative) --
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "Il est possible qu''il ___ raison" (raison = right)',
         '"Ait" — "il est possible que" + subjunctive of "avoir" = "ait".',
         'ait',
         '"Il est possible que" + subjunctive.',
         477
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a', false, 0),
       ('ait', true, 1),
       ('aura', false, 2),
       ('avait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 478 (pronominal idiomatic) -------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se moquer de" mean?',
         '"Se moquer de" = "to make fun of" / "to mock".',
         'To make fun of',
         '"Se moquer de" = "to make fun of".',
         478
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To respect', false, 0),
       ('To imitate', false, 1),
       ('To make fun of', true, 2),
       ('To hide', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 479 (pronominal idiomatic) -------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se tromper" mean?',
         '"Se tromper" = "to be mistaken" / "to make a mistake".',
         'To be mistaken',
         '"Se tromper" = "to be mistaken".',
         479
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To deceive others', false, 0),
       ('To be mistaken', true, 1),
       ('To trick', false, 2),
       ('To win', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 480 (pronominal reciprocal) ------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ils se parlent" mean (reciprocal)?',
         '"Ils se parlent" = "they speak to each other" — reciprocal pronominal use.',
         'They speak to each other',
         '"Se" can be reciprocal: "ils se parlent" = each other.',
         480
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('They speak about themselves', false, 0),
       ('They speak to each other', true, 1),
       ('They are spoken to', false, 2),
       ('They speak loudly', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 481 (si-clause translation) -----
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "If I were you, I would speak" to French.',
         '"Si j''étais toi, je parlerais" — si + imparfait + conditionnel.',
         'Si j''étais toi, je parlerais',
         'Hypothetical: si + imparfait, conditionnel.',
         481
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Si je suis toi, je parlerai', false, 0),
       ('Si j''étais toi, je parlerais', true, 1),
       ('Si je serais toi, je parlerais', false, 2),
       ('Si j''ai été toi, je parle', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 482 (si-clause translation) -----
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "If you study, you will pass" to French.',
         '"Si tu étudies, tu réussiras" — si + present + future for real future condition.',
         'Si tu étudies, tu réussiras',
         'Real conditional: si + présent, futur.',
         482
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Si tu étudieras, tu réussiras', false, 0),
       ('Si tu étudiais, tu réussirais', false, 1),
       ('Si tu étudies, tu réussiras', true, 2),
       ('Si tu étudies, tu réussis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 483 (subjunctive trigger) -------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "Je doute qu''il ___ raison" (doubt → subjunctive of avoir)',
         '"Ait" — verbs of doubt trigger the subjunctive.',
         'ait',
         '"Douter que" + subjunctive: "qu''il ait".',
         483
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a', false, 0),
       ('ait', true, 1),
       ('avait', false, 2),
       ('aurait', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 484 (subjunctive use) ----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "It''s necessary that you eat" to French.',
         '"Il faut que tu manges" — "il faut que" + subjunctive.',
         'Il faut que tu manges',
         '"Il faut que tu manges" — subjunctive.',
         484
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Il faut tu manges', false, 0),
       ('Il faut que tu manger', false, 1),
       ('Il faut que tu mangerais', false, 2),
       ('Il faut que tu manges', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 485 (pronominal) --------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se passer" mean (idiomatic)?',
         '"Se passer" = "to happen" / "to take place". "Que se passe-t-il?" = "What''s happening?"',
         'To happen',
         '"Se passer" = "to happen".',
         485
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To pass by', false, 0),
       ('To happen', true, 1),
       ('To pass an exam', false, 2),
       ('To overtake', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 486 (pronominal) --------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se demander" mean?',
         '"Se demander" = "to wonder" (literally "to ask oneself").',
         'To wonder',
         '"Se demander" = "to wonder".',
         486
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To wonder', true, 0),
       ('To demand', false, 1),
       ('To ask someone', false, 2),
       ('To order', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 487 (pronominal) --------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se sentir" mean?',
         '"Se sentir" = "to feel" (a state). "Je me sens bien" = "I feel well".',
         'To feel (a state)',
         '"Se sentir" = "to feel (a state)".',
         487
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To smell something', false, 0),
       ('To touch oneself', false, 1),
       ('To feel (a state)', true, 2),
       ('To sit', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 488 (subjunctive past) -------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How is the subjunctive past formed?',
         'Subjunctive of auxiliary (aie/sois) + past participle. E.g., "que j''aie mangé".',
         'Subj. of aux + past participle',
         'Subjunctive past = subj. of aux + past participle.',
         488
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Present of aux + past participle', false, 0),
       ('Subj. of aux + past participle', true, 1),
       ('Imparfait of aux + past participle', false, 2),
       ('Future of aux + past participle', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 489 (subjunctive past) -------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Subjunctive past of "manger" for "que je"?',
         '"Que j''aie mangé" — present subjunctive of avoir + past participle.',
         'Que j''aie mangé',
         '"Que j''aie mangé" — subjunctive past.',
         489
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que je mangeais', false, 0),
       ('Que j''ai mangé', false, 1),
       ('Que j''aie mangé', true, 2),
       ('Que je mange', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 490 (subjunctive trigger) ----
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "avant que tu ___ partir"?',
         '"Avant que" + subjunctive. "Que tu puisses" (pouvoir subjunctive).',
         'puisses',
         '"Avant que" triggers subjunctive.',
         490
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('peux', false, 0),
       ('pourras', false, 1),
       ('pouvais', false, 2),
       ('puisses', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 491 (si-clause real) --------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What''s wrong with "Si je serai riche, j''achèterai une maison"?',
         '"Si" is never followed by the future in French. Use present: "Si je suis riche, j''achèterai une maison".',
         'Future tense cannot follow "si" — use present',
         '"Si" + future is wrong; use present after "si".',
         491
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Future cannot follow "si"', true, 0),
       ('"Si" needs the imparfait here', false, 1),
       ('"Acheter" is the wrong verb', false, 2),
       ('Word order is wrong', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 492 (pronominal) -----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "se taire" mean?',
         '"Se taire" = "to be silent" / "to shut up". "Tais-toi!" = "Be quiet!"',
         'To be silent',
         '"Se taire" = "to be silent".',
         492
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To be silent / shut up', true, 0),
       ('To speak loudly', false, 1),
       ('To listen', false, 2),
       ('To whisper', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 493 (pronominal command) -----
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Sit down!" (formal) in French?',
         '"Asseyez-vous !" — positive command with reflexive pronoun "vous".',
         'Asseyez-vous !',
         '"Sit down!" (formal) = "Asseyez-vous !".',
         493
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vous asseyez !', false, 0),
       ('Asseyez vous !', false, 1),
       ('S''asseoir !', false, 2),
       ('Asseyez-vous !', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 494 (si-clause) ------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose: "Si j''___ riche, j''achèterais une voiture".',
         '"Étais" — imparfait for present unreal hypothetical.',
         'étais',
         '"Si + imparfait + conditionnel" — "si j''étais riche".',
         494
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('suis', false, 0),
       ('serai', false, 1),
       ('serais', false, 2),
       ('étais', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 495 (subjunctive) ----------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose: "Je veux que tu ___ heureux".',
         '"Sois" — subjunctive of être after "vouloir que".',
         'sois',
         '"Vouloir que" + subjunctive: "que tu sois".',
         495
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('es', false, 0),
       ('sois', true, 1),
       ('seras', false, 2),
       ('étais', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 496 (pronominal idiomatic) -
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "s''ennuyer" mean?',
         '"S''ennuyer" = "to be bored".',
         'To be bored',
         '"S''ennuyer" = "to be bored".',
         496
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('To be bored', true, 0),
       ('To be busy', false, 1),
       ('To be annoyed at someone', false, 2),
       ('To be tired', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 497 (subjunctive trigger) --
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which preposition+que requires subjunctive?',
         '"Pour que" (so that) requires the subjunctive: "pour que tu comprennes".',
         'Pour que',
         '"Pour que" → subjunctive.',
         497
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Parce que', false, 0),
       ('Pendant que', false, 1),
       ('Pour que', true, 2),
       ('Puisque', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 498 (subjunctive) ---------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose: "Bien qu''il ___ malade, il travaille".',
         '"Soit" — "bien que" triggers subjunctive of être.',
         'soit',
         '"Bien que" + subjunctive: "qu''il soit".',
         498
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('est', false, 0),
       ('soit', true, 1),
       ('sera', false, 2),
       ('était', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 499 (final review) --------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose: "Si elle ___ su, elle serait venue".',
         '"Avait" — plus-que-parfait for past unreal: "si elle avait su, elle serait venue".',
         'avait',
         '"Si + plus-que-parfait + conditionnel passé".',
         499
  from modules where slug = 'french'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a', false, 0),
       ('aura', false, 1),
       ('avait', true, 2),
       ('aurait', false, 3)
     ) as c(label, is_correct, order_index);
