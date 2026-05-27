-- 021_seed_portuguese.sql
-- Portuguese module: 500 quiz questions

-- Question 0 (greeting: oi) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Oi" mean in Brazilian Portuguese?',
         '"Oi" is the standard informal "hi/hello" in Brazilian Portuguese.',
         'Hi / Hello (informal)',
         '"Oi" means "hi" or "hello" informally.',
         0
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Hi / Hello', true, 0),
       ('Please', false, 1),
       ('Thank you', false, 2),
       ('Excuse me', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 1 (greeting: bom dia) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Good morning" in Portuguese?',
         '"Bom dia" literally means "good day" and is used as a morning greeting until around noon.',
         'Bom dia',
         '"Good morning" in Portuguese is "Bom dia".',
         1
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Boa noite', false, 0),
       ('Bom dia', true, 1),
       ('Boa tarde', false, 2),
       ('Tchau', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 2 (greeting: boa tarde) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Boa tarde" mean?',
         '"Boa tarde" means "good afternoon", used from around noon until sunset.',
         'Good afternoon',
         '"Boa tarde" means "good afternoon".',
         2
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Good morning', false, 0),
       ('Good night', false, 1),
       ('Good afternoon', true, 2),
       ('Goodbye', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 3 (greeting: boa noite) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "Good evening / Good night" to Portuguese.',
         '"Boa noite" covers both "good evening" and "good night" — it''s used after sunset.',
         'Boa noite',
         '"Good evening / Good night" in Portuguese is "Boa noite".',
         3
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Boa tarde', false, 0),
       ('Bom dia', false, 1),
       ('Tchau', false, 2),
       ('Boa noite', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 4 (greeting: tchau) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Tchau" mean?',
         '"Tchau" (borrowed from Italian "ciao") is the most common informal "bye" in Brazil.',
         'Bye (informal)',
         '"Tchau" means "bye" informally.',
         4
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Bye (informal)', true, 0),
       ('See you tomorrow', false, 1),
       ('Welcome', false, 2),
       ('Hello there', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 5 (courtesy: por favor) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Please" in Portuguese?',
         '"Por favor" literally "as a favor" — the standard polite "please".',
         'Por favor',
         '"Please" in Portuguese is "Por favor".',
         5
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Obrigado', false, 0),
       ('De nada', false, 1),
       ('Por favor', true, 2),
       ('Desculpe', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 6 (courtesy: obrigado/a) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Obrigado" mean (said by a male speaker)?',
         '"Obrigado" means "thank you"; the form agrees with the speaker — men say "obrigado", women say "obrigada".',
         'Thank you',
         '"Obrigado" means "thank you" (said by a male).',
         6
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Please', false, 0),
       ('Thank you', true, 1),
       ('You''re welcome', false, 2),
       ('Sorry', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 7 (courtesy: de nada) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "De nada" mean in response to "Obrigado"?',
         '"De nada" literally "of nothing" — the standard reply to thanks: "you''re welcome".',
         'You''re welcome',
         '"De nada" means "you''re welcome".',
         7
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Thanks again', false, 0),
       ('Please', false, 1),
       ('You''re welcome', true, 2),
       ('Sorry', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 8 (courtesy: desculpe) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Desculpe" mean?',
         '"Desculpe" is "sorry" or "excuse me"; "com licença" is used when asking to pass by.',
         'Sorry / Excuse me',
         '"Desculpe" means "sorry" or "excuse me".',
         8
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sorry / Excuse me', true, 0),
       ('Thank you', false, 1),
       ('Please', false, 2),
       ('Goodbye', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 9 (greeting: como vai) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you ask "How are you?" informally in Brazilian Portuguese?',
         '"Como vai?" or "Tudo bem?" both ask how someone is. "Como você está?" also works.',
         'Como vai?',
         '"How are you?" informally is "Como vai?".',
         9
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Como se chama?', false, 0),
       ('Como vai?', true, 1),
       ('Onde está?', false, 2),
       ('Quanto custa?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 10 (greeting: meu nome é) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "My name is..." in Portuguese?',
         '"Meu nome é..." literally "My name is..." is the standard self-introduction. "Eu me chamo..." also works.',
         'Meu nome é...',
         '"My name is..." in Portuguese is "Meu nome é...".',
         10
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu sou de...', false, 0),
       ('Eu gosto de...', false, 1),
       ('Meu nome é...', true, 2),
       ('Eu tenho nome...', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 11 (family: mãe) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "mãe" mean?',
         '"Mãe" means "mother"; "mamãe" is the affectionate "mom".',
         'Mother',
         '"Mãe" means "mother".',
         11
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sister', false, 0),
       ('Grandmother', false, 1),
       ('Aunt', false, 2),
       ('Mother', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 12 (family: pai) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "father" to Portuguese.',
         '"Pai" means "father"; "papai" is the affectionate "dad".',
         'Pai',
         '"Father" in Portuguese is "pai".',
         12
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Pai', true, 0),
       ('Irmão', false, 1),
       ('Avô', false, 2),
       ('Tio', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 13 (family: irmão) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "irmão" mean?',
         '"Irmão" means "brother"; "irmã" is "sister".',
         'Brother',
         '"Irmão" means "brother".',
         13
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Cousin', false, 0),
       ('Brother', true, 1),
       ('Uncle', false, 2),
       ('Nephew', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 14 (family: irmã) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "sister" to Portuguese.',
         '"Irmã" means "sister"; the tilde marks nasalization.',
         'Irmã',
         '"Sister" in Portuguese is "irmã".',
         14
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tia', false, 0),
       ('Avó', false, 1),
       ('Irmã', true, 2),
       ('Prima', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 15 (family: avô) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "avô" mean?',
         '"Avô" (with circumflex) means "grandfather"; "avó" (acute accent) is "grandmother".',
         'Grandfather',
         '"Avô" means "grandfather".',
         15
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Father', false, 0),
       ('Grandfather', true, 1),
       ('Uncle', false, 2),
       ('Godfather', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 16 (family: tia) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "tia" mean?',
         '"Tia" means "aunt"; "tio" is "uncle".',
         'Aunt',
         '"Tia" means "aunt".',
         16
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Aunt', true, 0),
       ('Cousin', false, 1),
       ('Niece', false, 2),
       ('Grandma', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 17 (family: primo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "cousin (male)" to Portuguese.',
         '"Primo" is the male cousin; "prima" is the female form.',
         'Primo',
         '"Male cousin" in Portuguese is "primo".',
         17
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sobrinho', false, 0),
       ('Cunhado', false, 1),
       ('Primo', true, 2),
       ('Genro', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 18 (family: filho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "filho" mean?',
         '"Filho" means "son"; "filha" is "daughter".',
         'Son',
         '"Filho" means "son".',
         18
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Daughter', false, 0),
       ('Nephew', false, 1),
       ('Cousin', false, 2),
       ('Son', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 19 (family: esposa) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "esposa" mean?',
         '"Esposa" means "wife"; "marido" (or "esposo") is "husband".',
         'Wife',
         '"Esposa" means "wife".',
         19
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Wife', true, 0),
       ('Husband', false, 1),
       ('Girlfriend', false, 2),
       ('Mother-in-law', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 20 (food: pão) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "pão" mean?',
         '"Pão" means "bread"; "pão de queijo" is a famous Brazilian cheese bread.',
         'Bread',
         '"Pão" means "bread".',
         20
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Cheese', false, 0),
       ('Bread', true, 1),
       ('Milk', false, 2),
       ('Wine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 21 (food: queijo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "cheese" to Portuguese.',
         '"Queijo" is the general word for cheese.',
         'Queijo',
         '"Cheese" in Portuguese is "queijo".',
         21
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Manteiga', false, 0),
       ('Leite', false, 1),
       ('Queijo', true, 2),
       ('Presunto', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 22 (food: água) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "água" mean?',
         '"Água" means "water"; "água com gás" is sparkling water.',
         'Water',
         '"Água" means "water".',
         22
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Wine', false, 0),
       ('Milk', false, 1),
       ('Juice', false, 2),
       ('Water', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 23 (food: vinho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "vinho" mean?',
         '"Vinho" means "wine"; "vinho tinto" is red wine, "vinho branco" white.',
         'Wine',
         '"Vinho" means "wine".',
         23
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Wine', true, 0),
       ('Beer', false, 1),
       ('Vinegar', false, 2),
       ('Coffee', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 24 (food: café) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "café da manhã" mean in Brazilian Portuguese?',
         'In Brazil "café da manhã" (lit. "morning coffee") is "breakfast"; in Portugal it''s "pequeno-almoço".',
         'Breakfast',
         '"Café da manhã" means "breakfast" in Brazil.',
         24
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Morning coffee shop', false, 0),
       ('Breakfast', true, 1),
       ('A small espresso', false, 2),
       ('Brunch', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 25 (food: leite) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "leite" mean in Portuguese?',
         '"Leite" means "milk".',
         'Milk',
         '"Leite" means "milk".',
         25
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Coffee with milk', false, 0),
       ('Cream', false, 1),
       ('Milk', true, 2),
       ('Yogurt', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 26 (food: arroz) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "arroz" mean?',
         '"Arroz" means "rice"; "arroz e feijão" (rice and beans) is the staple Brazilian dish.',
         'Rice',
         '"Arroz" means "rice".',
         26
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Rice', true, 0),
       ('Pasta', false, 1),
       ('Bean', false, 2),
       ('Corn', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 27 (food: maçã) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "apple" to Portuguese.',
         '"Maçã" means "apple"; the cedilla on ç gives an /s/ sound.',
         'Maçã',
         '"Apple" in Portuguese is "maçã".',
         27
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Pera', false, 0),
       ('Maçã', true, 1),
       ('Laranja', false, 2),
       ('Uva', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 28 (food: peixe) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "peixe" mean?',
         '"Peixe" means "fish" (food/animal).',
         'Fish',
         '"Peixe" means "fish".',
         28
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Peach', false, 0),
       ('Chicken', false, 1),
       ('Fish', true, 2),
       ('Beef', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 29 (food: frango) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "frango" mean?',
         '"Frango" means "chicken" as food; "galinha" is the live hen.',
         'Chicken',
         '"Frango" means "chicken".',
         29
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Chicken', true, 0),
       ('Pork', false, 1),
       ('Lamb', false, 2),
       ('Duck', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 30 (body: cabeça) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "cabeça" mean?',
         '"A cabeça" means "the head" (feminine noun).',
         'Head',
         '"Cabeça" means "head".',
         30
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Hand', false, 0),
       ('Head', true, 1),
       ('Foot', false, 2),
       ('Stomach', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 31 (body: mão) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "a mão" mean?',
         '"A mão" means "the hand". Despite ending in -ão, it''s feminine; plural is "as mãos".',
         'Hand',
         '"A mão" means "the hand".',
         31
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Arm', false, 0),
       ('Finger', false, 1),
       ('Hand', true, 2),
       ('Wrist', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 32 (body: pé) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "foot" to Portuguese.',
         '"Pé" means "foot"; plural is "pés".',
         'Pé',
         '"Foot" in Portuguese is "pé".',
         32
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Perna', false, 0),
       ('Joelho', false, 1),
       ('Tornozelo', false, 2),
       ('Pé', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 33 (body: olho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "olho" mean?',
         '"Olho" means "eye"; plural "olhos".',
         'Eye',
         '"Olho" means "eye".',
         33
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ear', false, 0),
       ('Nose', false, 1),
       ('Eye', true, 2),
       ('Mouth', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 34 (body: boca) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "boca" mean?',
         '"Boca" means "mouth".',
         'Mouth',
         '"Boca" means "mouth".',
         34
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Mouth', true, 0),
       ('Cheek', false, 1),
       ('Lip', false, 2),
       ('Throat', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 35 (body: nariz) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "nariz" mean?',
         '"Nariz" means "nose".',
         'Nose',
         '"Nariz" means "nose".',
         35
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ear', false, 0),
       ('Forehead', false, 1),
       ('Chin', false, 2),
       ('Nose', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 36 (body: braço) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "braço" mean?',
         '"Braço" means "arm"; plural "braços".',
         'Arm',
         '"Braço" means "arm".',
         36
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Arm', true, 0),
       ('Leg', false, 1),
       ('Back', false, 2),
       ('Shoulder', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 37 (body: perna) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "leg" to Portuguese.',
         '"Perna" means "leg".',
         'Perna',
         '"Leg" in Portuguese is "perna".',
         37
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Pé', false, 0),
       ('Perna', true, 1),
       ('Coxa', false, 2),
       ('Ombro', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 38 (body: cabelo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "cabelo" mean?',
         '"Cabelo" means "hair" on one''s head — unlike Italian, Portuguese uses the singular.',
         'Hair',
         '"Cabelo" means "hair".',
         38
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Hat', false, 0),
       ('Coat', false, 1),
       ('Hair', true, 2),
       ('Eyelash', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 39 (body: coração) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "coração" mean?',
         '"Coração" means "heart" (both anatomical and figurative).',
         'Heart',
         '"Coração" means "heart".',
         39
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Lung', false, 0),
       ('Liver', false, 1),
       ('Brain', false, 2),
       ('Heart', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 40 (color: vermelho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What color is "vermelho"?',
         '"Vermelho" means "red"; feminine form "vermelha".',
         'Red',
         '"Vermelho" means "red".',
         40
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Red', true, 0),
       ('Pink', false, 1),
       ('Orange', false, 2),
       ('Purple', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 41 (color: azul) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "azul" mean?',
         '"Azul" means "blue"; it has the same form for masculine and feminine.',
         'Blue',
         '"Azul" means "blue".',
         41
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Black', false, 0),
       ('Blue', true, 1),
       ('Brown', false, 2),
       ('Green', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 42 (color: verde) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "verde" mean?',
         '"Verde" means "green"; it ends in -e so it has the same form for masculine and feminine.',
         'Green',
         '"Verde" means "green".',
         42
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Yellow', false, 0),
       ('Blue', false, 1),
       ('Green', true, 2),
       ('Gray', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 43 (color: amarelo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "amarelo" mean?',
         '"Amarelo" means "yellow"; feminine "amarela".',
         'Yellow',
         '"Amarelo" means "yellow".',
         43
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Orange', false, 0),
       ('Gold', false, 1),
       ('Brown', false, 2),
       ('Yellow', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 44 (color: preto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "preto" mean?',
         '"Preto" means "black"; feminine "preta".',
         'Black',
         '"Preto" means "black".',
         44
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('White', false, 0),
       ('Black', true, 1),
       ('Gray', false, 2),
       ('Navy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 45 (color: branco) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "branco" mean?',
         '"Branco" means "white"; feminine "branca".',
         'White',
         '"Branco" means "white".',
         45
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Cream', false, 0),
       ('Beige', false, 1),
       ('White', true, 2),
       ('Silver', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 46 (animal: cachorro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "cachorro" mean in Brazilian Portuguese?',
         'In Brazil "cachorro" is the everyday word for "dog"; "cão" is more formal/used in Portugal.',
         'Dog',
         '"Cachorro" means "dog" in Brazil.',
         46
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Cat', false, 0),
       ('Horse', false, 1),
       ('Cow', false, 2),
       ('Dog', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 47 (animal: gato) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "cat" to Portuguese.',
         '"Gato" is "cat" (masculine); "gata" is the female cat.',
         'Gato',
         '"Cat" in Portuguese is "gato".',
         47
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Cavalo', false, 0),
       ('Gato', true, 1),
       ('Coelho', false, 2),
       ('Rato', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 48 (animal: cavalo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "cavalo" mean?',
         '"Cavalo" means "horse".',
         'Horse',
         '"Cavalo" means "horse".',
         48
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Horse', true, 0),
       ('Donkey', false, 1),
       ('Cow', false, 2),
       ('Sheep', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 49 (animal: pássaro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "pássaro" mean?',
         '"Pássaro" means "bird".',
         'Bird',
         '"Pássaro" means "bird".',
         49
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Fish', false, 0),
       ('Rabbit', false, 1),
       ('Bird', true, 2),
       ('Bee', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 50 (numbers: um) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "um"?',
         '"Um" is the number 1 (masculine); "uma" is the feminine form. It also serves as the indefinite article.',
         '1',
         '"Um" means "one" (1).',
         50
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('1', true, 0),
       ('2', false, 1),
       ('3', false, 2),
       ('11', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 51 (numbers: sete) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "sete"?',
         '"Sete" is the number 7.',
         '7',
         '"Sete" means "seven" (7).',
         51
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('5', false, 0),
       ('6', false, 1),
       ('7', true, 2),
       ('17', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 52 (numbers: dez) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "ten" in Portuguese?',
         '"Dez" is the number 10.',
         'Dez',
         '"Ten" in Portuguese is "dez".',
         52
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Oito', false, 0),
       ('Nove', false, 1),
       ('Onze', false, 2),
       ('Dez', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 53 (numbers: vinte) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "vinte"?',
         '"Vinte" is the number 20.',
         '20',
         '"Vinte" means "twenty" (20).',
         53
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('12', false, 0),
       ('20', true, 1),
       ('22', false, 2),
       ('30', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 54 (numbers: cem) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "cem"?',
         '"Cem" is exactly 100; "cento" is used in compounds like "cento e um" (101).',
         '100',
         '"Cem" means "one hundred" (100).',
         54
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('10', false, 0),
       ('50', false, 1),
       ('100', true, 2),
       ('1000', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 55 (numbers: mil) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "mil"?',
         '"Mil" is 1,000; it''s invariable: "dois mil", "três mil", etc.',
         '1000',
         '"Mil" means "one thousand" (1000).',
         55
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('100', false, 0),
       ('500', false, 1),
       ('1,000', true, 2),
       ('10,000', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 56 (numbers: três) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "três" mean?',
         '"Três" is the number 3.',
         '3',
         '"Três" means "three" (3).',
         56
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('2', false, 0),
       ('3', true, 1),
       ('4', false, 2),
       ('13', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 57 (numbers: doze) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "doze"?',
         '"Doze" is the number 12.',
         '12',
         '"Doze" means "twelve" (12).',
         57
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('2', false, 0),
       ('10', false, 1),
       ('12', true, 2),
       ('20', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 58 (numbers: cinquenta) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "cinquenta"?',
         '"Cinquenta" is the number 50.',
         '50',
         '"Cinquenta" means "fifty" (50).',
         58
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('15', false, 0),
       ('40', false, 1),
       ('50', true, 2),
       ('500', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 59 (numbers: dezesseis) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What number is "dezesseis" in Brazilian Portuguese?',
         '"Dezesseis" is 16 in Brazil; Portugal uses "dezasseis".',
         '16',
         '"Dezesseis" (BR) means "sixteen" (16).',
         59
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('6', false, 0),
       ('16', true, 1),
       ('60', false, 2),
       ('600', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 60 (time: que horas são) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you ask "What time is it?" in Portuguese?',
         '"Que horas são?" is the standard question; it uses the plural "são" because most hours are plural.',
         'Que horas são?',
         '"What time is it?" is "Que horas são?".',
         60
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que horas são?', true, 0),
       ('Quanto custa?', false, 1),
       ('Onde está?', false, 2),
       ('Como vai?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 61 (time: meio-dia) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "meio-dia" mean?',
         '"Meio-dia" literally "half-day" means "noon" (12pm).',
         'Noon',
         '"Meio-dia" means "noon".',
         61
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Midnight', false, 0),
       ('Morning', false, 1),
       ('Noon', true, 2),
       ('Sunset', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 62 (time: meia-noite) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "meia-noite" mean?',
         '"Meia-noite" is "midnight".',
         'Midnight',
         '"Meia-noite" means "midnight".',
         62
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Midnight', true, 0),
       ('Noon', false, 1),
       ('Evening', false, 2),
       ('Dawn', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 63 (time: são três horas) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "It''s 3 o''clock" in Portuguese?',
         'For 2 o''clock and beyond, Portuguese uses the plural "São..." with feminine "horas": "São três horas".',
         'São três horas',
         '"It''s 3 o''clock" is "São três horas".',
         63
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('É três horas', false, 0),
       ('É três', false, 1),
       ('São três horas', true, 2),
       ('Somos três horas', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 64 (time: é uma hora) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "It''s 1 o''clock" in Portuguese?',
         'One o''clock is singular: "É uma hora" (note feminine "uma" agreeing with "hora").',
         'É uma hora',
         '"It''s one o''clock" is "É uma hora".',
         64
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('São uma hora', false, 0),
       ('É uma hora', true, 1),
       ('É um hora', false, 2),
       ('São um', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 65 (days: segunda-feira) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What day is "segunda-feira"?',
         '"Segunda-feira" is Monday; in casual speech it''s often shortened to "segunda".',
         'Monday',
         '"Segunda-feira" means "Monday".',
         65
  from modules where slug = 'portuguese'
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

-- Question 66 (days: terça-feira) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What day is "terça-feira"?',
         '"Terça-feira" is Tuesday.',
         'Tuesday',
         '"Terça-feira" means "Tuesday".',
         66
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Monday', false, 0),
       ('Wednesday', false, 1),
       ('Tuesday', true, 2),
       ('Thursday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 67 (days: quarta-feira) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What day is "quarta-feira"?',
         '"Quarta-feira" is Wednesday (the "fourth day").',
         'Wednesday',
         '"Quarta-feira" means "Wednesday".',
         67
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tuesday', false, 0),
       ('Wednesday', true, 1),
       ('Thursday', false, 2),
       ('Saturday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 68 (days: quinta-feira) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What day is "quinta-feira"?',
         '"Quinta-feira" is Thursday (the "fifth day").',
         'Thursday',
         '"Quinta-feira" means "Thursday".',
         68
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Wednesday', false, 0),
       ('Friday', false, 1),
       ('Thursday', true, 2),
       ('Sunday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 69 (days: sexta-feira) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What day is "sexta-feira"?',
         '"Sexta-feira" is Friday (the "sixth day").',
         'Friday',
         '"Sexta-feira" means "Friday".',
         69
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Friday', true, 0),
       ('Saturday', false, 1),
       ('Thursday', false, 2),
       ('Monday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 70 (days: sábado) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What day is "sábado"?',
         '"Sábado" is Saturday (from Hebrew Shabbat).',
         'Saturday',
         '"Sábado" means "Saturday".',
         70
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Friday', false, 0),
       ('Sunday', false, 1),
       ('Saturday', true, 2),
       ('Thursday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 71 (days: domingo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What day is "domingo"?',
         '"Domingo" is Sunday and is masculine.',
         'Sunday',
         '"Domingo" means "Sunday".',
         71
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sunday', true, 0),
       ('Monday', false, 1),
       ('Saturday', false, 2),
       ('Holiday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 72 (months: janeiro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What month is "janeiro"?',
         '"Janeiro" is January. Portuguese months are not capitalized.',
         'January',
         '"Janeiro" means "January".',
         72
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('February', false, 0),
       ('January', true, 1),
       ('June', false, 2),
       ('July', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 73 (months: fevereiro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What month is "fevereiro"?',
         '"Fevereiro" is February.',
         'February',
         '"Fevereiro" means "February".',
         73
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('January', false, 0),
       ('March', false, 1),
       ('February', true, 2),
       ('April', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 74 (months: maio) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What month is "maio"?',
         '"Maio" is May.',
         'May',
         '"Maio" means "May".',
         74
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('March', false, 0),
       ('April', false, 1),
       ('June', false, 2),
       ('May', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 75 (months: agosto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What month is "agosto"?',
         '"Agosto" is August.',
         'August',
         '"Agosto" means "August".',
         75
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('August', true, 0),
       ('April', false, 1),
       ('October', false, 2),
       ('July', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 76 (months: dezembro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What month is "dezembro"?',
         '"Dezembro" is December.',
         'December',
         '"Dezembro" means "December".',
         76
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('November', false, 0),
       ('December', true, 1),
       ('October', false, 2),
       ('September', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 77 (months: outubro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What month is "outubro"?',
         '"Outubro" is October.',
         'October',
         '"Outubro" means "October".',
         77
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('August', false, 0),
       ('September', false, 1),
       ('October', true, 2),
       ('November', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 78 (dates: o primeiro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the 1st of May" in Portuguese?',
         'For the 1st of the month Brazilian Portuguese commonly uses the ordinal "primeiro": "o primeiro de maio".',
         'O primeiro de maio',
         'In Portuguese "1st of May" is "o primeiro de maio".',
         78
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('O um de maio', false, 0),
       ('O primeiro de maio', true, 1),
       ('A uma maio', false, 2),
       ('Maio um', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 79 (dates: hoje é) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Today is Monday" in Portuguese?',
         'Portuguese uses the simple structure: "Hoje é segunda-feira" — no capital on the day name.',
         'Hoje é segunda-feira',
         '"Today is Monday" is "Hoje é segunda-feira".',
         79
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Hoje é Segunda-feira.', false, 0),
       ('Ontem é segunda-feira.', false, 1),
       ('Hoje é segunda-feira.', true, 2),
       ('Hoje são segunda-feira.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 80 (weather: como está o tempo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you ask "What''s the weather like?" in Portuguese?',
         '"Como está o tempo?" literally "How is the weather?" — Portuguese uses "estar" + "tempo".',
         'Como está o tempo?',
         '"What''s the weather like?" is "Como está o tempo?".',
         80
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Como está o tempo?', true, 0),
       ('Como vai você?', false, 1),
       ('Onde está o tempo?', false, 2),
       ('Quanto tempo?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 81 (weather: está calor) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Está calor" mean?',
         '"Está calor" uses "estar" to describe current weather: "It''s hot".',
         'It''s hot',
         '"Está calor" means "it''s hot".',
         81
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s cold', false, 0),
       ('It''s windy', false, 1),
       ('It''s hot', true, 2),
       ('It''s sunny', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 82 (weather: está frio) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Está frio" mean?',
         '"Está frio" means "It''s cold".',
         'It''s cold',
         '"Está frio" means "it''s cold".',
         82
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s cold', true, 0),
       ('It''s warm', false, 1),
       ('It''s raining', false, 2),
       ('It''s humid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 83 (weather: está chovendo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Está chovendo" mean in Brazilian Portuguese?',
         'Brazil uses the gerund: "Está chovendo" = "It''s raining"; Portugal would say "Está a chover".',
         'It''s raining',
         '"Está chovendo" means "it''s raining" (BR).',
         83
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s snowing', false, 0),
       ('It''s raining', true, 1),
       ('It''s sunny', false, 2),
       ('It''s cloudy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 84 (weather: está nevando) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Está nevando" mean?',
         '"Está nevando" means "It''s snowing" — from the verb "nevar".',
         'It''s snowing',
         '"Está nevando" means "it''s snowing".',
         84
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s raining', false, 0),
       ('It''s foggy', false, 1),
       ('It''s snowing', true, 2),
       ('It''s thundering', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 85 (weather: está sol) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Está sol" (or "Está fazendo sol") mean?',
         '"Está sol" / "Está fazendo sol" means "It''s sunny".',
         'It''s sunny',
         '"Está sol" means "it''s sunny".',
         85
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s windy', false, 0),
       ('It''s sunny', true, 1),
       ('It''s cloudy', false, 2),
       ('There''s a storm', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 86 (weather: está ventando) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "It''s windy" in Brazilian Portuguese?',
         '"Está ventando" uses the gerund of "ventar" (to blow wind) — typical BR construction.',
         'Está ventando',
         '"It''s windy" is "Está ventando".',
         86
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Faz vento', false, 0),
       ('É vento', false, 1),
       ('Vento faz', false, 2),
       ('Está ventando', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 87 (seasons: estação) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "estação" mean (in the context of the year)?',
         '"Estação" means "season" (of the year); it also means "station" (e.g., train station) in other contexts.',
         'Season',
         '"Estação" means "season".',
         87
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Season', true, 0),
       ('Stadium', false, 1),
       ('Country', false, 2),
       ('Holiday', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 88 (seasons: primavera) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What season is "primavera"?',
         '"Primavera" means "spring".',
         'Spring',
         '"Primavera" means "spring".',
         88
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Summer', false, 0),
       ('Spring', true, 1),
       ('Autumn', false, 2),
       ('Winter', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 89 (seasons: verão) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What season is "verão"?',
         '"Verão" means "summer".',
         'Summer',
         '"Verão" means "summer".',
         89
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Spring', false, 0),
       ('Winter', false, 1),
       ('Summer', true, 2),
       ('Autumn', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 90 (seasons: outono) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What season is "outono"?',
         '"Outono" means "autumn"/"fall".',
         'Autumn',
         '"Outono" means "autumn".',
         90
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Autumn', true, 0),
       ('Spring', false, 1),
       ('Winter', false, 2),
       ('Summer', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 91 (seasons: inverno) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What season is "inverno"?',
         '"Inverno" means "winter".',
         'Winter',
         '"Inverno" means "winter".',
         91
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Autumn', false, 0),
       ('Spring', false, 1),
       ('Winter', true, 2),
       ('Summer', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 92 (time: ontem) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ontem" mean?',
         '"Ontem" means "yesterday".',
         'Yesterday',
         '"Ontem" means "yesterday".',
         92
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Today', false, 0),
       ('Tomorrow', false, 1),
       ('Last week', false, 2),
       ('Yesterday', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 93 (time: hoje) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "hoje" mean?',
         '"Hoje" means "today".',
         'Today',
         '"Hoje" means "today".',
         93
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Today', true, 0),
       ('Yesterday', false, 1),
       ('Tomorrow', false, 2),
       ('Now', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 94 (time: amanhã) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "amanhã" mean?',
         '"Amanhã" means "tomorrow".',
         'Tomorrow',
         '"Amanhã" means "tomorrow".',
         94
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Today', false, 0),
       ('Tomorrow', true, 1),
       ('Soon', false, 2),
       ('Next year', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 95 (time: manhã) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "manhã" mean?',
         '"Manhã" means "morning"; "de manhã" = "in the morning".',
         'Morning',
         '"Manhã" means "morning".',
         95
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Evening', false, 0),
       ('Night', false, 1),
       ('Morning', true, 2),
       ('Afternoon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 96 (time: tarde) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "tarde" mean as a noun?',
         '"Tarde" as a noun means "afternoon"; as an adverb it means "late".',
         'Afternoon',
         '"Tarde" means "afternoon".',
         96
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Afternoon', true, 0),
       ('Morning', false, 1),
       ('Evening', false, 2),
       ('Noon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 97 (time: noite) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "noite" mean?',
         '"Noite" means "night" or "evening" — Portuguese doesn''t strongly distinguish the two.',
         'Night / Evening',
         '"Noite" means "night" or "evening".',
         97
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Day', false, 0),
       ('Night / Evening', true, 1),
       ('Morning', false, 2),
       ('Sunset', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 98 (time: madrugada) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "madrugada" mean?',
         '"Madrugada" is the late-night / pre-dawn hours, roughly midnight to sunrise.',
         'Early morning / pre-dawn',
         '"Madrugada" means the pre-dawn / early-morning hours.',
         98
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Noon', false, 0),
       ('Dusk', false, 1),
       ('Sunset', false, 2),
       ('Pre-dawn / early morning', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 99 (time: semana) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "semana" mean?',
         '"Semana" means "week".',
         'Week',
         '"Semana" means "week".',
         99
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Week', true, 0),
       ('Month', false, 1),
       ('Day', false, 2),
       ('Hour', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 100 (verb: falar eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" (to speak) for "eu" in the present tense.',
         'Regular -ar verbs drop -ar and add -o for "eu": falar → fal + o = falo.',
         'falo',
         'The "eu" form of "falar" is "falo".',
         100
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falo', true, 0),
       ('falas', false, 1),
       ('fala', false, 2),
       ('falar', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 101 (verb: falar você) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" for "você" in the present.',
         '"Você" takes the same form as "ele/ela": fala. In BR, "você" is the default informal 2nd-person singular.',
         'fala',
         'The "você" form of "falar" is "fala".',
         101
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falas', false, 0),
       ('fala', true, 1),
       ('falo', false, 2),
       ('fale', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 102 (verb: falar ele/ela) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" for "ele/ela" in the present.',
         'Regular -ar verbs add -a for "ele/ela/você": fal + a = fala.',
         'fala',
         'The "ele/ela" form of "falar" is "fala".',
         102
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falo', false, 0),
       ('falas', false, 1),
       ('fala', true, 2),
       ('fale', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 103 (verb: falar nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" for "nós" in the present.',
         'Regular -ar verbs add -amos for "nós": fal + amos = falamos.',
         'falamos',
         'The "nós" form of "falar" is "falamos".',
         103
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falemos', false, 0),
       ('falamos', true, 1),
       ('falimos', false, 2),
       ('falam', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 104 (verb: falar vocês) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" for "vocês" in the present (BR plural "you").',
         'In Brazil, "vocês" replaces "vós" and takes the 3rd-person plural ending -am: falam.',
         'falam',
         'The "vocês" form of "falar" is "falam".',
         104
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falais', false, 0),
       ('faleis', false, 1),
       ('falam', true, 2),
       ('falamos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 105 (verb: falar eles) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" for "eles/elas" in the present.',
         'Regular -ar verbs add -am for "eles/elas": fal + am = falam.',
         'falam',
         'The "eles/elas" form of "falar" is "falam".',
         105
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falam', true, 0),
       ('falem', false, 1),
       ('falaram', false, 2),
       ('falavam', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 106 (verb: vender eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vender" (to sell) for "eu" in the present.',
         'Regular -er verbs drop -er and add -o for "eu": vend + o = vendo.',
         'vendo',
         'The "eu" form of "vender" is "vendo".',
         106
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vende', false, 0),
       ('vendes', false, 1),
       ('vendo', true, 2),
       ('vender', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 107 (verb: vender ele) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vender" for "ele/ela/você" in the present.',
         '-er verbs add -e for "ele/ela/você": vend + e = vende.',
         'vende',
         'The "ele/você" form of "vender" is "vende".',
         107
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendes', false, 0),
       ('vende', true, 1),
       ('vendo', false, 2),
       ('venda', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 108 (verb: vender nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vender" for "nós" in the present.',
         '-er verbs add -emos for "nós": vend + emos = vendemos.',
         'vendemos',
         'The "nós" form of "vender" is "vendemos".',
         108
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendemos', true, 0),
       ('vendamos', false, 1),
       ('vendimos', false, 2),
       ('vendem', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 109 (verb: vender eles) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vender" for "eles/elas" in the present.',
         '-er verbs add -em for "eles/elas": vend + em = vendem.',
         'vendem',
         'The "eles/elas" form of "vender" is "vendem".',
         109
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendam', false, 0),
       ('vendiam', false, 1),
       ('vendem', true, 2),
       ('venderam', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 110 (verb: dormir eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dormir" (to sleep) for "eu" in the present.',
         '"Dormir" has an o→u stem change in "eu": durmo, dormes, dorme, dormimos, dormem.',
         'durmo',
         'The "eu" form of "dormir" is "durmo".',
         110
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('durmo', true, 0),
       ('dormo', false, 1),
       ('dorme', false, 2),
       ('dormio', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 111 (verb: dormir nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dormir" for "nós" in the present.',
         'Regular -ir verbs add -imos for "nós": dorm + imos = dormimos.',
         'dormimos',
         'The "nós" form of "dormir" is "dormimos".',
         111
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dormamos', false, 0),
       ('dormemos', false, 1),
       ('dormimos', true, 2),
       ('durmamos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 112 (verb: entender eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "entender" (to understand) for "eu" in the present.',
         '"Entender" is a regular -er verb: entendo, entende, entendemos, entendem.',
         'entendo',
         'The "eu" form of "entender" is "entendo".',
         112
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('entende', false, 0),
       ('entendo', true, 1),
       ('entendi', false, 2),
       ('entender', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 113 (verb: compreender nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "compreender" (to understand/grasp) for "nós" in the present.',
         'Regular -er: compreend + emos = compreendemos.',
         'compreendemos',
         'The "nós" form of "compreender" is "compreendemos".',
         113
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('compreendamos', false, 0),
       ('compreendimos', false, 1),
       ('compreendemos', true, 2),
       ('compreendam', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 114 (verb: ser eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ser" (to be — permanent) for "eu" in the present.',
         '"Ser" is highly irregular: sou, és, é, somos, são. ("Você" takes "é".)',
         'sou',
         'The "eu" form of "ser" is "sou".',
         114
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('és', false, 0),
       ('é', false, 1),
       ('somos', false, 2),
       ('sou', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 115 (verb: ser você) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ser" for "você/ele/ela" in the present.',
         '"Você/ele/ela" of "ser" is "é" (with acute accent).',
         'é',
         'The "você" form of "ser" is "é".',
         115
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('é', true, 0),
       ('são', false, 1),
       ('sou', false, 2),
       ('és', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 116 (verb: ser nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ser" for "nós" in the present.',
         '"Nós" of "ser" is "somos".',
         'somos',
         'The "nós" form of "ser" is "somos".',
         116
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('semos', false, 0),
       ('somos', true, 1),
       ('são', false, 2),
       ('estamos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 117 (verb: ser eles) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ser" for "eles/elas/vocês" in the present.',
         '"Eles/elas/vocês" of "ser" is "são".',
         'são',
         'The "eles" form of "ser" is "são".',
         117
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('somos', false, 0),
       ('seam', false, 1),
       ('são', true, 2),
       ('sejam', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 118 (verb: estar eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "estar" (to be — temporary) for "eu" in the present.',
         '"Estar": estou, está, estamos, estão. Used for temporary states/locations.',
         'estou',
         'The "eu" form of "estar" is "estou".',
         118
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('estou', true, 0),
       ('está', false, 1),
       ('estamos', false, 2),
       ('esto', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 119 (verb: estar nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "estar" for "nós" in the present.',
         '"Nós" of "estar" is "estamos".',
         'estamos',
         'The "nós" form of "estar" is "estamos".',
         119
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('estimos', false, 0),
       ('estamos', true, 1),
       ('estemos', false, 2),
       ('estão', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 120 (verb: ser vs estar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which verb fits "Ela ___ médica." (She is a doctor — by profession)?',
         'Permanent traits and identities (profession, nationality, etc.) use "ser": "Ela é médica".',
         'é (ser)',
         'Permanent identity → "ser": "Ela é médica".',
         120
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('está (estar)', false, 0),
       ('tem (ter)', false, 1),
       ('é (ser)', true, 2),
       ('fica (ficar)', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 121 (verb: ser vs estar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which verb fits "Eu ___ cansado hoje." (I am tired today — temporary state)?',
         'Temporary states (mood, condition) use "estar": "Estou cansado".',
         'estou (estar)',
         'Temporary state → "estar": "Estou cansado".',
         121
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sou (ser)', false, 0),
       ('estou (estar)', true, 1),
       ('tenho (ter)', false, 2),
       ('fico (ficar)', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 122 (verb: ter eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ter" (to have) for "eu" in the present.',
         '"Ter": tenho, tem, temos, têm. Highly irregular.',
         'tenho',
         'The "eu" form of "ter" is "tenho".',
         122
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tenho', true, 0),
       ('tem', false, 1),
       ('temos', false, 2),
       ('to', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 123 (verb: ter você) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ter" for "você/ele/ela" in the present.',
         '"Você/ele/ela" of "ter" is "tem".',
         'tem',
         'The "você" form of "ter" is "tem".',
         123
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tens', false, 0),
       ('tem', true, 1),
       ('tém', false, 2),
       ('tenha', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 124 (verb: ter eles) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ter" for "eles/elas/vocês" in the present.',
         '"Eles/elas/vocês" of "ter" is "têm" (with circumflex, distinguishing it from singular "tem").',
         'têm',
         'The "eles" form of "ter" is "têm".',
         124
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tem', false, 0),
       ('teem', false, 1),
       ('têm', true, 2),
       ('teram', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 125 (verb: ir eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ir" (to go) for "eu" in the present.',
         '"Ir" is highly irregular: vou, vai, vamos, vão.',
         'vou',
         'The "eu" form of "ir" is "vou".',
         125
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vou', true, 0),
       ('vai', false, 1),
       ('vamos', false, 2),
       ('vão', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 126 (verb: ir eles) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ir" for "eles/elas/vocês" in the present.',
         '"Eles/elas/vocês" of "ir" is "vão".',
         'vão',
         'The "eles" form of "ir" is "vão".',
         126
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vamos', false, 0),
       ('vão', true, 1),
       ('vai', false, 2),
       ('iram', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 127 (verb: fazer eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "fazer" (to do/make) for "eu" in the present.',
         '"Fazer": faço, faz, fazemos, fazem. Note "ç" in the eu form.',
         'faço',
         'The "eu" form of "fazer" is "faço".',
         127
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fazo', false, 0),
       ('faço', true, 1),
       ('faz', false, 2),
       ('faci', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 128 (verb: fazer nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "fazer" for "nós" in the present.',
         '"Nós" of "fazer" is "fazemos".',
         'fazemos',
         'The "nós" form of "fazer" is "fazemos".',
         128
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('façamos', false, 0),
       ('fazemos', true, 1),
       ('fazimos', false, 2),
       ('fizemos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 129 (verb: dar eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dar" (to give) for "eu" in the present.',
         '"Dar": dou, dá, damos, dão.',
         'dou',
         'The "eu" form of "dar" is "dou".',
         129
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dou', true, 0),
       ('dá', false, 1),
       ('damos', false, 2),
       ('do', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 130 (verb meaning: falo português) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Eu falo português" mean?',
         'Portuguese allows subject pronouns to be dropped, but they''re also commonly kept: "Eu falo português" = "I speak Portuguese".',
         'I speak Portuguese',
         '"Eu falo português" means "I speak Portuguese".',
         130
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('You speak Portuguese', false, 0),
       ('I spoke Portuguese', false, 1),
       ('She speaks Portuguese', false, 2),
       ('I speak Portuguese', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 131 (verb meaning: como) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "como" mean as a verb form?',
         '"Como" is the "eu" present form of "comer" (to eat) — "I eat". (It can also mean "how" or "as".)',
         'I eat',
         'As a verb form, "como" means "I eat".',
         131
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I eat', true, 0),
       ('I ate', false, 1),
       ('I drink', false, 2),
       ('I want', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 132 (verb: beber eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "beber" (to drink) for "eu" in the present.',
         'Regular -er: beb + o = bebo.',
         'bebo',
         'The "eu" form of "beber" is "bebo".',
         132
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('bebe', false, 0),
       ('bebo', true, 1),
       ('beberi', false, 2),
       ('beberei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 133 (verb: vir eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vir" (to come) for "eu" in the present.',
         '"Vir": venho, vem, vimos, vêm. Note "venho" with nh — very irregular.',
         'venho',
         'The "eu" form of "vir" is "venho".',
         133
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vino', false, 0),
       ('veno', false, 1),
       ('venho', true, 2),
       ('vou', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 134 (verb: sair eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "sair" (to leave/go out) for "eu" in the present.',
         '"Sair": saio, sai, saímos, saem. Note "saio" — the "i" goes with "o" creating /ai-u/.',
         'saio',
         'The "eu" form of "sair" is "saio".',
         134
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('saio', true, 0),
       ('sou', false, 1),
       ('sai', false, 2),
       ('saimo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 135 (verb: poder eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "poder" (can/to be able to) for "eu" in the present.',
         '"Poder": posso, pode, podemos, podem. Stem change o→o (mostly regular except "posso").',
         'posso',
         'The "eu" form of "poder" is "posso".',
         135
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pode', false, 0),
       ('podo', false, 1),
       ('posso', true, 2),
       ('puedo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 136 (verb: querer eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "querer" (to want) for "eu" in the present.',
         '"Querer": quero, quer, queremos, querem. Note "eu quero" (no -o ending dropped from stem).',
         'quero',
         'The "eu" form of "querer" is "quero".',
         136
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('querei', false, 0),
       ('querio', false, 1),
       ('querere', false, 2),
       ('quero', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 137 (verb: dever eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dever" (must/should) for "eu" in the present.',
         'Regular -er: dev + o = devo. ("Devo" can mean "I must" or "I owe".)',
         'devo',
         'The "eu" form of "dever" is "devo".',
         137
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('devo', true, 0),
       ('devio', false, 1),
       ('deva', false, 2),
       ('devera', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 138 (verb: saber eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "saber" (to know facts) for "eu" in the present.',
         '"Saber" is irregular in the eu form: sei, sabe, sabemos, sabem.',
         'sei',
         'The "eu" form of "saber" is "sei".',
         138
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sabo', false, 0),
       ('sei', true, 1),
       ('sao', false, 2),
       ('sapio', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 139 (verb meaning: estou com fome) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Estou com fome" mean?',
         'Portuguese uses "estar com" + noun for body sensations: "Estou com fome" literally "I''m with hunger" = "I''m hungry".',
         'I''m hungry',
         '"Estou com fome" means "I''m hungry".',
         139
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I''m tired', false, 0),
       ('I''m hungry', true, 1),
       ('I''m cold', false, 2),
       ('I''m ready', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 140 (verb meaning: estou com sede) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Estou com sede" mean?',
         'Same "estar com" pattern: "Estou com sede" = "I have thirst" = "I''m thirsty".',
         'I''m thirsty',
         '"Estou com sede" means "I''m thirsty".',
         140
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I''m hot', false, 0),
       ('I''m sleepy', false, 1),
       ('I''m thirsty', true, 2),
       ('I''m happy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 141 (verb meaning: estou com frio) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Estou com frio" mean?',
         'For temperature sensations BR uses "estar com": "Estou com frio" = "I''m cold".',
         'I''m cold',
         '"Estou com frio" means "I''m cold".',
         141
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s cold', false, 0),
       ('I''m cold', true, 1),
       ('I have a cold', false, 2),
       ('I want a coat', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 142 (verb meaning: tenho 20 anos) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I am 20 years old" in Portuguese?',
         'Portuguese uses "ter" for age: "Tenho 20 anos" — literally "I have 20 years".',
         'Tenho 20 anos',
         '"I''m 20 years old" is "Tenho 20 anos".',
         142
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Sou 20 anos', false, 0),
       ('Estou 20 anos', false, 1),
       ('Tenho 20 anos', true, 2),
       ('Tenho 20 velho', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 143 (verb: estou falando) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I am speaking" (right now) in Brazilian Portuguese?',
         'BR uses "estar" + gerund: "Estou falando". (Portugal uses "estar a + infinitive": "Estou a falar".)',
         'Estou falando',
         '"I am speaking" (BR) is "Estou falando".',
         143
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Estou a falar', false, 0),
       ('Estou falando', true, 1),
       ('Falo agora', false, 2),
       ('Sou falando', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 144 (fill: vou à escola) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Eu ___ à escola todos os dias." (I go to school every day.)',
         '"Vou" is the eu form of "ir" (to go).',
         'vou',
         'The blank takes "vou" (eu ir).',
         144
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vou', true, 0),
       ('vai', false, 1),
       ('vamos', false, 2),
       ('vão', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 145 (fill: nós somos) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Fill in: "Nós ___ brasileiros." (We are Brazilian.)',
         '"Somos" is the nós form of "ser".',
         'somos',
         'The blank takes "somos" (nós ser).',
         145
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('são', false, 0),
       ('somos', true, 1),
       ('estamos', false, 2),
       ('temos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 146 (verb: gostar de) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I like pizza" in Portuguese?',
         '"Gostar" requires the preposition "de": "Gosto de pizza" — literally "I like of pizza".',
         'Gosto de pizza',
         '"I like pizza" is "Gosto de pizza".',
         146
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu gosto pizza', false, 0),
       ('Me gusta pizza', false, 1),
       ('Gosto de pizza', true, 2),
       ('A pizza me quer', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 147 (verb: gostar dos) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I like cats" in Portuguese?',
         '"Gostar de" + definite article: de + os = "dos". "Gosto dos gatos" = "I like cats".',
         'Gosto dos gatos',
         '"I like cats" is "Gosto dos gatos".',
         147
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Gosto de gatos / Gosto dos gatos', true, 0),
       ('Gosto gatos', false, 1),
       ('Eu gosto a gatos', false, 2),
       ('Me gusto gatos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 148 (verb: ler eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ler" (to read) for "eu" in the present.',
         '"Ler" is irregular: leio, lê, lemos, leem.',
         'leio',
         'The "eu" form of "ler" is "leio".',
         148
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lo', false, 0),
       ('lê', false, 1),
       ('leio', true, 2),
       ('lego', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 149 (verb: escrever nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "escrever" (to write) for "nós" in the present.',
         'Regular -er: escrev + emos = escrevemos.',
         'escrevemos',
         'The "nós" form of "escrever" is "escrevemos".',
         149
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('escrevamos', false, 0),
       ('escrevemos', true, 1),
       ('escrevimos', false, 2),
       ('escreveriamos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 150 (pretérito perfeito: comi) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I ate" (pretérito perfeito) to Portuguese.',
         'Pretérito perfeito of "comer" for eu: "Comi". Unlike Italian, BR Portuguese uses a single-word simple past for completed actions.',
         'Comi',
         '"I ate" in Portuguese is "Comi".',
         150
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Comia', false, 0),
       ('Comi', true, 1),
       ('Tenho comido', false, 2),
       ('Comerei', false, 3)
     ) as c(label, is_correct, order_index);


-- Question 151 (pretérito perfeito: falar eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "falar"?',
         '-ar verbs in pretérito perfeito (eu): -ei. fal + ei = falei.',
         'falei',
         'The "eu" pretérito perfeito of "falar" is "falei".',
         151
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falo', false, 0),
       ('falava', false, 1),
       ('falei', true, 2),
       ('falarei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 152 (pretérito perfeito: vender eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "vender"?',
         '-er verbs in pretérito perfeito (eu): -i. vend + i = vendi.',
         'vendi',
         'The "eu" pretérito perfeito of "vender" is "vendi".',
         152
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendei', false, 0),
       ('vendi', true, 1),
       ('vendia', false, 2),
       ('venderei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 153 (pretérito perfeito: dormir eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "dormir"?',
         '-ir verbs in pretérito perfeito (eu): -i. dorm + i = dormi.',
         'dormi',
         'The "eu" pretérito perfeito of "dormir" is "dormi".',
         153
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dormei', false, 0),
       ('dormia', false, 1),
       ('dormi', true, 2),
       ('durmi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 154 (pretérito perfeito: falar ele) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "ele/ela/você" pretérito perfeito of "falar"?',
         '-ar pretérito perfeito (ele): -ou. fal + ou = falou.',
         'falou',
         'The "ele" pretérito perfeito of "falar" is "falou".',
         154
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falou', true, 0),
       ('falu', false, 1),
       ('falava', false, 2),
       ('falaria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 155 (pretérito perfeito: vender ele) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "ele/ela/você" pretérito perfeito of "vender"?',
         '-er pretérito perfeito (ele): -eu. vend + eu = vendeu.',
         'vendeu',
         'The "ele" pretérito perfeito of "vender" is "vendeu".',
         155
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendia', false, 0),
       ('vendeu', true, 1),
       ('vendou', false, 2),
       ('vendi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 156 (pretérito perfeito: dormir ele) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "ele/ela/você" pretérito perfeito of "dormir"?',
         '-ir pretérito perfeito (ele): -iu. dorm + iu = dormiu.',
         'dormiu',
         'The "ele" pretérito perfeito of "dormir" is "dormiu".',
         156
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dormeu', false, 0),
       ('dormia', false, 1),
       ('dormiu', true, 2),
       ('durmiu', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 157 (pretérito perfeito: falar eles) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eles/elas/vocês" pretérito perfeito of "falar"?',
         '-ar pretérito perfeito (eles): -aram. fal + aram = falaram.',
         'falaram',
         'The "eles" pretérito perfeito of "falar" is "falaram".',
         157
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falavam', false, 0),
       ('falaram', true, 1),
       ('falariam', false, 2),
       ('falarão', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 158 (pretérito perfeito: ser/ir fui) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "ser" and "ir"?',
         'Both "ser" and "ir" share the same irregular preterite: fui, foi, fomos, foram. Context disambiguates them.',
         'fui',
         'Both "ser" and "ir" have "fui" as the "eu" preterite.',
         158
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sou', false, 0),
       ('era', false, 1),
       ('fui', true, 2),
       ('vou', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 159 (pretérito perfeito: ter tive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "ter"?',
         '"Ter" pretérito perfeito: tive, teve, tivemos, tiveram. Irregular stem "tiv-".',
         'tive',
         'The "eu" pretérito perfeito of "ter" is "tive".',
         159
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tenhei', false, 0),
       ('tive', true, 1),
       ('tinha', false, 2),
       ('terei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 160 (pretérito perfeito: fazer fiz) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "fazer"?',
         '"Fazer" pretérito perfeito: fiz, fez, fizemos, fizeram.',
         'fiz',
         'The "eu" pretérito perfeito of "fazer" is "fiz".',
         160
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('faci', false, 0),
       ('fazi', false, 1),
       ('faço', false, 2),
       ('fiz', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 161 (pretérito perfeito: dizer disse) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "dizer"?',
         '"Dizer" pretérito perfeito: disse, disse, dissemos, disseram.',
         'disse',
         'The "eu" pretérito perfeito of "dizer" is "disse".',
         161
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('digo', false, 0),
       ('dizi', false, 1),
       ('disse', true, 2),
       ('direi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 162 (pretérito perfeito: ver vi) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito perfeito of "ver"?',
         '"Ver" pretérito perfeito: vi, viu, vimos, viram.',
         'vi',
         'The "eu" pretérito perfeito of "ver" is "vi".',
         162
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vejo', false, 0),
       ('vi', true, 1),
       ('via', false, 2),
       ('verei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 163 (participle: falado) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "falar"?',
         'Regular -ar verbs form the past participle with -ado: falado.',
         'falado',
         'The past participle of "falar" is "falado".',
         163
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falado', true, 0),
       ('falido', false, 1),
       ('falei', false, 2),
       ('falando', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 164 (participle: comido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "comer"?',
         'Regular -er verbs form the past participle with -ido: comido.',
         'comido',
         'The past participle of "comer" is "comido".',
         164
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('comado', false, 0),
       ('comendo', false, 1),
       ('comido', true, 2),
       ('comi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 165 (participle: vivido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "viver"?',
         'Regular -er: viv + ido = vivido.',
         'vivido',
         'The past participle of "viver" is "vivido".',
         165
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vivado', false, 0),
       ('vivido', true, 1),
       ('vivo', false, 2),
       ('vivendo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 166 (participle: feito) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "fazer"?',
         'The irregular past participle of "fazer" is "feito".',
         'feito',
         'The past participle of "fazer" is "feito".',
         166
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fazido', false, 0),
       ('feito', true, 1),
       ('fato', false, 2),
       ('fazido', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 167 (participle: dito) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "dizer"?',
         'The irregular past participle of "dizer" is "dito".',
         'dito',
         'The past participle of "dizer" is "dito".',
         167
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dizido', false, 0),
       ('disse', false, 1),
       ('disso', false, 2),
       ('dito', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 168 (participle: visto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "ver"?',
         'The irregular past participle of "ver" is "visto".',
         'visto',
         'The past participle of "ver" is "visto".',
         168
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vido', false, 0),
       ('visto', true, 1),
       ('viu', false, 2),
       ('vejo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 169 (participle: escrito) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "escrever"?',
         'The irregular past participle of "escrever" is "escrito".',
         'escrito',
         'The past participle of "escrever" is "escrito".',
         169
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('escrevido', false, 0),
       ('escrevendo', false, 1),
       ('escrito', true, 2),
       ('escriveu', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 170 (participle: posto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "pôr" (to put)?',
         'The irregular past participle of "pôr" is "posto".',
         'posto',
         'The past participle of "pôr" is "posto".',
         170
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('ponhido', false, 0),
       ('pondo', false, 1),
       ('posto', true, 2),
       ('punhido', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 171 (participle: aberto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "abrir"?',
         'The irregular past participle of "abrir" is "aberto".',
         'aberto',
         'The past participle of "abrir" is "aberto".',
         171
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('abrido', false, 0),
       ('aberto', true, 1),
       ('abrindo', false, 2),
       ('abriu', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 172 (participle: morto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the past participle of "morrer"?',
         'The irregular past participle of "morrer" is "morto".',
         'morto',
         'The past participle of "morrer" is "morto".',
         172
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('morrido', false, 0),
       ('morrendo', false, 1),
       ('morto', true, 2),
       ('morreu', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 173 (imperfeito: falar eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito imperfeito of "falar"?',
         '-ar imperfeito: -ava, -ava, -ávamos, -avam. "Falava" = "I was speaking / I used to speak".',
         'falava',
         'The "eu" imperfeito of "falar" is "falava".',
         173
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falei', false, 0),
       ('falava', true, 1),
       ('falo', false, 2),
       ('falarei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 174 (imperfeito: vender eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito imperfeito of "vender"?',
         '-er imperfeito: -ia, -ia, -íamos, -iam. "Vendia" = "I was selling / I used to sell".',
         'vendia',
         'The "eu" imperfeito of "vender" is "vendia".',
         174
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendi', false, 0),
       ('vendia', true, 1),
       ('vendava', false, 2),
       ('vendera', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 175 (imperfeito: dormir eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito imperfeito of "dormir"?',
         '-ir imperfeito: -ia, -ia, -íamos, -iam. "Dormia" = "I was sleeping".',
         'dormia',
         'The "eu" imperfeito of "dormir" is "dormia".',
         175
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dormava', false, 0),
       ('dormi', false, 1),
       ('dormia', true, 2),
       ('durmia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 176 (imperfeito: ser era) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito imperfeito of "ser"?',
         '"Ser" imperfeito: era, era, éramos, eram.',
         'era',
         'The "eu" imperfeito of "ser" is "era".',
         176
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('era', true, 0),
       ('fui', false, 1),
       ('seria', false, 2),
       ('estava', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 177 (imperfeito: ter tinha) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito imperfeito of "ter"?',
         '"Ter" imperfeito: tinha, tinha, tínhamos, tinham.',
         'tinha',
         'The "eu" imperfeito of "ter" is "tinha".',
         177
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tive', false, 0),
       ('tinha', true, 1),
       ('terei', false, 2),
       ('tivera', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 178 (imperfeito: ir ia) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito imperfeito of "ir"?',
         '"Ir" imperfeito: ia, ia, íamos, iam.',
         'ia',
         'The "eu" imperfeito of "ir" is "ia".',
         178
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fui', false, 0),
       ('ia', true, 1),
       ('vou', false, 2),
       ('iria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 179 (imperfeito: vir vinha) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" pretérito imperfeito of "vir"?',
         '"Vir" imperfeito: vinha, vinha, vínhamos, vinham.',
         'vinha',
         'The "eu" imperfeito of "vir" is "vinha".',
         179
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vim', false, 0),
       ('venho', false, 1),
       ('vinha', true, 2),
       ('virei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 180 (perfeito vs imperfeito: habitual) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which past tense expresses habitual actions ("used to")?',
         'The pretérito imperfeito is used for ongoing, habitual, or descriptive past actions: "Quando era criança, brincava no parque".',
         'pretérito imperfeito',
         'Habitual past ("used to") uses the pretérito imperfeito.',
         180
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pretérito perfeito', false, 0),
       ('pretérito imperfeito', true, 1),
       ('futuro do presente', false, 2),
       ('futuro do pretérito', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 181 (perfeito: completed) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which past tense expresses a single completed action with a clear endpoint?',
         'The pretérito perfeito describes single, completed events: "Ontem comi pizza".',
         'pretérito perfeito',
         'Completed single past events use the pretérito perfeito.',
         181
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pretérito imperfeito', false, 0),
       ('futuro do pretérito', false, 1),
       ('pretérito perfeito', true, 2),
       ('mais-que-perfeito', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 182 (imperfeito: description) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which tense is used to describe weather, time, age, and feelings in the past?',
         'Background descriptions (weather, time, age, feelings) use the pretérito imperfeito: "Fazia frio e eu tinha medo".',
         'pretérito imperfeito',
         'Past background description uses the pretérito imperfeito.',
         182
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pretérito perfeito', false, 0),
       ('pretérito imperfeito', true, 1),
       ('mais-que-perfeito', false, 2),
       ('futuro composto', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 183 (translate: I was eating) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I was eating" to Portuguese.',
         'Continuous past = imperfeito ("Comia") or imperfect of "estar" + gerund ("Estava comendo"). Both are valid.',
         'Comia / Estava comendo',
         '"I was eating" is "Comia" or "Estava comendo".',
         183
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Comi', false, 0),
       ('Comia', true, 1),
       ('Comerei', false, 2),
       ('Como', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 184 (translate: I ate yesterday) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I ate pizza yesterday" to Portuguese.',
         'Completed event yesterday → pretérito perfeito: "Ontem eu comi pizza".',
         'Ontem eu comi pizza',
         '"I ate pizza yesterday" is "Ontem eu comi pizza".',
         184
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ontem eu comia pizza', false, 0),
       ('Ontem eu comi pizza', true, 1),
       ('Ontem eu comerei pizza', false, 2),
       ('Ontem eu tinha comido pizza', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 185 (translate: I used to read) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I used to read every day" to Portuguese.',
         'Habitual past = imperfeito: "Lia todos os dias".',
         'Lia todos os dias',
         '"I used to read every day" is "Lia todos os dias".',
         185
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Li todos os dias', false, 0),
       ('Lerei todos os dias', false, 1),
       ('Lia todos os dias', true, 2),
       ('Tinha lido todos os dias', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 186 (translate: she went out) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She went out" (pretérito perfeito) to Portuguese.',
         'Pretérito perfeito of "sair" for ela: "Ela saiu". No auxiliary needed — Portuguese uses a simple past.',
         'Ela saiu',
         '"She went out" is "Ela saiu".',
         186
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ela tem saído', false, 0),
       ('Ela saiu', true, 1),
       ('Ela saía', false, 2),
       ('Ela sairá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 187 (translate: they ate) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "They ate" (pretérito perfeito) to Portuguese.',
         'Pretérito perfeito of "comer" for eles: "Eles comeram".',
         'Eles comeram',
         '"They ate" is "Eles comeram".',
         187
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eles comem', false, 0),
       ('Eles comiam', false, 1),
       ('Eles comeram', true, 2),
       ('Eles têm comido', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 188 (translate: he was sleeping when I arrived) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "He was sleeping when I arrived." to Portuguese.',
         'Background action = imperfeito; interrupting action = pretérito perfeito: "Ele dormia quando eu cheguei".',
         'Ele dormia quando eu cheguei',
         '"He was sleeping when I arrived" is "Ele dormia quando eu cheguei".',
         188
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele dormiu quando eu chegava.', false, 0),
       ('Ele dormia quando eu cheguei.', true, 1),
       ('Ele dormirá quando eu cheguei.', false, 2),
       ('Ele dormia quando eu chegava.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 189 (translate: I had a dog) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "When I was a child, I had a dog" to Portuguese.',
         'Both verbs describe a continuous state → imperfeito: "Quando eu era criança, tinha um cachorro".',
         'Quando eu era criança, tinha um cachorro',
         'Both clauses are continuous past states → imperfeito.',
         189
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quando eu fui criança, tive um cachorro', false, 0),
       ('Quando eu era criança, tinha um cachorro', true, 1),
       ('Quando eu sou criança, tenho um cachorro', false, 2),
       ('Quando eu serei criança, terei um cachorro', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 190 (translate: I drank) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I drank" (pretérito perfeito) to Portuguese.',
         'Pretérito perfeito of "beber" for eu: "Bebi".',
         'Bebi',
         '"I drank" is "Bebi".',
         190
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Bebia', false, 0),
       ('Bebo', false, 1),
       ('Bebi', true, 2),
       ('Beberei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 191 (translate: she opened) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "She opened the door" to Portuguese.',
         'Pretérito perfeito of "abrir" for ela: "Ela abriu a porta".',
         'Ela abriu a porta',
         '"She opened the door" is "Ela abriu a porta".',
         191
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ela abre a porta', false, 0),
       ('Ela abriu a porta', true, 1),
       ('Ela abria a porta', false, 2),
       ('Ela tem aberto a porta', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 192 (translate: I came back) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I came back" (pretérito perfeito) to Portuguese.',
         'Pretérito perfeito of "voltar" for eu: "Voltei".',
         'Voltei',
         '"I came back" is "Voltei".',
         192
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Volto', false, 0),
       ('Voltei', true, 1),
       ('Voltava', false, 2),
       ('Voltarei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 193 (translate: I have lived) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I lived in Rio for two years" to Portuguese.',
         'A bounded completed past stay uses pretérito perfeito: "Morei no Rio por dois anos".',
         'Morei no Rio por dois anos',
         '"I lived in Rio for two years" is "Morei no Rio por dois anos".',
         193
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Morava no Rio por dois anos', false, 0),
       ('Morei no Rio por dois anos', true, 1),
       ('Moro no Rio por dois anos', false, 2),
       ('Morarei no Rio por dois anos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 194 (imperfeito: noi parlare = nós falar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "nós" pretérito imperfeito of "falar"?',
         '-ar imperfeito, nós: -ávamos. "Falávamos" = "we were speaking / used to speak".',
         'falávamos',
         'The "nós" imperfeito of "falar" is "falávamos".',
         194
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falamos', false, 0),
       ('falávamos', true, 1),
       ('falaríamos', false, 2),
       ('falaremos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 195 (imperfeito: você ser era) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "você" pretérito imperfeito of "ser"?',
         '"Ser" imperfeito for você/ele/ela is "era".',
         'era',
         'The "você" imperfeito of "ser" is "era".',
         195
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('foi', false, 0),
       ('era', true, 1),
       ('seria', false, 2),
       ('está', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 196 (pretérito perfeito: você falar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Did you eat?" (informal, addressing "você") in Portuguese?',
         'Pretérito perfeito of "comer" for você: "Você comeu?". Portuguese doesn''t use do-support.',
         'Você comeu?',
         '"Did you eat?" is "Você comeu?".',
         196
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Você come?', false, 0),
       ('Você comeu?', true, 1),
       ('Você comia?', false, 2),
       ('Você comerá?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 197 (perfeito vs imperfeito: weather all morning) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the best Portuguese for "It was raining all morning."',
         'Continuous weather over a stretch of time = imperfeito: "Chovia a manhã toda" (or BR-style "Estava chovendo a manhã toda").',
         'Chovia a manhã toda',
         '"It was raining all morning" → "Chovia a manhã toda".',
         197
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Choveu a manhã toda', false, 0),
       ('Chovia a manhã toda', true, 1),
       ('Chove a manhã toda', false, 2),
       ('Choverá a manhã toda', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 198 (translate: I had eaten — pluperfect intro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you express "I had eaten" (mais-que-perfeito composto) in everyday Brazilian Portuguese?',
         'BR everyday speech uses the compound mais-que-perfeito: imperfeito of "ter" + past participle: "Eu tinha comido".',
         'Eu tinha comido',
         'Compound pluperfect: "Eu tinha comido" = "I had eaten".',
         198
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu comi', false, 0),
       ('Eu comerei', false, 1),
       ('Eu tinha comido', true, 2),
       ('Eu coma', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 199 (translate: he had gone) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "He had gone" (mais-que-perfeito composto) to Portuguese.',
         'Imperfeito of "ter" + past participle of "ir" → "Ele tinha ido". The participle does NOT agree with the subject in this construction.',
         'Ele tinha ido',
         '"He had gone" is "Ele tinha ido".',
         199
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele foi', false, 0),
       ('Ele tinha ido', true, 1),
       ('Ele tem ido', false, 2),
       ('Ele iria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 200 (futuro: eu falar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro do presente of "falar"?',
         'Futuro endings (added to the infinitive): -ei, -á, -emos, -ão. falar + ei = falarei.',
         'falarei',
         'The "eu" futuro of "falar" is "falarei".',
         200
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falo', false, 0),
       ('falarei', true, 1),
       ('falaria', false, 2),
       ('falava', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 201 (futuro: você vender) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "você/ele/ela" futuro of "vender"?',
         '-er futuro: vender + á = venderá.',
         'venderá',
         'The "você" futuro of "vender" is "venderá".',
         201
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendeu', false, 0),
       ('vendia', false, 1),
       ('venderá', true, 2),
       ('venderia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 202 (futuro: ele dormir) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "ele/ela/você" futuro of "dormir"?',
         '-ir futuro: dormir + á = dormirá.',
         'dormirá',
         'The "ele" futuro of "dormir" is "dormirá".',
         202
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dorme', false, 0),
       ('dormiria', false, 1),
       ('dormirá', true, 2),
       ('dormiu', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 203 (futuro: ser serei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "ser"?',
         '"Ser" futuro is regular on the infinitive: serei, será, seremos, serão.',
         'serei',
         'The "eu" futuro of "ser" is "serei".',
         203
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sou', false, 0),
       ('fui', false, 1),
       ('serei', true, 2),
       ('seria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 204 (futuro: ter terei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "ter"?',
         '"Ter" futuro: terei, terá, teremos, terão.',
         'terei',
         'The "eu" futuro of "ter" is "terei".',
         204
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tenho', false, 0),
       ('terei', true, 1),
       ('teria', false, 2),
       ('tinha', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 205 (futuro: ir irei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro do presente of "ir"?',
         '"Ir" futuro do presente: irei, irá, iremos, irão.',
         'irei',
         'The "eu" futuro of "ir" is "irei".',
         205
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vou', false, 0),
       ('fui', false, 1),
       ('iria', false, 2),
       ('irei', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 206 (futuro: fazer farei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "fazer"?',
         '"Fazer" has an irregular futuro stem "far-": farei, fará, faremos, farão.',
         'farei',
         'The "eu" futuro of "fazer" is "farei".',
         206
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fazerei', false, 0),
       ('faço', false, 1),
       ('farei', true, 2),
       ('fizesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 207 (futuro: dizer direi) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "dizer"?',
         '"Dizer" has irregular futuro stem "dir-": direi, dirá, diremos, dirão.',
         'direi',
         'The "eu" futuro of "dizer" is "direi".',
         207
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dizerei', false, 0),
       ('digo', false, 1),
       ('dissesse', false, 2),
       ('direi', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 208 (futuro: vir virei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "vir"?',
         '"Vir" futuro: virei, virá, viremos, virão.',
         'virei',
         'The "eu" futuro of "vir" is "virei".',
         208
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('venho', false, 0),
       ('vim', false, 1),
       ('virei', true, 2),
       ('viria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 209 (futuro: querer quererei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "querer"?',
         '"Querer" futuro is regular on infinitive: quererei, quererá, quereremos, quererão.',
         'quererei',
         'The "eu" futuro of "querer" is "quererei".',
         209
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('quero', false, 0),
       ('quis', false, 1),
       ('quererei', true, 2),
       ('quereria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 210 (futuro: poder poderei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "poder"?',
         '"Poder" futuro: poderei, poderá, poderemos, poderão.',
         'poderei',
         'The "eu" futuro of "poder" is "poderei".',
         210
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('posso', false, 0),
       ('pude', false, 1),
       ('poderei', true, 2),
       ('poderia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 211 (futuro: dever deverei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "dever"?',
         '"Dever" futuro: deverei, deverá, deveremos, deverão.',
         'deverei',
         'The "eu" futuro of "dever" is "deverei".',
         211
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('devo', false, 0),
       ('deveria', false, 1),
       ('deverei', true, 2),
       ('devi', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 212 (futuro: saber saberei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro of "saber"?',
         '"Saber" futuro: saberei, saberá, saberemos, saberão.',
         'saberei',
         'The "eu" futuro of "saber" is "saberei".',
         212
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sei', false, 0),
       ('saberei', true, 1),
       ('saberia', false, 2),
       ('soube', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 213 (translate: I will go) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I will go to Brazil" (futuro do presente) to Portuguese.',
         'Futuro do presente of "ir": "Irei ao Brasil". Note "ao" = "a + o" before masculine country.',
         'Irei ao Brasil',
         '"I will go to Brazil" is "Irei ao Brasil".',
         213
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vou a Brasil', false, 0),
       ('Irei ao Brasil', true, 1),
       ('Fui ao Brasil', false, 2),
       ('Iria ao Brasil', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 214 (futuro composto: vou + infinitivo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you express near-future "I''m going to study tomorrow" in colloquial Brazilian Portuguese?',
         'Colloquial BR uses "ir" + infinitive (futuro composto): "Vou estudar amanhã". It''s far more common in speech than "estudarei".',
         'Vou estudar amanhã',
         'Near future in BR speech: "Vou estudar amanhã" (ir + infinitive).',
         214
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Estudo amanhã', false, 0),
       ('Vou estudar amanhã', true, 1),
       ('Estudei amanhã', false, 2),
       ('Estudaria amanhã', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 215 (futuro composto vs futuro do presente) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which of these futures is most common in everyday Brazilian speech: "vou comer" or "comerei"?',
         'In spoken BR Portuguese the periphrastic "vou + infinitive" dominates; "comerei" survives mostly in formal/written contexts.',
         'vou comer (futuro composto)',
         'Spoken BR Portuguese prefers "vou + infinitive" over the simple futuro.',
         215
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('comerei (futuro simples)', false, 0),
       ('Both are equally common', false, 1),
       ('vou comer (futuro composto)', true, 2),
       ('Neither — only present tense is used', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 216 (futuro: probability) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Ele estará em casa" most likely mean (speculation context)?',
         'Portuguese uses the futuro to express probability/conjecture in the present: "He''s probably at home".',
         'He must be / is probably at home',
         'Futuro can express present probability: "Ele estará em casa".',
         216
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('He will be at home (definite future)', false, 0),
       ('He must be / is probably at home', true, 1),
       ('He was at home', false, 2),
       ('He had been at home', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 217 (futuro do pretérito: falar eu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" futuro do pretérito (conditional) of "falar"?',
         'Futuro do pretérito endings (on the infinitive): -ia, -ia, -íamos, -iam. falar + ia = falaria.',
         'falaria',
         'The "eu" conditional of "falar" is "falaria".',
         217
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falava', false, 0),
       ('falarei', false, 1),
       ('falaria', true, 2),
       ('falasse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 218 (futuro do pretérito: ele falar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "ele/ela/você" conditional of "falar"?',
         'Conditional, ele/ela/você: falar + ia = falaria (same form as eu).',
         'falaria',
         'The "ele" conditional of "falar" is "falaria".',
         218
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falaria', true, 0),
       ('falariam', false, 1),
       ('falava', false, 2),
       ('falará', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 219 (conditional: gostaria) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Gostaria de um café" mean?',
         '"Gostaria" is the futuro do pretérito of "gostar" — the polite "I would like".',
         'I would like a coffee',
         '"Gostaria de um café" means "I would like a coffee".',
         219
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I want a coffee (rude)', false, 0),
       ('I wanted a coffee', false, 1),
       ('I would like a coffee', true, 2),
       ('I will have a coffee', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 220 (conditional: ser seria) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" conditional of "ser"?',
         '"Ser" conditional: seria, seria, seríamos, seriam.',
         'seria',
         'The "eu" conditional of "ser" is "seria".',
         220
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('seria', true, 0),
       ('serei', false, 1),
       ('fui', false, 2),
       ('era', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 221 (conditional: ter teria) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" conditional of "ter"?',
         '"Ter" conditional: teria, teria, teríamos, teriam.',
         'teria',
         'The "eu" conditional of "ter" is "teria".',
         221
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tinha', false, 0),
       ('terei', false, 1),
       ('teria', true, 2),
       ('tenho', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 222 (conditional: ir iria) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eu" conditional of "ir"?',
         '"Ir" conditional: iria, iria, iríamos, iriam.',
         'iria',
         'The "eu" conditional of "ir" is "iria".',
         222
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vou', false, 0),
       ('irei', false, 1),
       ('iria', true, 2),
       ('ia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 223 (conditional: politeness) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Why is the futuro do pretérito often used for polite requests in Portuguese?',
         'The conditional softens requests, making them less direct (like English "would" or "could").',
         'To soften requests / be polite',
         'The conditional is used to make requests more polite.',
         223
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It''s grammatically required', false, 0),
       ('To soften requests and be polite', true, 1),
       ('It refers to the past', false, 2),
       ('Only verbs of motion need it', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 224 (translate: I would eat) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I would eat pizza" to Portuguese.',
         'Conditional of "comer": "Comeria pizza".',
         'Comeria pizza',
         '"I would eat pizza" is "Comeria pizza".',
         224
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Comia pizza', false, 0),
       ('Comerei pizza', false, 1),
       ('Comeria pizza', true, 2),
       ('Comesse pizza', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 225 (conditional perfect: teria comido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you form the conditional perfect (futuro do pretérito composto) of "comer" for "eu"?',
         'Conditional perfect = conditional of "ter" + past participle: "Teria comido".',
         'Teria comido',
         'Conditional perfect (eu, comer) = "Teria comido".',
         225
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Comeria', false, 0),
       ('Teria comido', true, 1),
       ('Tenho comido', false, 2),
       ('Tinha comido', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 226 (conditional perfect: meaning) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Teria comido" mean in English?',
         'Conditional perfect translates as "would have + past participle": "I would have eaten".',
         'I would have eaten',
         '"Teria comido" = "I would have eaten".',
         226
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I would eat', false, 0),
       ('I had eaten', false, 1),
       ('I will have eaten', false, 2),
       ('I would have eaten', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 227 (mais-que-perfeito: form) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How is the compound mais-que-perfeito formed in everyday BR Portuguese?',
         'Compound mais-que-perfeito = imperfeito of "ter" (or "haver") + past participle: "Tinha comido" / "Tinha ido".',
         'imperfeito of ter/haver + past participle',
         'Compound mais-que-perfeito = imperfeito of ter/haver + past participle.',
         227
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('present of ter + participle', false, 0),
       ('imperfeito of ter/haver + past participle', true, 1),
       ('futuro of ter + infinitive', false, 2),
       ('conditional of ter + present', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 228 (mais-que-perfeito: tinha comido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Eu tinha comido" mean?',
         'Compound mais-que-perfeito expresses a past action prior to another past action: "I had eaten".',
         'I had eaten',
         '"Eu tinha comido" = "I had eaten".',
         228
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I would eat', false, 0),
       ('I had eaten', true, 1),
       ('I was eating', false, 2),
       ('I have eaten', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 229 (mais-que-perfeito: tinha ido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Ele tinha ido" mean?',
         'Compound pluperfect of "ir": "He had gone". Unlike Italian/French, the participle doesn''t agree with the subject in this construction.',
         'He had gone',
         '"Ele tinha ido" = "He had gone".',
         229
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('He was going', false, 0),
       ('He will go', false, 1),
       ('He had gone', true, 2),
       ('He went', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 230 (translate: when he arrived I had left) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "When he arrived, I had already left." to Portuguese.',
         '"Arrived" = pretérito perfeito; "had already left" = compound pluperfect: "Quando ele chegou, eu já tinha saído".',
         'Quando ele chegou, eu já tinha saído',
         'Earlier-past action takes compound pluperfect (tinha + particípio).',
         230
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quando ele chegava, eu saía já', false, 0),
       ('Quando ele chegou, eu já tinha saído', true, 1),
       ('Quando ele chegará, eu saí', false, 2),
       ('Quando ele chegava, eu tenho saído', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 231 (futuro composto vs futuro do presente) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What''s the difference between "Vou estudar" and "Estudarei"?',
         'Both can express future. "Vou estudar" (ir + infinitive) is colloquial/near-future; "Estudarei" (futuro simples) is more formal/distant.',
         'vou + inf. = colloquial; futuro simples = formal',
         '"Vou estudar" is colloquial near-future; "Estudarei" is more formal.',
         231
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('No difference, fully interchangeable in all registers', false, 0),
       ('"Vou estudar" is past, "Estudarei" is future', false, 1),
       ('"Vou estudar" is colloquial/near future; "Estudarei" is more formal', true, 2),
       ('"Vou estudar" is conditional, "Estudarei" is future', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 232 (translate: I would like to go) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I would like to go to the beach" in Portuguese?',
         '"Gostaria de ir à praia" uses conditional "gostaria" + "de" + infinitive.',
         'Gostaria de ir à praia',
         '"I''d like to go to the beach" is "Gostaria de ir à praia".',
         232
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quero ir à praia', false, 0),
       ('Gostaria ido à praia', false, 1),
       ('Gostaria de ir à praia', true, 2),
       ('Iria gostar à praia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 233 (translate: you should go) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "You should go to the doctor" (informal, addressing "você") to Portuguese.',
         '"Deveria" is the conditional of "dever" — used for advice: "Você deveria ir ao médico".',
         'Você deveria ir ao médico',
         '"You should go to the doctor" → "Você deveria ir ao médico".',
         233
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Você deve ir ao médico', false, 0),
       ('Você deverá ir ao médico', false, 1),
       ('Você deveria ir ao médico', true, 2),
       ('Vai ao médico', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 234 (futuro: tomorrow I will study) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "Tomorrow I will study" (formal/written futuro) to Portuguese.',
         'Futuro do presente of "estudar" for eu: "Amanhã estudarei".',
         'Amanhã estudarei',
         '"Tomorrow I will study" is "Amanhã estudarei" (or colloquially "Amanhã vou estudar").',
         234
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Amanhã estudo', false, 0),
       ('Amanhã estudei', false, 1),
       ('Amanhã estudava', false, 2),
       ('Amanhã estudarei', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 235 (conditional: nós falar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "nós" conditional of "falar"?',
         'Nós conditional, -ar: falar + íamos = falaríamos.',
         'falaríamos',
         'The "nós" conditional of "falar" is "falaríamos".',
         235
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falaríamos', true, 0),
       ('falaremos', false, 1),
       ('falavamos', false, 2),
       ('falássemos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 236 (conditional vs futuro distinction) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which form is futuro vs conditional: "falarei" vs "falaria"?',
         '"Falarei" = futuro do presente ("I will speak"); "falaria" = futuro do pretérito / conditional ("I would speak").',
         'falarei = future; falaria = conditional',
         '"Falarei" is future; "falaria" is conditional.',
         236
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Both are futuro', false, 0),
       ('Falarei = future; falaria = conditional', true, 1),
       ('Falarei = conditional; falaria = future', false, 2),
       ('Both are conditional', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 237 (futuro: nós viver) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "nós" futuro do presente of "viver"?',
         'Nós futuro, -er: viver + emos = viveremos.',
         'viveremos',
         'The "nós" futuro of "viver" is "viveremos".',
         237
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vivemos', false, 0),
       ('vivíamos', false, 1),
       ('viveremos', true, 2),
       ('viveríamos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 238 (futuro: eles vir) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "eles/elas/vocês" futuro of "vir"?',
         '"Vir" futuro eles: "virão".',
         'virão',
         'The "eles" futuro of "vir" is "virão".',
         238
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('virão', true, 0),
       ('viriam', false, 1),
       ('vieram', false, 2),
       ('vêm', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 239 (mais-que-perfeito: nós tínhamos) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Tínhamos falado" mean?',
         '"Tínhamos" is imperfeito of "ter" for nós → mais-que-perfeito: "We had spoken".',
         'We had spoken',
         '"Tínhamos falado" = "We had spoken".',
         239
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('We were speaking', false, 0),
       ('We spoke', false, 1),
       ('We will speak', false, 2),
       ('We had spoken', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 240 (futuro do subjuntivo: se eu tiver tempo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In "Se eu ___ tempo, irei ao cinema" (If I have time, I''ll go to the movies), what verb form does Portuguese use?',
         'After "se" referring to a real future condition, Portuguese uses the futuro do subjuntivo: "Se eu tiver tempo". This differs from Spanish/Italian!',
         'tiver (futuro do subjuntivo)',
         'Real-future "se" clauses take the futuro do subjuntivo: "Se eu tiver...".',
         240
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tinha', false, 0),
       ('teria', false, 1),
       ('tiver (futuro do subjuntivo)', true, 2),
       ('tenha', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 241 (mais-que-perfeito: ele tinha partido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Ele tinha partido" mean?',
         'Compound mais-que-perfeito of "partir" (m. sing.): "He had left/departed".',
         'He had left',
         '"Ele tinha partido" = "He had left".',
         241
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('He left', false, 0),
       ('He was leaving', false, 1),
       ('He had left', true, 2),
       ('He has left', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 242 (conditional perfect: future-in-the-past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "He said he would come" in Portuguese?',
         'Portuguese uses the futuro do pretérito (conditional) for "future in the past": "Ele disse que viria".',
         'Ele disse que viria',
         '"Future in the past" uses the conditional: "Ele disse que viria".',
         242
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele disse que veio', false, 0),
       ('Ele disse que viria', true, 1),
       ('Ele disse que virá', false, 2),
       ('Ele disse que tinha vindo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 243 (conditional: vocês falar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "vocês/eles/elas" conditional of "falar"?',
         'Conditional, eles/vocês: falar + iam = falariam.',
         'falariam',
         'The "vocês" conditional of "falar" is "falariam".',
         243
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falavam', false, 0),
       ('falaram', false, 1),
       ('falariam', true, 2),
       ('falarão', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 244 (futuro: vocês falar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the "vocês/eles/elas" futuro do presente of "falar"?',
         'Futuro do presente, eles/vocês: falar + ão = falarão.',
         'falarão',
         'The "vocês" futuro of "falar" is "falarão".',
         244
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falaram', false, 0),
       ('falarão', true, 1),
       ('falariam', false, 2),
       ('falavam', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 245 (futuro anterior: meaning) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Terei terminado" mean?',
         'Futuro composto / futuro anterior (futuro of "ter" + participle): "I will have finished".',
         'I will have finished',
         '"Terei terminado" = "I will have finished".',
         245
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I finished', false, 0),
       ('I would have finished', false, 1),
       ('I will have finished', true, 2),
       ('I had finished', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 246 (translate: could you help me) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "Could you help me?" (formal, addressing "o senhor / a senhora") to Portuguese.',
         'Polite request → conditional of "poder" + formal address: "O senhor poderia me ajudar?". Colloquially "Você poderia me ajudar?" is also fine.',
         'O senhor poderia me ajudar?',
         '"Could you help me?" (formal) is "O senhor poderia me ajudar?".',
         246
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('O senhor pode me ajudar?', false, 0),
       ('O senhor poderia me ajudar?', true, 1),
       ('O senhor poderá me ajudar?', false, 2),
       ('O senhor podia me ajudar?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 247 (mais-que-perfeito simples note) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In modern spoken Brazilian Portuguese, what replaces the simple mais-que-perfeito (e.g., "falara")?',
         'The simple mais-que-perfeito (falara, comera, partira) is literary; everyday speech uses the compound form "tinha falado" / "tinha comido".',
         'tinha + particípio (compound form)',
         'Spoken BR uses "tinha + particípio" instead of the literary simple mais-que-perfeito.',
         247
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('the pretérito imperfeito alone', false, 0),
       ('the futuro do pretérito', false, 1),
       ('tinha + particípio (compound form)', true, 2),
       ('the pretérito perfeito alone', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 248 (conditional perfect: teria ido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I would have gone" to Portuguese.',
         'Conditional perfect of "ir": conditional of "ter" + past participle "ido" → "Teria ido".',
         'Teria ido',
         '"I would have gone" is "Teria ido".',
         248
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Iria', false, 0),
       ('Tinha ido', false, 1),
       ('Teria ido', true, 2),
       ('Fui', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 249 (futuro: probability he must be home) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "He must be home" (probability/speculation) to Portuguese.',
         'Portuguese uses the futuro to express probability/conjecture in the present: "Ele estará em casa".',
         'Ele estará em casa',
         '"He must be home" (probability) = "Ele estará em casa".',
         249
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele está em casa', false, 0),
       ('Ele estará em casa', true, 1),
       ('Ele estaria em casa', false, 2),
       ('Ele estava em casa', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 250 (subj. presente: regular -ar falar 1s) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" in the presente do subjuntivo for "eu".',
         'Regular -ar verbs swap the -ar ending for -e endings in the subjunctive: fale, fales, fale, falemos, falem.',
         'fale',
         'The presente do subjuntivo for "eu falar" is "fale".',
         250
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fale', true, 0),
       ('falo', false, 1),
       ('falei', false, 2),
       ('falasse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 251 (subj. presente: regular -er comer 3s) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "comer" in the presente do subjuntivo for "ele".',
         'Regular -er verbs swap -er for -a endings: coma, comas, coma, comamos, comam.',
         'coma',
         'The presente do subjuntivo of "comer" for "ele" is "coma".',
         251
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('come', false, 0),
       ('coma', true, 1),
       ('comeu', false, 2),
       ('comesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 252 (subj. presente: regular -ir partir 1p) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "partir" in the presente do subjuntivo for "nós".',
         'Regular -ir verbs use -a endings like -er: parta, partas, parta, partamos, partam.',
         'partamos',
         'The presente do subjuntivo of "partir" for "nós" is "partamos".',
         252
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('partimos', false, 0),
       ('partíamos', false, 1),
       ('partamos', true, 2),
       ('partíssemos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 253 (subj. presente irregular: ser) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ser" in the presente do subjuntivo for "eu".',
         '"Ser" is irregular in the subjunctive: seja, sejas, seja, sejamos, sejam.',
         'seja',
         'The presente do subjuntivo of "ser" for "eu" is "seja".',
         253
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sou', false, 0),
       ('seja', true, 1),
       ('fosse', false, 2),
       ('era', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 254 (subj. presente irregular: estar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "estar" in the presente do subjuntivo for "ela".',
         '"Estar" in the subjunctive: esteja, estejas, esteja, estejamos, estejam.',
         'esteja',
         'The presente do subjuntivo of "estar" for "ela" is "esteja".',
         254
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('está', false, 0),
       ('estivesse', false, 1),
       ('esteja', true, 2),
       ('estava', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 255 (subj. presente irregular: ter) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ter" in the presente do subjuntivo for "você".',
         '"Ter" in the subjunctive: tenha, tenhas, tenha, tenhamos, tenham.',
         'tenha',
         'The presente do subjuntivo of "ter" for "você" is "tenha".',
         255
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tenha', true, 0),
       ('tem', false, 1),
       ('teve', false, 2),
       ('tivesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 256 (subj. presente irregular: ir) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ir" in the presente do subjuntivo for "eu".',
         '"Ir" in the subjunctive: vá, vás, vá, vamos, vão.',
         'vá',
         'The presente do subjuntivo of "ir" for "eu" is "vá".',
         256
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vou', false, 0),
       ('fosse', false, 1),
       ('ia', false, 2),
       ('vá', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 257 (subj. presente irregular: fazer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "fazer" in the presente do subjuntivo for "ele".',
         '"Fazer" in the subjunctive: faça, faças, faça, façamos, façam.',
         'faça',
         'The presente do subjuntivo of "fazer" for "ele" is "faça".',
         257
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('faz', false, 0),
       ('faça', true, 1),
       ('fizesse', false, 2),
       ('fez', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 258 (subj. presente irregular: dar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dar" in the presente do subjuntivo for "eu".',
         '"Dar" in the subjunctive: dê, dês, dê, demos, deem.',
         'dê',
         'The presente do subjuntivo of "dar" for "eu" is "dê".',
         258
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dou', false, 0),
       ('desse', false, 1),
       ('dê', true, 2),
       ('dei', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 259 (subj. presente irregular: saber) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "saber" in the presente do subjuntivo for "nós".',
         '"Saber" in the subjunctive: saiba, saibas, saiba, saibamos, saibam.',
         'saibamos',
         'The presente do subjuntivo of "saber" for "nós" is "saibamos".',
         259
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sabemos', false, 0),
       ('soubéssemos', false, 1),
       ('sabíamos', false, 2),
       ('saibamos', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 260 (subj. presente irregular: querer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "querer" in the presente do subjuntivo for "eu".',
         '"Querer" in the subjunctive: queira, queiras, queira, queiramos, queiram.',
         'queira',
         'The presente do subjuntivo of "querer" for "eu" is "queira".',
         260
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('queira', true, 0),
       ('quero', false, 1),
       ('quis', false, 2),
       ('quisesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 261 (subj. presente irregular: poder) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "poder" in the presente do subjuntivo for "ele".',
         '"Poder" in the subjunctive: possa, possas, possa, possamos, possam.',
         'possa',
         'The presente do subjuntivo of "poder" for "ele" is "possa".',
         261
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pode', false, 0),
       ('possa', true, 1),
       ('pudesse', false, 2),
       ('pôde', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 262 (subj. presente irregular: dizer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dizer" in the presente do subjuntivo for "eu".',
         '"Dizer" in the subjunctive: diga, digas, diga, digamos, digam.',
         'diga',
         'The presente do subjuntivo of "dizer" for "eu" is "diga".',
         262
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('digo', false, 0),
       ('disse', false, 1),
       ('diga', true, 2),
       ('dissesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 263 (subj. presente irregular: ver) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ver" in the presente do subjuntivo for "você".',
         '"Ver" in the subjunctive: veja, vejas, veja, vejamos, vejam.',
         'veja',
         'The presente do subjuntivo of "ver" for "você" is "veja".',
         263
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vê', false, 0),
       ('viu', false, 1),
       ('via', false, 2),
       ('veja', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 264 (subj. presente trigger: quero que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Quero que você ___ (estudar) mais."',
         '"Quero que" triggers the presente do subjuntivo: "estude".',
         'estude',
         '"Quero que você estude mais" uses the subjunctive after "quero que".',
         264
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('estude', true, 0),
       ('estuda', false, 1),
       ('estudasse', false, 2),
       ('estudou', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 265 (subj. presente trigger: é importante que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "É importante que nós ___ (chegar) cedo."',
         'Impersonal expressions like "é importante que" trigger the subjunctive: "cheguemos".',
         'cheguemos',
         '"É importante que nós cheguemos cedo" uses the subjunctive.',
         265
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('chegamos', false, 0),
       ('cheguemos', true, 1),
       ('chegássemos', false, 2),
       ('chegarmos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 266 (subj. presente trigger: talvez) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Talvez ele ___ (vir) amanhã."',
         '"Talvez" (perhaps) triggers the subjunctive: "venha".',
         'venha',
         '"Talvez ele venha amanhã" uses the subjunctive after "talvez".',
         266
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vem', false, 0),
       ('virá', false, 1),
       ('venha', true, 2),
       ('viesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 267 (subj. presente trigger: embora) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Embora ela ___ (ser) jovem, é muito sábia."',
         '"Embora" (although) triggers the subjunctive: "seja".',
         'seja',
         '"Embora ela seja jovem" uses the subjunctive after "embora".',
         267
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('é', false, 0),
       ('seja', true, 1),
       ('fosse', false, 2),
       ('era', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 268 (subj. presente trigger: para que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Falo devagar para que você ___ (entender)."',
         '"Para que" (so that) triggers the subjunctive: "entenda".',
         'entenda',
         '"Para que você entenda" uses the subjunctive after "para que".',
         268
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('entende', false, 0),
       ('entendeu', false, 1),
       ('entenda', true, 2),
       ('entenderá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 269 (subj. presente trigger: antes que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Saia antes que ___ (começar) a chover."',
         '"Antes que" (before) triggers the subjunctive: "comece".',
         'comece',
         '"Antes que comece a chover" uses the subjunctive after "antes que".',
         269
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('começa', false, 0),
       ('começou', false, 1),
       ('começará', false, 2),
       ('comece', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 270 (subj. presente trigger: duvido que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Duvido que ele ___ (saber) a resposta."',
         '"Duvido que" (I doubt that) triggers the subjunctive: "saiba".',
         'saiba',
         '"Duvido que ele saiba" uses the subjunctive after "duvido que".',
         270
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('saiba', true, 0),
       ('sabe', false, 1),
       ('soube', false, 2),
       ('saberá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 271 (subj. presente: espero que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Espero que você ___ (ter) um bom dia."',
         '"Espero que" (I hope that) triggers the subjunctive: "tenha".',
         'tenha',
         '"Espero que você tenha um bom dia" uses the subjunctive.',
         271
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tem', false, 0),
       ('tenha', true, 1),
       ('terá', false, 2),
       ('teve', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 272 (subj. presente: peço que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Peço que vocês ___ (fazer) silêncio."',
         '"Peço que" (I ask that) triggers the subjunctive: "façam".',
         'façam',
         '"Peço que vocês façam silêncio" uses the subjunctive.',
         272
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fazem', false, 0),
       ('fizeram', false, 1),
       ('façam', true, 2),
       ('farão', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 273 (subj. presente: é possível que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "É possível que ___ (chover) hoje."',
         '"É possível que" triggers the subjunctive: "chova".',
         'chova',
         '"É possível que chova hoje" uses the subjunctive.',
         273
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('chove', false, 0),
       ('choveu', false, 1),
       ('choverá', false, 2),
       ('chova', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 274 (subj. presente: não acho que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Não acho que ele ___ (estar) certo."',
         'A negated opinion ("não acho que") triggers the subjunctive: "esteja".',
         'esteja',
         '"Não acho que ele esteja certo" uses the subjunctive after the negated opinion.',
         274
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('esteja', true, 0),
       ('está', false, 1),
       ('estivesse', false, 2),
       ('estará', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 275 (subj. presente: que ele venha) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vir" in the presente do subjuntivo for "ele".',
         '"Vir" in the subjunctive: venha, venhas, venha, venhamos, venham.',
         'venha',
         'The presente do subjuntivo of "vir" for "ele" is "venha".',
         275
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vem', false, 0),
       ('venha', true, 1),
       ('viesse', false, 2),
       ('veio', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 276 (subj. presente: trazer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "trazer" in the presente do subjuntivo for "você".',
         '"Trazer" in the subjunctive: traga, tragas, traga, tragamos, tragam.',
         'traga',
         'The presente do subjuntivo of "trazer" for "você" is "traga".',
         276
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('traz', false, 0),
       ('trouxe', false, 1),
       ('traga', true, 2),
       ('trouxesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 277 (subj. presente: -car → -que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ficar" in the presente do subjuntivo for "eu".',
         'Verbs in -car become -que in the subjunctive to preserve the hard /k/ sound: fique.',
         'fique',
         'The presente do subjuntivo of "ficar" for "eu" is "fique".',
         277
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fico', false, 0),
       ('ficasse', false, 1),
       ('fica', false, 2),
       ('fique', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 278 (subj. presente: -gar → -gue) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "pagar" in the presente do subjuntivo for "ele".',
         'Verbs in -gar become -gue in the subjunctive to preserve the hard /g/ sound: pague.',
         'pague',
         'The presente do subjuntivo of "pagar" for "ele" is "pague".',
         278
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pague', true, 0),
       ('paga', false, 1),
       ('pagou', false, 2),
       ('pagasse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 279 (subj. presente: -çar → -ce) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "começar" in the presente do subjuntivo for "nós".',
         'Verbs in -çar drop the cedilla and become -ce in the subjunctive: comecemos.',
         'comecemos',
         'The presente do subjuntivo of "começar" for "nós" is "comecemos".',
         279
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('começamos', false, 0),
       ('comecemos', true, 1),
       ('começássemos', false, 2),
       ('começaríamos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 280 (imperf. subj. regular -ar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" in the imperfeito do subjuntivo for "eu".',
         'Imperfeito do subjuntivo of -ar verbs: -asse, -asses, -asse, -ássemos, -assem. "Falar" → "falasse".',
         'falasse',
         'The imperfeito do subjuntivo of "falar" for "eu" is "falasse".',
         280
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falasse', true, 0),
       ('falava', false, 1),
       ('fale', false, 2),
       ('falaria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 281 (imperf. subj. regular -er) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vender" in the imperfeito do subjuntivo for "ele".',
         'Imperfeito do subjuntivo of -er verbs: -esse, -esses, -esse, -êssemos, -essem. "Vender" → "vendesse".',
         'vendesse',
         'The imperfeito do subjuntivo of "vender" for "ele" is "vendesse".',
         281
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vendia', false, 0),
       ('vendesse', true, 1),
       ('venda', false, 2),
       ('venderia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 282 (imperf. subj. regular -ir) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dormir" in the imperfeito do subjuntivo for "você".',
         'Imperfeito do subjuntivo of -ir verbs: -isse, -isses, -isse, -íssemos, -issem. "Dormir" → "dormisse".',
         'dormisse',
         'The imperfeito do subjuntivo of "dormir" for "você" is "dormisse".',
         282
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dorme', false, 0),
       ('dormia', false, 1),
       ('dormisse', true, 2),
       ('durma', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 283 (imperf. subj. irregular: ser/ir) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ser" in the imperfeito do subjuntivo for "eu".',
         '"Ser" and "ir" share the same form in the imperfeito do subjuntivo: fosse, fosses, fosse, fôssemos, fossem.',
         'fosse',
         'The imperfeito do subjuntivo of "ser" for "eu" is "fosse".',
         283
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('era', false, 0),
       ('seja', false, 1),
       ('fui', false, 2),
       ('fosse', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 284 (imperf. subj. irregular: ter) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ter" in the imperfeito do subjuntivo for "ela".',
         '"Ter" in the imperfeito do subjuntivo is "tivesse", built from the pretérito perfeito stem "tiv-".',
         'tivesse',
         'The imperfeito do subjuntivo of "ter" for "ela" is "tivesse".',
         284
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tivesse', true, 0),
       ('tinha', false, 1),
       ('tenha', false, 2),
       ('teria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 285 (imperf. subj. irregular: fazer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "fazer" in the imperfeito do subjuntivo for "eu".',
         '"Fazer" in the imperfeito do subjuntivo is "fizesse", from the perfeito stem "fiz-".',
         'fizesse',
         'The imperfeito do subjuntivo of "fazer" for "eu" is "fizesse".',
         285
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fazia', false, 0),
       ('fizesse', true, 1),
       ('faça', false, 2),
       ('faria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 286 (imperf. subj. irregular: dizer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dizer" in the imperfeito do subjuntivo for "ele".',
         '"Dizer" in the imperfeito do subjuntivo is "dissesse", from the perfeito stem "diss-".',
         'dissesse',
         'The imperfeito do subjuntivo of "dizer" for "ele" is "dissesse".',
         286
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dizia', false, 0),
       ('diga', false, 1),
       ('dissesse', true, 2),
       ('diria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 287 (imperf. subj. irregular: poder) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "poder" in the imperfeito do subjuntivo for "eu".',
         '"Poder" in the imperfeito do subjuntivo is "pudesse", from the perfeito stem "pud-".',
         'pudesse',
         'The imperfeito do subjuntivo of "poder" for "eu" is "pudesse".',
         287
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('podia', false, 0),
       ('possa', false, 1),
       ('poderia', false, 2),
       ('pudesse', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 288 (imperf. subj. irregular: querer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "querer" in the imperfeito do subjuntivo for "você".',
         '"Querer" in the imperfeito do subjuntivo is "quisesse", from the perfeito stem "quis-".',
         'quisesse',
         'The imperfeito do subjuntivo of "querer" for "você" is "quisesse".',
         288
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('quisesse', true, 0),
       ('queria', false, 1),
       ('queira', false, 2),
       ('quereria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 289 (imperf. subj. irregular: saber) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "saber" in the imperfeito do subjuntivo for "nós".',
         '"Saber" in the imperfeito do subjuntivo is "soubéssemos", from the perfeito stem "soub-".',
         'soubéssemos',
         'The imperfeito do subjuntivo of "saber" for "nós" is "soubéssemos".',
         289
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sabíamos', false, 0),
       ('soubéssemos', true, 1),
       ('saibamos', false, 2),
       ('saberíamos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 290 (imperf. subj. irregular: estar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "estar" in the imperfeito do subjuntivo for "eu".',
         '"Estar" in the imperfeito do subjuntivo is "estivesse", from the perfeito stem "estiv-".',
         'estivesse',
         'The imperfeito do subjuntivo of "estar" for "eu" is "estivesse".',
         290
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('estava', false, 0),
       ('esteja', false, 1),
       ('estivesse', true, 2),
       ('estaria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 291 (se + imperf. subj.: condicional irreal) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Se eu ___ (ter) dinheiro, viajaria pelo mundo."',
         'Hypothetical "if" clauses use "se" + imperfeito do subjuntivo with the futuro do pretérito in the main clause: "Se eu tivesse...".',
         'tivesse',
         '"Se eu tivesse dinheiro, viajaria" pairs imperfeito do subjuntivo with futuro do pretérito.',
         291
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tenho', false, 0),
       ('tinha', false, 1),
       ('tenha', false, 2),
       ('tivesse', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 292 (se + imperf. subj.: se eu fosse você) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "If I were you" in Portuguese?',
         '"Se eu fosse você" uses the imperfeito do subjuntivo of "ser" for hypothetical situations.',
         'Se eu fosse você',
         '"If I were you" = "Se eu fosse você".',
         292
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Se eu fosse você', true, 0),
       ('Se eu sou você', false, 1),
       ('Se eu era você', false, 2),
       ('Se eu seja você', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 293 (trigger: queria que + imperf. subj.) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Queria que você ___ (vir) à festa."',
         'A past or conditional trigger like "queria que" (I wished that) requires the imperfeito do subjuntivo: "viesse".',
         'viesse',
         '"Queria que você viesse" uses imperfeito do subjuntivo after a past trigger.',
         293
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('venha', false, 0),
       ('viesse', true, 1),
       ('vem', false, 2),
       ('viria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 294 (talvez + imperf. subj.) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the past-leaning option: "Talvez ele ___ (estar) doente ontem."',
         'When "talvez" refers to a past event, use the imperfeito do subjuntivo: "estivesse".',
         'estivesse',
         '"Talvez ele estivesse doente ontem" places "talvez" in the past with imperfeito do subjuntivo.',
         294
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('está', false, 0),
       ('esteja', false, 1),
       ('estivesse', true, 2),
       ('estará', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 295 (subj. presente vs imperf. — contraste) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which sentence uses the imperfeito do subjuntivo correctly?',
         'A past main verb ("pediu") triggers the imperfeito do subjuntivo in the dependent clause.',
         'Ele pediu que eu falasse mais alto.',
         'After a past main clause, use the imperfeito do subjuntivo: "Ele pediu que eu falasse mais alto."',
         295
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele pediu que eu fale mais alto.', false, 0),
       ('Ele pediu que eu falo mais alto.', false, 1),
       ('Ele pediu que eu falava mais alto.', false, 2),
       ('Ele pediu que eu falasse mais alto.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 296 (imperf. subj. irregular: trazer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "trazer" in the imperfeito do subjuntivo for "ele".',
         '"Trazer" in the imperfeito do subjuntivo is "trouxesse", from the perfeito stem "troux-".',
         'trouxesse',
         'The imperfeito do subjuntivo of "trazer" for "ele" is "trouxesse".',
         296
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('trouxesse', true, 0),
       ('trazia', false, 1),
       ('traga', false, 2),
       ('traria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 297 (imperf. subj. irregular: ver) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ver" in the imperfeito do subjuntivo for "eu".',
         '"Ver" in the imperfeito do subjuntivo is "visse", from the perfeito stem "v-".',
         'visse',
         'The imperfeito do subjuntivo of "ver" for "eu" is "visse".',
         297
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('via', false, 0),
       ('visse', true, 1),
       ('veja', false, 2),
       ('veria', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 298 (como se + imperf. subj.) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Ela fala como se ___ (saber) tudo."',
         '"Como se" (as if) always triggers the imperfeito do subjuntivo: "soubesse".',
         'soubesse',
         '"Como se ela soubesse tudo" uses the imperfeito do subjuntivo after "como se".',
         298
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sabe', false, 0),
       ('saiba', false, 1),
       ('soubesse', true, 2),
       ('saberia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 299 (imperf. subj. irregular: dar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dar" in the imperfeito do subjuntivo for "eu".',
         '"Dar" in the imperfeito do subjuntivo is "desse", from the perfeito stem "d-".',
         'desse',
         'The imperfeito do subjuntivo of "dar" for "eu" is "desse".',
         299
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dava', false, 0),
       ('dê', false, 1),
       ('daria', false, 2),
       ('desse', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 300 (futuro subj. regular -ar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" in the futuro do subjuntivo for "eu".',
         'The futuro do subjuntivo of regular verbs uses the infinitive stem: falar, falares, falar, falarmos, falarem.',
         'falar',
         'The futuro do subjuntivo of "falar" for "eu" is "falar".',
         300
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falar', true, 0),
       ('fale', false, 1),
       ('falasse', false, 2),
       ('falo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 301 (futuro subj. regular -er) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vender" in the futuro do subjuntivo for "você".',
         'Futuro do subjuntivo of regular -er verbs is identical to the infinitive in the singular: vender.',
         'vender',
         'The futuro do subjuntivo of "vender" for "você" is "vender".',
         301
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('venda', false, 0),
       ('vender', true, 1),
       ('vendesse', false, 2),
       ('vendê-lo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 302 (futuro subj. regular -ir) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "partir" in the futuro do subjuntivo for "eles".',
         'Futuro do subjuntivo plural of -ir verbs ends in -irem: partirem.',
         'partirem',
         'The futuro do subjuntivo of "partir" for "eles" is "partirem".',
         302
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('partam', false, 0),
       ('partissem', false, 1),
       ('partirem', true, 2),
       ('partirão', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 303 (futuro subj. irregular: ser/ir → for) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ser" (and "ir") in the futuro do subjuntivo for "eu".',
         '"Ser" and "ir" share an irregular futuro do subjuntivo: for, fores, for, formos, forem.',
         'for',
         'The futuro do subjuntivo of "ser/ir" for "eu" is "for".',
         303
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('serei', false, 0),
       ('seja', false, 1),
       ('fosse', false, 2),
       ('for', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 304 (futuro subj. irregular: ter → tiver) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "ter" in the futuro do subjuntivo for "você".',
         '"Ter" in the futuro do subjuntivo is "tiver", from the perfeito stem "tiv-".',
         'tiver',
         'The futuro do subjuntivo of "ter" for "você" is "tiver".',
         304
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tiver', true, 0),
       ('tenha', false, 1),
       ('tivesse', false, 2),
       ('terá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 305 (futuro subj. irregular: fazer → fizer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "fazer" in the futuro do subjuntivo for "ele".',
         '"Fazer" in the futuro do subjuntivo is "fizer", from the perfeito stem "fiz-".',
         'fizer',
         'The futuro do subjuntivo of "fazer" for "ele" is "fizer".',
         305
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('faça', false, 0),
       ('fizer', true, 1),
       ('fará', false, 2),
       ('fizesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 306 (futuro subj. irregular: dizer → disser) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "dizer" in the futuro do subjuntivo for "ela".',
         '"Dizer" in the futuro do subjuntivo is "disser", from the perfeito stem "diss-".',
         'disser',
         'The futuro do subjuntivo of "dizer" for "ela" is "disser".',
         306
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('diga', false, 0),
       ('dissesse', false, 1),
       ('disser', true, 2),
       ('dirá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 307 (futuro subj. irregular: poder → puder) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "poder" in the futuro do subjuntivo for "eu".',
         '"Poder" in the futuro do subjuntivo is "puder", from the perfeito stem "pud-".',
         'puder',
         'The futuro do subjuntivo of "poder" for "eu" is "puder".',
         307
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('posso', false, 0),
       ('possa', false, 1),
       ('poderia', false, 2),
       ('puder', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 308 (futuro subj. irregular: querer → quiser) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "querer" in the futuro do subjuntivo for "você".',
         '"Querer" in the futuro do subjuntivo is "quiser", from the perfeito stem "quis-".',
         'quiser',
         'The futuro do subjuntivo of "querer" for "você" is "quiser".',
         308
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('quiser', true, 0),
       ('queira', false, 1),
       ('quererá', false, 2),
       ('quisesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 309 (futuro subj. irregular: saber → souber) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "saber" in the futuro do subjuntivo for "ele".',
         '"Saber" in the futuro do subjuntivo is "souber", from the perfeito stem "soub-".',
         'souber',
         'The futuro do subjuntivo of "saber" for "ele" is "souber".',
         309
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sabe', false, 0),
       ('souber', true, 1),
       ('saiba', false, 2),
       ('saberá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 310 (futuro subj. trigger: quando) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Quando eu ___ (chegar), te ligo."',
         '"Quando" referring to a future event triggers the futuro do subjuntivo: "chegar".',
         'chegar',
         '"Quando eu chegar, te ligo" uses the futuro do subjuntivo after "quando".',
         310
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('chego', false, 0),
       ('cheguei', false, 1),
       ('chegar', true, 2),
       ('chegue', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 311 (futuro subj. trigger: se) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Se você ___ (poder), me ajude."',
         '"Se" referring to a future possibility triggers the futuro do subjuntivo: "puder".',
         'puder',
         '"Se você puder, me ajude" uses the futuro do subjuntivo after "se".',
         311
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pode', false, 0),
       ('possa', false, 1),
       ('pudesse', false, 2),
       ('puder', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 312 (futuro subj. trigger: enquanto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Enquanto ele ___ (estar) doente, não vai trabalhar."',
         '"Enquanto" referring to the future triggers the futuro do subjuntivo: "estiver".',
         'estiver',
         '"Enquanto ele estiver doente" uses the futuro do subjuntivo after "enquanto".',
         312
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('estiver', true, 0),
       ('está', false, 1),
       ('esteja', false, 2),
       ('estará', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 313 (futuro subj. trigger: assim que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Assim que ela ___ (ver) você, vai sorrir."',
         '"Assim que" (as soon as) referring to the future triggers the futuro do subjuntivo: "vir".',
         'vir',
         '"Assim que ela vir você" uses the futuro do subjuntivo after "assim que".',
         313
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vê', false, 0),
       ('vir', true, 1),
       ('veja', false, 2),
       ('verá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 314 (futuro subj.: vir → vier) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "vir" in the futuro do subjuntivo for "você".',
         '"Vir" in the futuro do subjuntivo is "vier", from the perfeito stem "vi-".',
         'vier',
         'The futuro do subjuntivo of "vir" for "você" is "vier".',
         314
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vem', false, 0),
       ('venha', false, 1),
       ('vier', true, 2),
       ('virá', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 315 (futuro subj.: trazer → trouxer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "trazer" in the futuro do subjuntivo for "ele".',
         '"Trazer" in the futuro do subjuntivo is "trouxer", from the perfeito stem "troux-".',
         'trouxer',
         'The futuro do subjuntivo of "trazer" for "ele" is "trouxer".',
         315
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('traga', false, 0),
       ('trará', false, 1),
       ('trouxesse', false, 2),
       ('trouxer', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 316 (futuro subj.: pôr → puser) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "pôr" in the futuro do subjuntivo for "eu".',
         '"Pôr" in the futuro do subjuntivo is "puser", from the perfeito stem "pus-".',
         'puser',
         'The futuro do subjuntivo of "pôr" for "eu" is "puser".',
         316
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('puser', true, 0),
       ('ponha', false, 1),
       ('porei', false, 2),
       ('pusesse', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 317 (futuro subj.: full sentence) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "When you can, call me." to Portuguese.',
         '"Quando você puder, me ligue" pairs the futuro do subjuntivo with an imperative.',
         'Quando você puder, me ligue.',
         '"When you can, call me" = "Quando você puder, me ligue."',
         317
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quando você pode, me ligue.', false, 0),
       ('Quando você puder, me ligue.', true, 1),
       ('Quando você possa, me ligue.', false, 2),
       ('Quando você poderia, me ligue.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 318 (futuro subj. usage: alive in BR) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which statement about the futuro do subjuntivo is true for Brazilian Portuguese?',
         'Unlike many Romance languages, the futuro do subjuntivo is fully alive in everyday BR-PT after "quando", "se", "enquanto", and "assim que".',
         'It is in active everyday use in BR-PT.',
         'The futuro do subjuntivo is in active everyday use in Brazilian Portuguese.',
         318
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It only appears in legal or biblical texts.', false, 0),
       ('It is in active everyday use in BR-PT.', true, 1),
       ('It is the same as the presente do subjuntivo.', false, 2),
       ('It is only used after "embora".', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 319 (futuro subj.: nós ending) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "falar" in the futuro do subjuntivo for "nós".',
         'The nós ending of the futuro do subjuntivo for "falar" is "falarmos".',
         'falarmos',
         'The futuro do subjuntivo of "falar" for "nós" is "falarmos".',
         319
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('falemos', false, 0),
       ('falássemos', false, 1),
       ('falarmos', true, 2),
       ('falaremos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 320 (imperativo: você fale) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you give the affirmative command "Speak!" to "você" in BR-PT?',
         'BR-PT typically uses the você-based imperative, which matches the presente do subjuntivo: "Fale!".',
         'Fale!',
         'The você affirmative imperative of "falar" is "Fale!".',
         320
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Fale!', true, 0),
       ('Fala!', false, 1),
       ('Falou!', false, 2),
       ('Falando!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 321 (imperativo: você coma) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate the command "Eat!" (to "você") in Portuguese.',
         'The você imperative of "comer" matches the subjunctive: "Coma!".',
         'Coma!',
         'The você affirmative imperative of "comer" is "Coma!".',
         321
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Come!', false, 0),
       ('Coma!', true, 1),
       ('Comeu!', false, 2),
       ('Comendo!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 322 (imperativo: vá) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Go!" (to "você") in Portuguese?',
         'The você imperative of "ir" is "Vá!", from the subjunctive form.',
         'Vá!',
         'The você affirmative imperative of "ir" is "Vá!".',
         322
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vai!', false, 0),
       ('Foi!', false, 1),
       ('Vá!', true, 2),
       ('Ir!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 323 (imperativo: venha) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate the command "Come!" (to "você") in Portuguese.',
         'The você imperative of "vir" is "Venha!".',
         'Venha!',
         'The você affirmative imperative of "vir" is "Venha!".',
         323
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vem!', false, 0),
       ('Veio!', false, 1),
       ('Viesse!', false, 2),
       ('Venha!', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 324 (imperativo: faça) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Do it!" (to "você") in Portuguese?',
         'The você imperative of "fazer" is "Faça!".',
         'Faça!',
         'The você affirmative imperative of "fazer" is "Faça!".',
         324
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Faça!', true, 0),
       ('Faz!', false, 1),
       ('Fez!', false, 2),
       ('Fazendo!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 325 (imperativo: seja) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Be careful!" (to "você") in Portuguese?',
         'The você imperative of "ser" is "Seja!": "Seja cuidadoso!".',
         'Seja cuidadoso!',
         '"Be careful!" (to você) = "Seja cuidadoso!".',
         325
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('É cuidadoso!', false, 0),
       ('Seja cuidadoso!', true, 1),
       ('Fosse cuidadoso!', false, 2),
       ('Era cuidadoso!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 326 (imperativo: tenha) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Have patience!" (to "você") in Portuguese?',
         'The você imperative of "ter" is "Tenha!": "Tenha paciência!".',
         'Tenha paciência!',
         '"Have patience!" (to você) = "Tenha paciência!".',
         326
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tem paciência!', false, 0),
       ('Tinha paciência!', false, 1),
       ('Tenha paciência!', true, 2),
       ('Teve paciência!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 327 (imperativo negativo: não fale) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Don''t speak!" (to "você") in Portuguese?',
         'Negative commands always use the subjunctive form: "Não fale!".',
         'Não fale!',
         '"Don''t speak!" (to você) = "Não fale!".',
         327
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Não fala!', false, 0),
       ('Não falou!', false, 1),
       ('Não falar!', false, 2),
       ('Não fale!', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 328 (imperativo negativo: não coma) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Don''t eat that!" (to "você") in Portuguese?',
         'Negative commands use the subjunctive: "Não coma isso!".',
         'Não coma isso!',
         '"Don''t eat that!" (to você) = "Não coma isso!".',
         328
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Não coma isso!', true, 0),
       ('Não come isso!', false, 1),
       ('Não comeu isso!', false, 2),
       ('Não comer isso!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 329 (imperativo negativo: não vá) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Don''t go!" (to "você") in Portuguese?',
         'Negative commands use the subjunctive: "Não vá!".',
         'Não vá!',
         '"Don''t go!" (to você) = "Não vá!".',
         329
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Não vai!', false, 0),
       ('Não vá!', true, 1),
       ('Não foi!', false, 2),
       ('Não ir!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 330 (imperativo: tu fala — BR variant) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In BR speech where "tu" is used (south/northeast), what is the affirmative imperative of "falar"?',
         'In informal BR speech the tu-imperative is often the indicative form with the -s dropped: "Fala!".',
         'Fala!',
         'The tu-style BR affirmative imperative of "falar" is "Fala!".',
         330
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Fala!', true, 0),
       ('Fale!', false, 1),
       ('Falas!', false, 2),
       ('Falou!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 331 (imperativo: vamos comer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Let''s eat!" in Portuguese?',
         'The "let''s" form uses "vamos" + infinitive: "Vamos comer!". A subjunctive nós-form ("comamos") also exists but feels formal.',
         'Vamos comer!',
         '"Let''s eat!" = "Vamos comer!".',
         331
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Comemos!', false, 0),
       ('Coma!', false, 1),
       ('Vamos comer!', true, 2),
       ('Comer!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 332 (imperativo: falemos — formal nós) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the formal nós-imperative of "falar"?',
         'The formal nós-imperative uses the subjunctive nós-form: "Falemos!".',
         'Falemos!',
         'The formal nós-imperative of "falar" is "Falemos!".',
         332
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Falamos!', false, 0),
       ('Falemos!', true, 1),
       ('Falássemos!', false, 2),
       ('Falaremos!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 333 (imperativo: dê) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Give me the book!" (to "você") in Portuguese?',
         'The você imperative of "dar" is "Dê!": "Dê-me o livro!" (or more colloquially "Me dê o livro!").',
         'Dê-me o livro!',
         '"Give me the book!" (to você, formal) = "Dê-me o livro!".',
         333
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Dê-me o livro!', true, 0),
       ('Dou-me o livro!', false, 1),
       ('Desse-me o livro!', false, 2),
       ('Dar-me o livro!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 334 (imperativo: ouça) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Listen!" (to "você") in Portuguese?',
         'The você imperative of "ouvir" is "Ouça!".',
         'Ouça!',
         'The você affirmative imperative of "ouvir" is "Ouça!".',
         334
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ouve!', false, 0),
       ('Ouvi!', false, 1),
       ('Ouviu!', false, 2),
       ('Ouça!', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 335 (imperativo: leia) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Read this!" (to "você") in Portuguese?',
         'The você imperative of "ler" is "Leia!": "Leia isto!".',
         'Leia isto!',
         '"Read this!" (to você) = "Leia isto!".',
         335
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Leia isto!', true, 0),
       ('Lê isto!', false, 1),
       ('Leu isto!', false, 2),
       ('Ler isto!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 336 (imperativo: escreva) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Write your name!" (to "você") in Portuguese?',
         'The você imperative of "escrever" is "Escreva!": "Escreva seu nome!".',
         'Escreva seu nome!',
         '"Write your name!" (to você) = "Escreva seu nome!".',
         336
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Escreve seu nome!', false, 0),
       ('Escreva seu nome!', true, 1),
       ('Escreveu seu nome!', false, 2),
       ('Escrever seu nome!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 337 (imperativo: não esqueça) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Don''t forget!" (to "você") in Portuguese?',
         'Negative commands use the subjunctive: "Não esqueça!".',
         'Não esqueça!',
         '"Don''t forget!" (to você) = "Não esqueça!".',
         337
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Não esquece!', false, 0),
       ('Não esqueceu!', false, 1),
       ('Não esqueça!', true, 2),
       ('Não esquecer!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 338 (imperativo: espere) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "Wait!" (to "você") in Portuguese?',
         'The você imperative of "esperar" is "Espere!".',
         'Espere!',
         'The você affirmative imperative of "esperar" is "Espere!".',
         338
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Espere!', true, 0),
       ('Espera!', false, 1),
       ('Esperou!', false, 2),
       ('Esperar!', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 339 (imperativo: vamos lá) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "Vamos lá!" mean in BR-PT?',
         '"Vamos lá!" is a colloquial all-purpose "Let''s go!" / "Come on!" used for encouragement.',
         'Let''s go! / Come on!',
         '"Vamos lá!" means "Let''s go!" or "Come on!" — an encouraging exhortation.',
         339
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('See you there.', false, 0),
       ('Let''s go! / Come on!', true, 1),
       ('Over there.', false, 2),
       ('Wait there.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 340 (pronome sujeito: você vs tu) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In most of Brazil, what is the standard informal singular "you"?',
         'BR-PT generally uses "você" as the everyday informal "you", while "tu" survives mainly in the south and northeast.',
         'você',
         'In most of Brazil, the standard informal singular "you" is "você".',
         340
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vós', false, 0),
       ('você', true, 1),
       ('tu', false, 2),
       ('o senhor', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 341 (pronome sujeito: vocês plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the standard plural "you" in BR-PT?',
         'BR-PT uses "vocês" as the everyday plural "you". The archaic "vós" is essentially dropped.',
         'vocês',
         'The standard plural "you" in BR-PT is "vocês".',
         341
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('vocês', true, 0),
       ('vós', false, 1),
       ('tus', false, 2),
       ('eles', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 342 (pronome obj. direto: o/a) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the direct object pronoun for "ele" (3rd-person masculine singular)?',
         'The direct object pronoun for "ele" is "o" (e.g., "Eu o vi" = "I saw him"), though BR-PT often replaces it with "ele" in speech.',
         'o',
         'The direct object pronoun for "ele" is "o".',
         342
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lhe', false, 0),
       ('se', false, 1),
       ('o', true, 2),
       ('me', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 343 (pronome obj. direto: a) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the direct object pronoun for "ela"?',
         'The direct object pronoun for "ela" is "a" (e.g., "Eu a vi" = "I saw her").',
         'a',
         'The direct object pronoun for "ela" is "a".',
         343
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a', true, 0),
       ('lhe', false, 1),
       ('se', false, 2),
       ('ela', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 344 (pronome obj. indireto: lhe) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the indirect object pronoun for "ele/ela"?',
         'The indirect object pronoun for "ele" and "ela" is "lhe" (e.g., "Eu lhe disse" = "I told him/her").',
         'lhe',
         'The indirect object pronoun for "ele/ela" is "lhe".',
         344
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('o', false, 0),
       ('a', false, 1),
       ('se', false, 2),
       ('lhe', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 345 (pronome obj. indireto plural: lhes) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the indirect object pronoun for "eles/elas"?',
         'The indirect object pronoun for plural 3rd-person is "lhes".',
         'lhes',
         'The indirect object pronoun for "eles/elas" is "lhes".',
         345
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('os', false, 0),
       ('lhes', true, 1),
       ('se', false, 2),
       ('eles', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 346 (pronome reflexivo: se) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which reflexive pronoun matches "ele/ela/você/eles/elas/vocês"?',
         'The 3rd-person and você/vocês reflexive pronoun is "se" (e.g., "Ele se lavou" = "He washed himself").',
         'se',
         'The reflexive pronoun for 3rd-person and você is "se".',
         346
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('me', false, 0),
       ('te', false, 1),
       ('se', true, 2),
       ('nos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 347 (pronome reflexivo: nos) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which reflexive pronoun matches "nós"?',
         'The reflexive pronoun for "nós" is "nos" (e.g., "Nós nos vemos amanhã" = "We''ll see each other tomorrow").',
         'nos',
         'The reflexive pronoun for "nós" is "nos".',
         347
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('nos', true, 0),
       ('se', false, 1),
       ('me', false, 2),
       ('vos', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 348 (próclise BR: me dá) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In informal BR speech, how do you typically say "Give me the book"?',
         'BR-PT strongly prefers próclise (pronoun before the verb) in everyday speech: "Me dá o livro" rather than the prescriptive "Dá-me o livro".',
         'Me dá o livro.',
         'In informal BR-PT, "Give me the book" is typically "Me dá o livro" with próclise.',
         348
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Dá-me o livro.', false, 0),
       ('Me dá o livro.', true, 1),
       ('Dar-me o livro.', false, 2),
       ('Livro me dá.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 349 (ênclise: amo-te formal) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which form is the prescriptive ênclise version (used in writing) of "I love you"?',
         'Ênclise places the pronoun after the verb with a hyphen: "Amo-te". BR everyday speech vastly prefers próclise: "Te amo".',
         'Amo-te.',
         'The ênclise version of "I love you" is "Amo-te"; BR speech says "Te amo".',
         349
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Te amo.', false, 0),
       ('Eu te amo.', false, 1),
       ('Amo-te.', true, 2),
       ('Amar-te.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 350 (BR speech: ele em vez de o) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How does informal BR-PT typically say "I saw him"?',
         'BR-PT informal speech often uses the subject pronoun "ele" in object position: "Eu vi ele", instead of "Eu o vi".',
         'Eu vi ele.',
         'In informal BR-PT, "I saw him" is typically "Eu vi ele" with subject pronoun reused.',
         350
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu vi ele.', true, 0),
       ('Eu lhe vi.', false, 1),
       ('Eu se vi.', false, 2),
       ('Eu te vi.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 351 (preposição + pronome: comigo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "with me" in Portuguese?',
         '"Com" + "mim" contracts to "comigo".',
         'comigo',
         '"With me" is "comigo" — a contracted preposition + pronoun.',
         351
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('com mim', false, 0),
       ('comigo', true, 1),
       ('com eu', false, 2),
       ('me com', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 352 (preposição + pronome: contigo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "contigo" mean?',
         '"Contigo" is the contracted "com + ti" meaning "with you" (informal, more common in PT-PT or BR regions that use "tu").',
         'with you',
         '"Contigo" means "with you" — used where "tu" is used.',
         352
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('with him', false, 0),
       ('with us', false, 1),
       ('with you', true, 2),
       ('with them', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 353 (preposição + pronome: conosco) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "with us" in BR-PT?',
         '"Com + nós" contracts to "conosco" in BR-PT (the PT-PT spelling is "connosco").',
         'conosco',
         '"With us" in BR-PT is "conosco".',
         353
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('com nós', false, 0),
       ('conosco', true, 1),
       ('connosco', false, 2),
       ('nos com', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 354 (preposição + pronome: consigo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "consigo" mean?',
         '"Consigo" is the contracted "com + si" — "with himself/herself/yourself" — a reflexive form.',
         'with himself/herself/yourself',
         '"Consigo" means "with himself/herself/yourself" — a reflexive form.',
         354
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('with himself/herself/yourself', true, 0),
       ('with me', false, 1),
       ('with us', false, 2),
       ('with them', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 355 (BR: possessive dele) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In BR speech, how is "his car" most commonly said?',
         'BR-PT prefers "o carro dele" (the car of him) over "o seu carro" to avoid ambiguity with "your car".',
         'o carro dele',
         'In BR-PT, "his car" is most commonly "o carro dele".',
         355
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('o seu carro', false, 0),
       ('o carro dele', true, 1),
       ('seu carro', false, 2),
       ('o carro de seu', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 356 (possessive: dela) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In BR speech, how is "her house" most commonly said?',
         '"A casa dela" (the house of her) is the standard BR way to disambiguate "her" from "your".',
         'a casa dela',
         'In BR-PT, "her house" is most commonly "a casa dela".',
         356
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a casa dela', true, 0),
       ('a sua casa', false, 1),
       ('a casa de ela', false, 2),
       ('sua casa', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 357 (possessive: deles) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "deles" mean?',
         '"Deles" = "de + eles" — "their" (masculine or mixed group).',
         'their (masc./mixed)',
         '"Deles" means "their" for a masculine or mixed group.',
         357
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('our', false, 0),
       ('his', false, 1),
       ('their (masc./mixed)', true, 2),
       ('your (plural)', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 358 (possessive: delas) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "delas" mean?',
         '"Delas" = "de + elas" — "their" referring to an all-feminine group.',
         'their (fem.)',
         '"Delas" means "their" referring to an all-feminine group.',
         358
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('your', false, 0),
       ('our', false, 1),
       ('her', false, 2),
       ('their (fem.)', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 359 (pronome obj. dir. me) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "She called me yesterday."',
         '"Me" is the 1st-person direct/indirect object pronoun: "Ela me ligou ontem".',
         'Ela me ligou ontem.',
         '"She called me yesterday" = "Ela me ligou ontem".',
         359
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ela me ligou ontem.', true, 0),
       ('Ela ligou eu ontem.', false, 1),
       ('Ela ligou-me ontem.', false, 2),
       ('Ela lhe ligou ontem.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 360 (pronome obj. te) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate "I love you" in everyday BR-PT.',
         'BR-PT uses "te" as the everyday 2nd-person object pronoun (often mixed with "você" subjects): "Te amo".',
         'Te amo.',
         '"I love you" in everyday BR-PT is "Te amo".',
         360
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu amar você.', false, 0),
       ('Te amo.', true, 1),
       ('Me amo.', false, 2),
       ('Amo-lhe.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 361 (pronome obj. dir. nos) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "He told us the truth."',
         '"Nos" is both direct and indirect 1st-person plural pronoun: "Ele nos disse a verdade".',
         'Ele nos disse a verdade.',
         '"He told us the truth" = "Ele nos disse a verdade".',
         361
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele disse nós a verdade.', false, 0),
       ('Ele lhe disse a verdade.', false, 1),
       ('Ele nos disse a verdade.', true, 2),
       ('Ele se disse a verdade.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 362 (pronome reflexivo me) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I wake up at seven."',
         'Reflexive verbs use a matching reflexive pronoun: "Eu me acordo às sete" — though BR speech often drops the reflexive: "Eu acordo às sete".',
         'Eu me acordo às sete.',
         '"I wake up at seven" = "Eu me acordo às sete" (or simply "Eu acordo às sete").',
         362
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu me acordo às sete.', true, 0),
       ('Eu se acordo às sete.', false, 1),
       ('Eu te acordo às sete.', false, 2),
       ('Eu nos acordo às sete.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 363 (reflexivo se: ele se levantou) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Ele ___ levantou cedo."',
         'The 3rd-person reflexive pronoun is "se": "Ele se levantou cedo".',
         'se',
         '"Ele se levantou cedo" uses the reflexive pronoun "se".',
         363
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('me', false, 0),
       ('te', false, 1),
       ('nos', false, 2),
       ('se', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 364 (te vs lhe placement) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'In BR-PT, how do you typically say "I''ll tell you tomorrow"?',
         'BR speech mixes "você" subjects with "te" object pronouns: "Eu te falo amanhã".',
         'Eu te falo amanhã.',
         'In BR-PT, "I''ll tell you tomorrow" is "Eu te falo amanhã".',
         364
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu te falo amanhã.', true, 0),
       ('Eu falo-lhe amanhã.', false, 1),
       ('Eu falo te amanhã.', false, 2),
       ('Eu lhes falo amanhã.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 365 (subj. pronoun drop) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Why is it sometimes acceptable to omit the subject pronoun in Portuguese?',
         'Verb endings already mark person and number, so subject pronouns are often unnecessary — though BR-PT tends to keep them more than PT-PT.',
         'Because the verb ending already indicates the subject.',
         'Subject pronouns can be dropped because the verb ending already indicates the subject.',
         365
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Because Portuguese has no subject pronouns.', false, 0),
       ('Because the verb ending already indicates the subject.', true, 1),
       ('Because subject pronouns are always required.', false, 2),
       ('Because the object pronoun replaces them.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 366 (pronome obj. dir. plural: os) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the direct object pronoun for "eles"?',
         'The direct object pronoun for "eles" is "os" (e.g., "Eu os conheço" = "I know them").',
         'os',
         'The direct object pronoun for "eles" is "os".',
         366
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lhes', false, 0),
       ('se', false, 1),
       ('os', true, 2),
       ('eles', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 367 (pronome obj. dir. plural: as) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is the direct object pronoun for "elas"?',
         'The direct object pronoun for "elas" is "as" (e.g., "Eu as vi" = "I saw them").',
         'as',
         'The direct object pronoun for "elas" is "as".',
         367
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('as', true, 0),
       ('lhes', false, 1),
       ('elas', false, 2),
       ('se', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 368 (mesóclise) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "mesóclise"?',
         'Mesóclise places the pronoun inside the verb in the futuro do presente or futuro do pretérito (e.g., "dar-te-ei"). It is rare in BR speech and used mostly in formal writing.',
         'A pronoun placed inside the verb (in future tenses).',
         'Mesóclise inserts the pronoun inside the verb in future tenses, like "dar-te-ei".',
         368
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('A pronoun before the verb.', false, 0),
       ('A pronoun after the verb.', false, 1),
       ('A pronoun placed inside the verb (in future tenses).', true, 2),
       ('A pronoun omitted entirely.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 369 (próclise after negative) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which sentence is correct?',
         'After a negative word, próclise (pronoun before the verb) is required: "Não me diga isso".',
         'Não me diga isso.',
         'After a negative, the pronoun goes before the verb: "Não me diga isso".',
         369
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Não diga-me isso.', false, 0),
       ('Não diga me isso.', false, 1),
       ('Diga não-me isso.', false, 2),
       ('Não me diga isso.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 370 (comparativo: mais ... do que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "more expensive than" in Portuguese?',
         'The standard comparative of superiority is "mais ... (do) que": "mais caro do que".',
         'mais caro do que',
         '"More expensive than" = "mais caro do que".',
         370
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('mais caro do que', true, 0),
       ('caro mais que', false, 1),
       ('tão caro como', false, 2),
       ('caríssimo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 371 (comparativo: menos ... do que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "She is less tired than me."',
         'The comparative of inferiority is "menos ... (do) que": "Ela está menos cansada do que eu".',
         'Ela está menos cansada do que eu.',
         '"She is less tired than me" = "Ela está menos cansada do que eu".',
         371
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ela é mais cansada do que eu.', false, 0),
       ('Ela está menos cansada do que eu.', true, 1),
       ('Ela está tão cansada quanto eu.', false, 2),
       ('Ela é cansadíssima.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 372 (comparativo igualdade: tão ... quanto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "as tall as" in Portuguese?',
         'Equality with adjectives uses "tão ... quanto" (or "como"): "tão alto quanto".',
         'tão alto quanto',
         '"As tall as" = "tão alto quanto".',
         372
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('mais alto que', false, 0),
       ('tanto alto quanto', false, 1),
       ('tão alto quanto', true, 2),
       ('altíssimo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 373 (comparativo: tanto ... quanto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you express equality with nouns, e.g. "as much money as"?',
         'Equality with nouns uses "tanto/tanta/tantos/tantas ... quanto": "tanto dinheiro quanto".',
         'tanto dinheiro quanto',
         '"As much money as" = "tanto dinheiro quanto".',
         373
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tão dinheiro quanto', false, 0),
       ('mais dinheiro quanto', false, 1),
       ('tanto dinheiro como', false, 2),
       ('tanto dinheiro quanto', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 374 (comp. irregular: melhor) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular comparative of "bom" (good)?',
         'The comparative of "bom" is "melhor" (better) — never "mais bom".',
         'melhor',
         'The comparative of "bom" is "melhor".',
         374
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('melhor', true, 0),
       ('mais bom', false, 1),
       ('mais bem', false, 2),
       ('bom-bom', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 375 (comp. irregular: pior) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular comparative of "mau/ruim" (bad)?',
         'The comparative of "mau" or "ruim" is "pior" (worse).',
         'pior',
         'The comparative of "mau/ruim" is "pior".',
         375
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('mais mau', false, 0),
       ('pior', true, 1),
       ('mais ruim', false, 2),
       ('péssimo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 376 (comp. irregular: maior) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular comparative of "grande" (big)?',
         'The comparative of "grande" is "maior" (bigger) — typically used for size, not age.',
         'maior',
         'The comparative of "grande" is "maior".',
         376
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('mais grande', false, 0),
       ('grandão', false, 1),
       ('maior', true, 2),
       ('máximo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 377 (comp. irregular: menor) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular comparative of "pequeno" (small)?',
         'The comparative of "pequeno" is "menor" (smaller).',
         'menor',
         'The comparative of "pequeno" is "menor".',
         377
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('mais pequeno', false, 0),
       ('pequenino', false, 1),
       ('mínimo', false, 2),
       ('menor', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 378 (superlativo absoluto: -íssimo lindíssimo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "lindíssimo" mean?',
         'The "-íssimo" suffix forms the superlativo absoluto: "lindíssimo" = "extremely beautiful".',
         'extremely beautiful',
         '"Lindíssimo" means "extremely beautiful" — a superlativo absoluto.',
         378
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('extremely beautiful', true, 0),
       ('beautiful enough', false, 1),
       ('less beautiful', false, 2),
       ('the most beautiful', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 379 (superlativo absoluto: caríssimo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "caríssimo" mean?',
         '"Caríssimo" is the superlativo absoluto of "caro" — "extremely expensive".',
         'extremely expensive',
         '"Caríssimo" means "extremely expensive".',
         379
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cheaper', false, 0),
       ('extremely expensive', true, 1),
       ('expensive enough', false, 2),
       ('a bit expensive', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 380 (superlativo absoluto: facílimo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the superlativo absoluto of "fácil"?',
         '"Fácil" has an irregular superlativo absoluto: "facílimo" (extremely easy).',
         'facílimo',
         'The superlativo absoluto of "fácil" is "facílimo".',
         380
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('facílimo', true, 0),
       ('facilíssimo', false, 1),
       ('mais fácil', false, 2),
       ('o fácil', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 381 (superlativo relativo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "the most beautiful in the class"?',
         'The superlativo relativo uses "o/a mais ... de": "a mais bonita da turma".',
         'a mais bonita da turma',
         '"The most beautiful in the class" = "a mais bonita da turma".',
         381
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('bonitíssima da turma', false, 0),
       ('a mais bonita da turma', true, 1),
       ('mais bonita que a turma', false, 2),
       ('a bonita mais turma', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 382 (irregular superlativo: ótimo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular superlativo absoluto of "bom"?',
         'The irregular superlativo absoluto of "bom" is "ótimo" (excellent).',
         'ótimo',
         'The irregular superlativo absoluto of "bom" is "ótimo".',
         382
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('boníssimo', false, 0),
       ('melhor', false, 1),
       ('mais bom', false, 2),
       ('ótimo', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 383 (irregular superlativo: péssimo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular superlativo absoluto of "mau/ruim"?',
         'The irregular superlativo absoluto of "mau/ruim" is "péssimo" (awful).',
         'péssimo',
         'The irregular superlativo absoluto of "mau/ruim" is "péssimo".',
         383
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('péssimo', true, 0),
       ('pior', false, 1),
       ('mais ruim', false, 2),
       ('maissimo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 384 (irregular superlativo: máximo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular superlativo absoluto of "grande"?',
         'The irregular superlativo absoluto of "grande" is "máximo" (greatest).',
         'máximo',
         'The irregular superlativo absoluto of "grande" is "máximo".',
         384
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('grandíssimo', false, 0),
       ('máximo', true, 1),
       ('maior', false, 2),
       ('mais grande', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 385 (irregular superlativo: mínimo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the irregular superlativo absoluto of "pequeno"?',
         'The irregular superlativo absoluto of "pequeno" is "mínimo" (smallest).',
         'mínimo',
         'The irregular superlativo absoluto of "pequeno" is "mínimo".',
         385
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pequenino', false, 0),
       ('menor', false, 1),
       ('mínimo', true, 2),
       ('pequeníssimo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 386 (comp. age: mais velho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "older than" (about a person''s age)?',
         'For age, use "mais velho do que": "Ele é mais velho do que eu". "Maior" is for size, not age.',
         'mais velho do que',
         '"Older than" = "mais velho do que".',
         386
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('maior do que', false, 0),
       ('mais novo do que', false, 1),
       ('velhíssimo', false, 2),
       ('mais velho do que', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 387 (superlativo: a mais alta) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "She is the tallest of the group."',
         '"A mais alta do grupo" uses the superlativo relativo with article + mais + adjective + de.',
         'Ela é a mais alta do grupo.',
         '"She is the tallest of the group" = "Ela é a mais alta do grupo".',
         387
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ela é a mais alta do grupo.', true, 0),
       ('Ela é altíssima grupo.', false, 1),
       ('Ela é mais alta grupo.', false, 2),
       ('Ela é a alta mais do grupo.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 388 (comp.: mais bonita que) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "She is prettier than her sister."',
         '"Ela é mais bonita do que a irmã" uses "mais ... do que" for comparison.',
         'Ela é mais bonita do que a irmã.',
         '"She is prettier than her sister" = "Ela é mais bonita do que a irmã".',
         388
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ela é bonitíssima irmã.', false, 0),
       ('Ela é mais bonita do que a irmã.', true, 1),
       ('Ela é tão bonita irmã.', false, 2),
       ('Ela é bonita mais que irmã.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 389 (comp. tanto quanto: nouns) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I have as many books as you."',
         '"Tantos ... quanto" agrees in gender/number with the noun: "Tenho tantos livros quanto você".',
         'Tenho tantos livros quanto você.',
         '"I have as many books as you" = "Tenho tantos livros quanto você".',
         389
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tenho mais livros quanto você.', false, 0),
       ('Tenho tão livros quanto você.', false, 1),
       ('Tenho tantos livros quanto você.', true, 2),
       ('Tenho tanto livros quanto você.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 390 (contração: no = em + o) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the contraction "no" combine?',
         '"No" = "em + o" (e.g., "no parque" = "in the park").',
         'em + o',
         'The contraction "no" = "em + o" (e.g., "no parque").',
         390
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('em + o', true, 0),
       ('de + o', false, 1),
       ('a + o', false, 2),
       ('por + o', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 391 (contração: do = de + o) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the contraction "do" combine?',
         '"Do" = "de + o" (e.g., "o livro do João" = "João''s book").',
         'de + o',
         'The contraction "do" = "de + o".',
         391
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('em + o', false, 0),
       ('de + o', true, 1),
       ('a + o', false, 2),
       ('por + o', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 392 (contração: pelo = por + o) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the contraction "pelo" combine?',
         '"Pelo" = "por + o" (e.g., "pelo caminho" = "along the way").',
         'por + o',
         'The contraction "pelo" = "por + o".',
         392
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('para + o', false, 0),
       ('a + o', false, 1),
       ('por + o', true, 2),
       ('em + o', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 393 (contração: ao = a + o) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the contraction "ao" combine?',
         '"Ao" = "a + o" (e.g., "ir ao mercado" = "to go to the market").',
         'a + o',
         'The contraction "ao" = "a + o".',
         393
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('de + o', false, 0),
       ('em + o', false, 1),
       ('por + o', false, 2),
       ('a + o', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 394 (contração: à = a + a) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the contraction "à" (with grave accent) combine?',
         '"À" = "a + a" — known as crase. Example: "Vou à praia" = "I''m going to the beach".',
         'a + a',
         'The contraction "à" = "a + a" (crase).',
         394
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a + a', true, 0),
       ('de + a', false, 1),
       ('em + a', false, 2),
       ('por + a', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 395 (contração: num = em + um) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "num" combine?',
         '"Num" = "em + um" (e.g., "num dia frio" = "on a cold day").',
         'em + um',
         'The contraction "num" = "em + um".',
         395
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('de + um', false, 0),
       ('em + um', true, 1),
       ('a + um', false, 2),
       ('por + um', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 396 (contração: dum = de + um) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the contraction "dum" combine?',
         '"Dum" = "de + um" (e.g., "dum jeito" = "of one way"). Less frequent in modern BR-PT, which often writes "de um".',
         'de + um',
         'The contraction "dum" = "de + um".',
         396
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('em + um', false, 0),
       ('a + um', false, 1),
       ('de + um', true, 2),
       ('por + um', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 397 (por vs para: purpose) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which preposition expresses purpose/destination — "para" or "por"?',
         '"Para" expresses purpose, destination, or recipient. "Por" expresses cause, exchange, or route.',
         'para',
         '"Para" expresses purpose or destination; "por" expresses cause, exchange, or route.',
         397
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('para', true, 0),
       ('por', false, 1),
       ('de', false, 2),
       ('em', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 398 (por: passar por) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Passei ___ Paris durante a viagem."',
         '"Por" expresses passage/route through a place: "Passei por Paris".',
         'por',
         '"Passei por Paris" uses "por" to express route/passage.',
         398
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('para', false, 0),
       ('por', true, 1),
       ('de', false, 2),
       ('em', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 399 (a vs em: location) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which preposition typically marks the destination of "ir" (to go)?',
         '"Ir a" expresses a brief visit; "ir para" implies a longer stay or permanent move. BR-PT often uses "ir em" colloquially.',
         'a',
         '"Ir a + place" is the standard preposition for "to go to".',
         399
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('por', false, 0),
       ('de', false, 1),
       ('com', false, 2),
       ('a', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 400 (em: location inside) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which preposition expresses "inside" a location, as in "in the room"?',
         '"Em" expresses being inside a place: "Estou no quarto" = "I''m in the room".',
         'em',
         '"Em" expresses being inside a place ("no quarto").',
         400
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('em', true, 0),
       ('a', false, 1),
       ('por', false, 2),
       ('para', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 401 (de: origem) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which preposition expresses origin, as in "I am from Brazil"?',
         '"De" expresses origin: "Eu sou do Brasil" = "I am from Brazil".',
         'de',
         '"De" expresses origin ("Sou do Brasil").',
         401
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('em', false, 0),
       ('de', true, 1),
       ('para', false, 2),
       ('por', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 402 (com: company) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which preposition expresses accompaniment, as in "with my friend"?',
         '"Com" expresses accompaniment: "com meu amigo".',
         'com',
         '"Com" expresses accompaniment ("com meu amigo").',
         402
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('de', false, 0),
       ('por', false, 1),
       ('com', true, 2),
       ('em', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 403 (em: tempo dentro de um período) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which preposition marks a period (year, month) — as in "in 2026"?',
         '"Em" introduces a period of time: "em 2026", "em janeiro", "no inverno".',
         'em',
         '"Em" introduces a period of time ("em 2026").',
         403
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a', false, 0),
       ('de', false, 1),
       ('por', false, 2),
       ('em', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 404 (sobre) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "sobre" mean as a preposition?',
         '"Sobre" can mean "about" (a topic) or "on/over" (a surface). Context decides.',
         'about / on / over',
         '"Sobre" means "about" (a topic) or "on/over" (a surface).',
         404
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('about / on / over', true, 0),
       ('under', false, 1),
       ('with', false, 2),
       ('from', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 405 (entre) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "entre" mean?',
         '"Entre" means "between" or "among".',
         'between / among',
         '"Entre" means "between" or "among".',
         405
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('about', false, 0),
       ('between / among', true, 1),
       ('inside', false, 2),
       ('under', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 406 (para: recipient) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "This gift is for you."',
         '"Para" marks recipient: "Este presente é para você".',
         'Este presente é para você.',
         '"This gift is for you" = "Este presente é para você".',
         406
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Este presente é por você.', false, 0),
       ('Este presente é a você.', false, 1),
       ('Este presente é para você.', true, 2),
       ('Este presente é de você.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 407 (por: exchange) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I paid R$50 for the book."',
         '"Por" marks the price/exchange: "Paguei R$50 pelo livro" (pelo = por + o).',
         'Paguei R$50 pelo livro.',
         '"I paid R$50 for the book" = "Paguei R$50 pelo livro".',
         407
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Paguei R$50 pelo livro.', true, 0),
       ('Paguei R$50 para o livro.', false, 1),
       ('Paguei R$50 no livro.', false, 2),
       ('Paguei R$50 do livro.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 408 (de: possession) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "Maria''s car."',
         'Possession uses "de": "O carro da Maria" (da = de + a).',
         'O carro da Maria.',
         '"Maria''s car" = "O carro da Maria".',
         408
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('O Maria carro.', false, 0),
       ('O carro Maria.', false, 1),
       ('O carro da Maria.', true, 2),
       ('O carro à Maria.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 409 (na vs no) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which is correct: "She lives ___ Brasil."',
         'BR-PT uses an article with most country names: "no Brasil" (em + o = no).',
         'no',
         '"Ela mora no Brasil" — BR takes an article with "Brasil".',
         409
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('em', false, 0),
       ('na', false, 1),
       ('a', false, 2),
       ('no', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 410 (vocab roupa: camisa) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "camisa" mean?',
         '"Camisa" is a shirt — specifically a button-up shirt. A t-shirt is "camiseta".',
         'shirt',
         '"Camisa" means "shirt".',
         410
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('shirt', true, 0),
       ('pants', false, 1),
       ('shoes', false, 2),
       ('hat', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 411 (vocab roupa: calça) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "calça" mean?',
         '"Calça" means pants/trousers and is singular in Portuguese.',
         'pants',
         '"Calça" means "pants" (singular in Portuguese).',
         411
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('socks', false, 0),
       ('pants', true, 1),
       ('shirt', false, 2),
       ('shoes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 412 (vocab roupa: vestido) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "vestido" mean?',
         '"Vestido" is a dress (noun) — also the past participle of "vestir" (to wear).',
         'dress',
         '"Vestido" means "dress".',
         412
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('coat', false, 0),
       ('shirt', false, 1),
       ('dress', true, 2),
       ('skirt', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 413 (vocab roupa: sapato) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "sapato" mean?',
         '"Sapato" is a shoe; plural "sapatos" is shoes.',
         'shoe',
         '"Sapato" means "shoe".',
         413
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('hat', false, 0),
       ('sock', false, 1),
       ('jacket', false, 2),
       ('shoe', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 414 (vocab profissão: médico) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "médico" mean?',
         '"Médico" is a doctor (medical professional). Feminine: "médica".',
         'doctor',
         '"Médico" means "doctor".',
         414
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('doctor', true, 0),
       ('teacher', false, 1),
       ('lawyer', false, 2),
       ('engineer', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 415 (vocab profissão: advogado) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "advogado" mean?',
         '"Advogado" means lawyer. Feminine: "advogada".',
         'lawyer',
         '"Advogado" means "lawyer".',
         415
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('teacher', false, 0),
       ('lawyer', true, 1),
       ('cook', false, 2),
       ('driver', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 416 (vocab profissão: engenheiro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "engenheiro" mean?',
         '"Engenheiro" means engineer.',
         'engineer',
         '"Engenheiro" means "engineer".',
         416
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('chef', false, 0),
       ('driver', false, 1),
       ('engineer', true, 2),
       ('lawyer', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 417 (vocab transporte: ônibus) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ônibus" mean in BR-PT?',
         '"Ônibus" is the BR-PT word for bus. PT-PT uses "autocarro".',
         'bus',
         '"Ônibus" means "bus" in BR-PT.',
         417
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('train', false, 0),
       ('car', false, 1),
       ('plane', false, 2),
       ('bus', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 418 (vocab transporte: carro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "carro" mean?',
         '"Carro" is a car (auto). PT-PT also uses "carro", but "automóvel" is common in formal contexts.',
         'car',
         '"Carro" means "car".',
         418
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('car', true, 0),
       ('bus', false, 1),
       ('train', false, 2),
       ('bicycle', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 419 (vocab transporte: metrô) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "metrô" mean in BR-PT?',
         '"Metrô" is the BR-PT spelling for subway/metro. PT-PT writes "metro".',
         'subway / metro',
         '"Metrô" means "subway/metro" in BR-PT.',
         419
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('train', false, 0),
       ('subway / metro', true, 1),
       ('bus', false, 2),
       ('plane', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 420 (vocab transporte: avião) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "avião" mean?',
         '"Avião" is an airplane.',
         'airplane',
         '"Avião" means "airplane".',
         420
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('airplane', true, 0),
       ('boat', false, 1),
       ('helicopter', false, 2),
       ('train', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 421 (vocab casa: cozinha) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "cozinha" mean?',
         '"Cozinha" is the kitchen (also a verb form of "cozinhar" = to cook).',
         'kitchen',
         '"Cozinha" means "kitchen".',
         421
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('bedroom', false, 0),
       ('kitchen', true, 1),
       ('bathroom', false, 2),
       ('living room', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 422 (vocab casa: quarto) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "quarto" mean (as a room)?',
         '"Quarto" is a bedroom (also "fourth" as a number).',
         'bedroom',
         '"Quarto" means "bedroom".',
         422
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('kitchen', false, 0),
       ('garden', false, 1),
       ('bedroom', true, 2),
       ('bathroom', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 423 (vocab casa: banheiro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "banheiro" mean in BR-PT?',
         '"Banheiro" is the bathroom in BR-PT. PT-PT prefers "casa de banho".',
         'bathroom',
         '"Banheiro" means "bathroom" in BR-PT.',
         423
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('garage', false, 0),
       ('kitchen', false, 1),
       ('garden', false, 2),
       ('bathroom', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 424 (vocab casa: sala) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "sala" mean?',
         '"Sala" generally means living room (sala de estar) or classroom (sala de aula) depending on context.',
         'living room',
         '"Sala" means "living room" (or "room" generally).',
         424
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('living room', true, 0),
       ('bedroom', false, 1),
       ('kitchen', false, 2),
       ('bathroom', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 425 (vocab dinheiro: dinheiro) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "dinheiro" mean?',
         '"Dinheiro" is money.',
         'money',
         '"Dinheiro" means "money".',
         425
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('change', false, 0),
       ('money', true, 1),
       ('card', false, 2),
       ('bill', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 426 (vocab dinheiro: cartão) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "cartão" mean (in a shopping context)?',
         '"Cartão" is a card — typically a credit/debit card in shopping contexts.',
         'card',
         '"Cartão" means "card" (e.g., credit/debit card).',
         426
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cash', false, 0),
       ('coin', false, 1),
       ('card', true, 2),
       ('check', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 427 (vocab dinheiro: troco) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "troco" mean?',
         '"Troco" is the change you get back after paying.',
         'change',
         '"Troco" means "change" (money returned after payment).',
         427
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('change', true, 0),
       ('tip', false, 1),
       ('receipt', false, 2),
       ('coin', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 428 (vocab dinheiro: caro vs barato) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "barato" mean?',
         '"Barato" means cheap; its opposite is "caro" (expensive).',
         'cheap',
         '"Barato" means "cheap"; its opposite is "caro".',
         428
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('expensive', false, 0),
       ('cheap', true, 1),
       ('free', false, 2),
       ('paid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 429 (vocab dinheiro: quanto custa) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you ask "How much does it cost?"',
         'The standard question is "Quanto custa?".',
         'Quanto custa?',
         '"How much does it cost?" = "Quanto custa?".',
         429
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Que preço?', false, 0),
       ('Quanto é caro?', false, 1),
       ('Onde custa?', false, 2),
       ('Quanto custa?', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 430 (idiom: dar um jeito) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the idiom "dar um jeito" mean?',
         '"Dar um jeito" = to find a way / sort it out — a very Brazilian expression for improvising a solution.',
         'to find a way / sort it out',
         '"Dar um jeito" means "to find a way" or "to sort it out".',
         430
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to find a way / sort it out', true, 0),
       ('to give up', false, 1),
       ('to fall over', false, 2),
       ('to wait patiently', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 431 (idiom: valer a pena) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "valer a pena" mean?',
         '"Valer a pena" = to be worth it.',
         'to be worth it',
         '"Valer a pena" means "to be worth it".',
         431
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to suffer pain', false, 0),
       ('to be worth it', true, 1),
       ('to fall apart', false, 2),
       ('to make sense', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 432 (idiom: estar a fim de) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "estar a fim de" mean?',
         '"Estar a fim de" = to feel like doing something, or to be interested in someone (romantically).',
         'to feel like / to be into',
         '"Estar a fim de" means "to feel like" or "to be into (someone)".',
         432
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to be at the end', false, 0),
       ('to be tired of', false, 1),
       ('to feel like / to be into', true, 2),
       ('to be in front of', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 433 (verb: pegar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "pegar" most commonly mean in BR-PT?',
         '"Pegar" = to catch / grab / take (e.g., "pegar o ônibus" = catch the bus).',
         'to catch / grab',
         '"Pegar" means "to catch" or "to grab".',
         433
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to leave behind', false, 0),
       ('to look at', false, 1),
       ('to throw away', false, 2),
       ('to catch / grab', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 434 (verb: chegar — cheguei) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "chegar" in the pretérito perfeito for "eu".',
         '"Chegar" is regular but spelling-shifts to "cheguei" in the 1st-person singular to preserve the hard /g/ sound.',
         'cheguei',
         'The pretérito perfeito of "chegar" for "eu" is "cheguei".',
         434
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cheguei', true, 0),
       ('cheguí', false, 1),
       ('chegei', false, 2),
       ('cheguava', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 435 (verb: passar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "passar" most commonly mean in "passar tempo"?',
         '"Passar tempo" = to spend time. "Passar" also means to pass (by), to iron, to do well on an exam.',
         'to spend (time)',
         '"Passar tempo" means "to spend time".',
         435
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to lose (time)', false, 0),
       ('to spend (time)', true, 1),
       ('to wait (time)', false, 2),
       ('to count (time)', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 436 (verb: tomar banho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "tomar banho" mean?',
         '"Tomar banho" literally "take a bath" — BR-PT uses "tomar" for both showers and baths.',
         'to take a shower/bath',
         '"Tomar banho" means "to take a shower" or "to take a bath".',
         436
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to take a shower/bath', true, 0),
       ('to swim', false, 1),
       ('to dry off', false, 2),
       ('to wash hands', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 437 (verb: levar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "levar" mean?',
         '"Levar" = to take (something/someone somewhere). Contrast with "trazer" (to bring here).',
         'to take / carry',
         '"Levar" means "to take" or "to carry" (away from speaker).',
         437
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to bring', false, 0),
       ('to take / carry', true, 1),
       ('to throw', false, 2),
       ('to leave', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 438 (verb: trazer — trouxe) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Conjugate "trazer" in the pretérito perfeito for "eu".',
         '"Trazer" is irregular: "trouxe", "trouxeste", "trouxe", "trouxemos", "trouxeram".',
         'trouxe',
         'The pretérito perfeito of "trazer" for "eu" is "trouxe".',
         438
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('trazi', false, 0),
       ('trouxi', false, 1),
       ('trouxe', true, 2),
       ('trazia', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 439 (verb: pôr vs colocar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the difference between "pôr" and "colocar"?',
         '"Pôr" and "colocar" both mean to put/place; "colocar" is more common in everyday speech, while "pôr" appears in fixed expressions.',
         'They are near-synonyms; "colocar" is more common.',
         '"Pôr" and "colocar" both mean "to put"; "colocar" is the everyday choice.',
         439
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('"Pôr" means "to take"; "colocar" means "to put".', false, 0),
       ('They are near-synonyms; "colocar" is more common.', true, 1),
       ('"Pôr" is only for liquids.', false, 2),
       ('"Colocar" is only used in PT-PT.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 440 (verb: ficar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ficar feliz" mean?',
         '"Ficar" + adjective expresses becoming a state: "ficar feliz" = "to become/get happy".',
         'to become/get happy',
         '"Ficar feliz" means "to become happy" or "to get happy".',
         440
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to be always happy', false, 0),
       ('to stay happy forever', false, 1),
       ('to seem happy', false, 2),
       ('to become/get happy', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 441 (verb: acabar de) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "acabar de + infinitivo" mean?',
         '"Acabar de" + infinitive = "to have just done something" (e.g., "Acabei de chegar" = "I just arrived").',
         'to have just (done)',
         '"Acabar de + infinitivo" means "to have just done something".',
         441
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to have just (done)', true, 0),
       ('to finish (doing)', false, 1),
       ('to be about to (do)', false, 2),
       ('to want to (do)', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 442 (verb: começar a) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Complete: "Eu ___ a estudar português."',
         '"Começar a + infinitivo" = to start doing something. The verb takes the preposition "a" before the infinitive.',
         'comecei',
         '"Eu comecei a estudar português" uses "começar a + infinitivo".',
         442
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('comecei', true, 0),
       ('começei', false, 1),
       ('começar', false, 2),
       ('começo', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 443 (verb: parar de) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "parar de + infinitivo" mean?',
         '"Parar de + infinitivo" = to stop doing something (e.g., "Parei de fumar" = "I stopped smoking").',
         'to stop doing',
         '"Parar de + infinitivo" means "to stop doing something".',
         443
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to start doing', false, 0),
       ('to stop doing', true, 1),
       ('to continue doing', false, 2),
       ('to try doing', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 444 (verb: continuar a) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "continuar a + infinitivo" mean?',
         '"Continuar a + infinitivo" = to continue / keep on doing something. BR-PT also accepts "continuar + gerúndio" ("continuar estudando").',
         'to continue / keep doing',
         '"Continuar a + infinitivo" means "to continue/keep doing".',
         444
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to continue / keep doing', true, 0),
       ('to finish doing', false, 1),
       ('to stop doing', false, 2),
       ('to start doing', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 445 (verb: costumar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "costumar + infinitivo" mean?',
         '"Costumar + infinitivo" = to usually do / to be in the habit of (e.g., "Costumo correr de manhã" = "I usually run in the morning").',
         'to usually do / be in the habit of',
         '"Costumar + infinitivo" means "to usually do" or "to be in the habit of".',
         445
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to taste of', false, 0),
       ('to like to', false, 1),
       ('to usually do / be in the habit of', true, 2),
       ('to refuse to', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 446 (idiom: ficar com fome) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ficar com fome" mean?',
         '"Ficar com fome" literally "stay with hunger" = "to get hungry".',
         'to get hungry',
         '"Ficar com fome" means "to get hungry".',
         446
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to be full', false, 0),
       ('to feed someone', false, 1),
       ('to skip a meal', false, 2),
       ('to get hungry', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 447 (idiom: estar com sede) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I am thirsty" in Portuguese?',
         'BR-PT uses "estar com" + noun for many bodily states: "Estou com sede" = "I am thirsty".',
         'Estou com sede.',
         '"I am thirsty" in BR-PT = "Estou com sede".',
         447
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Estou com sede.', true, 0),
       ('Sou sede.', false, 1),
       ('Tenho sede sou.', false, 2),
       ('Sou com sede.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 448 (verb: ficar com) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ficar com" mean in "Vou ficar com este"?',
         '"Ficar com" = to keep / hold on to (e.g., "Vou ficar com este" = "I''ll take/keep this one").',
         'to keep / take',
         '"Ficar com" means "to keep" or "to take" (something).',
         448
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to throw away', false, 0),
       ('to keep / take', true, 1),
       ('to share with', false, 2),
       ('to look like', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 449 (verb: dar para) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "dá para" mean in BR-PT (as in "Dá para ir"?)?',
         '"Dá para" = "is it possible to" / "can we" — a very common BR way to ask about feasibility.',
         'is it possible to',
         '"Dá para" means "is it possible to" — a feasibility expression in BR-PT.',
         449
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('it gives away', false, 0),
       ('it must be', false, 1),
       ('is it possible to', true, 2),
       ('it costs', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 450 (translation: I hope you are well) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I hope you are well."',
         '"Espero que" triggers the subjunctive: "Espero que você esteja bem".',
         'Espero que você esteja bem.',
         '"I hope you are well" = "Espero que você esteja bem".',
         450
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Espero que você está bem.', false, 0),
       ('Espero você é bem.', false, 1),
       ('Espero que você esteja bem.', true, 2),
       ('Espero que você seja bem.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 451 (translation: If I had money, I would travel) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "If I had money, I would travel the world."',
         'Hypothetical: "Se eu tivesse dinheiro, viajaria pelo mundo" pairs imperfeito do subjuntivo with futuro do pretérito.',
         'Se eu tivesse dinheiro, viajaria pelo mundo.',
         '"If I had money, I would travel the world" = "Se eu tivesse dinheiro, viajaria pelo mundo".',
         451
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Se eu tinha dinheiro, viajava pelo mundo.', false, 0),
       ('Se eu tivesse dinheiro, viajaria pelo mundo.', true, 1),
       ('Se eu tenho dinheiro, vou viajar pelo mundo.', false, 2),
       ('Se eu tiver dinheiro, viajarei pelo mundo.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 452 (translation: When you arrive, call me) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "When you arrive, call me."',
         '"Quando" + future use takes futuro do subjuntivo + imperativo: "Quando você chegar, me ligue".',
         'Quando você chegar, me ligue.',
         '"When you arrive, call me" = "Quando você chegar, me ligue".',
         452
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quando você chegar, me ligue.', true, 0),
       ('Quando você chega, me liga.', false, 1),
       ('Quando você chegou, me ligou.', false, 2),
       ('Quando você chegará, me ligará.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 453 (translation: I have been studying for two hours) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I have been studying for two hours."',
         'Portuguese expresses ongoing duration with "estar + gerúndio" + "faz/há X tempo": "Estou estudando faz duas horas".',
         'Estou estudando faz duas horas.',
         '"I have been studying for two hours" = "Estou estudando faz duas horas".',
         453
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tenho estudado duas horas.', false, 0),
       ('Estudei por duas horas.', false, 1),
       ('Estou estudando faz duas horas.', true, 2),
       ('Vou estudar duas horas.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 454 (translation: She told me she was tired) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "She told me she was tired."',
         'Reported speech uses imperfeito for ongoing past state: "Ela me disse que estava cansada".',
         'Ela me disse que estava cansada.',
         '"She told me she was tired" = "Ela me disse que estava cansada".',
         454
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ela me disse que está cansada.', false, 0),
       ('Ela me dizia que esteve cansada.', false, 1),
       ('Ela me disse que esteja cansada.', false, 2),
       ('Ela me disse que estava cansada.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 455 (translation: We had already eaten when they arrived) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "We had already eaten when they arrived."',
         'Past-before-past uses "tinha" + particípio: "Nós já tínhamos comido quando eles chegaram".',
         'Nós já tínhamos comido quando eles chegaram.',
         '"We had already eaten when they arrived" = "Nós já tínhamos comido quando eles chegaram".',
         455
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nós já comemos quando eles chegaram.', false, 0),
       ('Nós já tínhamos comido quando eles chegaram.', true, 1),
       ('Nós já comíamos quando eles chegaram.', false, 2),
       ('Nós já vamos comer quando eles chegarem.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 456 (translation: You should have studied more) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "You should have studied more."',
         '"Should have" + past participle uses "deveria ter" + particípio: "Você deveria ter estudado mais".',
         'Você deveria ter estudado mais.',
         '"You should have studied more" = "Você deveria ter estudado mais".',
         456
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Você deve estudar mais.', false, 0),
       ('Você deveria ter estudado mais.', true, 1),
       ('Você devia estudar mais.', false, 2),
       ('Você terá que estudar mais.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 457 (translation: I would have gone if I had known) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I would have gone if I had known."',
         'Past-irreal: "Teria ido se tivesse sabido" pairs futuro do pretérito composto with mais-que-perfeito do subjuntivo.',
         'Teria ido se tivesse sabido.',
         '"I would have gone if I had known" = "Teria ido se tivesse sabido".',
         457
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Iria se soubesse.', false, 0),
       ('Fui se sabia.', false, 1),
       ('Teria ido se tivesse sabido.', true, 2),
       ('Vou se eu souber.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 458 (translation: It is raining, but we are going out anyway) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "It is raining, but we are going out anyway."',
         'Use estar + gerúndio for ongoing actions: "Está chovendo, mas vamos sair mesmo assim".',
         'Está chovendo, mas vamos sair mesmo assim.',
         '"It is raining, but we are going out anyway" = "Está chovendo, mas vamos sair mesmo assim".',
         458
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Chove, mas saímos depois.', false, 0),
       ('Está chovendo, mas vamos sair mesmo assim.', true, 1),
       ('Choveu, mas saímos mesmo assim.', false, 2),
       ('Vai chover, mas saímos sim.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 459 (translation: Don't forget the keys) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "Don''t forget the keys."',
         'Negative imperative + object: "Não esqueça as chaves".',
         'Não esqueça as chaves.',
         '"Don''t forget the keys" = "Não esqueça as chaves".',
         459
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Não esquece as chaves.', false, 0),
       ('Não esquecer as chaves.', false, 1),
       ('Não esqueceu as chaves.', false, 2),
       ('Não esqueça as chaves.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 460 (translation: Let's go to the beach) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "Let''s go to the beach."',
         'Use "vamos + infinitivo" for "let''s": "Vamos à praia" (à = a + a).',
         'Vamos à praia.',
         '"Let''s go to the beach" = "Vamos à praia".',
         460
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vamos à praia.', true, 0),
       ('Vai a praia.', false, 1),
       ('Iremos praia.', false, 2),
       ('Vamos para a praia ir.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 461 (translation: I wish you were here) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I wish you were here."',
         '"I wish" expressing a counter-factual present uses imperfeito do subjuntivo: "Queria que você estivesse aqui".',
         'Queria que você estivesse aqui.',
         '"I wish you were here" = "Queria que você estivesse aqui".',
         461
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quero que você está aqui.', false, 0),
       ('Queria que você estivesse aqui.', true, 1),
       ('Espero que você esteja aqui.', false, 2),
       ('Quero que você esteja aqui.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 462 (translation: It is cold today) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "It is cold today."',
         'Weather uses "estar" in BR-PT: "Está frio hoje".',
         'Está frio hoje.',
         '"It is cold today" = "Está frio hoje".',
         462
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('É frio hoje.', false, 0),
       ('Tem frio hoje.', false, 1),
       ('Está frio hoje.', true, 2),
       ('Foi frio hoje.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 463 (translation: I don't know what to do) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I don''t know what to do."',
         '"Não sei o que fazer" — the infinitive after the interrogative.',
         'Não sei o que fazer.',
         '"I don''t know what to do" = "Não sei o que fazer".',
         463
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Não conheço o que fazer.', false, 0),
       ('Não sei que fiz.', false, 1),
       ('Não sei que faço.', false, 2),
       ('Não sei o que fazer.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 464 (translation: How long have you lived here) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "How long have you lived here?"',
         '"Há quanto tempo você mora aqui?" — present tense + "há quanto tempo".',
         'Há quanto tempo você mora aqui?',
         '"How long have you lived here?" = "Há quanto tempo você mora aqui?".',
         464
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Há quanto tempo você mora aqui?', true, 0),
       ('Quanto tempo você morou aqui?', false, 1),
       ('Por quanto tempo você morava aqui?', false, 2),
       ('Quando você mora aqui?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 465 (translation: I have to study) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I have to study."',
         '"Tenho que estudar" — "ter que" expresses obligation.',
         'Tenho que estudar.',
         '"I have to study" = "Tenho que estudar".',
         465
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Devo estudo.', false, 0),
       ('Tenho que estudar.', true, 1),
       ('Tenho estudo.', false, 2),
       ('Preciso estudei.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 466 (translation: I would like a coffee) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I would like a coffee, please."',
         'Polite request: "Eu gostaria de um café, por favor" — uses futuro do pretérito for politeness.',
         'Eu gostaria de um café, por favor.',
         '"I would like a coffee, please" = "Eu gostaria de um café, por favor".',
         466
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quero um café, por favor.', false, 0),
       ('Vou gostar um café, por favor.', false, 1),
       ('Eu gostaria de um café, por favor.', true, 2),
       ('Gostei de um café, por favor.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 467 (translation: He has been working a lot) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "He has been working a lot lately."',
         'Repeated/continued recent action uses pretérito perfeito composto: "Ele tem trabalhado muito ultimamente".',
         'Ele tem trabalhado muito ultimamente.',
         '"He has been working a lot lately" = "Ele tem trabalhado muito ultimamente".',
         467
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele trabalhou muito ultimamente.', false, 0),
       ('Ele tem trabalhado muito ultimamente.', true, 1),
       ('Ele trabalha muito ultimamente.', false, 2),
       ('Ele trabalhava muito ultimamente.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 468 (translation: I'm going to travel next month) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I''m going to travel next month."',
         'Near-future uses "ir + infinitivo": "Vou viajar no próximo mês".',
         'Vou viajar no próximo mês.',
         '"I''m going to travel next month" = "Vou viajar no próximo mês".',
         468
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Viajei no próximo mês.', false, 0),
       ('Viajo o próximo mês.', false, 1),
       ('Vou viajar no próximo mês.', true, 2),
       ('Viajaria no próximo mês.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 469 (translation: He always arrives late) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "He always arrives late."',
         'Habitual present uses the simple presente: "Ele sempre chega tarde".',
         'Ele sempre chega tarde.',
         '"He always arrives late" = "Ele sempre chega tarde".',
         469
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Ele chegou sempre tarde.', false, 0),
       ('Ele chegará sempre tarde.', false, 1),
       ('Ele chegava sempre tarde.', false, 2),
       ('Ele sempre chega tarde.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 470 (translation PT→EN: sentence with subjuntivo) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate to English: "Tomara que ele chegue logo."',
         '"Tomara que" + presente do subjuntivo = "Let''s hope (that)..." / "I hope (that)...".',
         'I hope he arrives soon.',
         '"Tomara que ele chegue logo" = "I hope he arrives soon".',
         470
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I hope he arrives soon.', true, 0),
       ('He will arrive soon.', false, 1),
       ('He arrived soon.', false, 2),
       ('He would arrive soon.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 471 (translation: We could go together) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "We could go together."',
         '"Poderíamos ir juntos" — futuro do pretérito of "poder" for polite suggestion.',
         'Poderíamos ir juntos.',
         '"We could go together" = "Poderíamos ir juntos".',
         471
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Podemos ir juntos.', false, 0),
       ('Poderíamos ir juntos.', true, 1),
       ('Pudemos ir juntos.', false, 2),
       ('Pudéssemos ir juntos.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 472 (translation: Even though it is hard, I will try) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "Even though it is hard, I will try."',
         '"Embora" + subjunctive: "Embora seja difícil, vou tentar".',
         'Embora seja difícil, vou tentar.',
         '"Even though it is hard, I will try" = "Embora seja difícil, vou tentar".',
         472
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Embora é difícil, vou tentar.', false, 0),
       ('Embora foi difícil, vou tentar.', false, 1),
       ('Embora seja difícil, vou tentar.', true, 2),
       ('Embora era difícil, vou tentar.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 473 (translation: I have never been to Spain) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I have never been to Spain."',
         '"Nunca fui à Espanha" — pretérito perfeito with "nunca".',
         'Nunca fui à Espanha.',
         '"I have never been to Spain" = "Nunca fui à Espanha".',
         473
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Nunca tenho ido à Espanha.', false, 0),
       ('Nunca era na Espanha.', false, 1),
       ('Nunca vou à Espanha.', false, 2),
       ('Nunca fui à Espanha.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 474 (translation: While I was studying, he was sleeping) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "While I was studying, he was sleeping."',
         'Two simultaneous ongoing past actions: both in imperfeito (or estar imperfeito + gerúndio): "Enquanto eu estudava, ele dormia".',
         'Enquanto eu estudava, ele dormia.',
         '"While I was studying, he was sleeping" = "Enquanto eu estudava, ele dormia".',
         474
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Enquanto eu estudava, ele dormia.', true, 0),
       ('Enquanto eu estudei, ele dormiu.', false, 1),
       ('Enquanto eu estudo, ele dorme.', false, 2),
       ('Enquanto eu estudasse, ele dormisse.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 475 (translation: It is important that you understand) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "It is important that you understand."',
         '"É importante que" + subjunctive: "É importante que você entenda".',
         'É importante que você entenda.',
         '"It is important that you understand" = "É importante que você entenda".',
         475
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('É importante que você entende.', false, 0),
       ('É importante que você entenda.', true, 1),
       ('É importante você entender.', false, 2),
       ('É importante que você entendesse.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 476 (translation: How long ago did you arrive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "How long ago did you arrive?"',
         '"Há quanto tempo você chegou?" — past arrival + "há" for "ago".',
         'Há quanto tempo você chegou?',
         '"How long ago did you arrive?" = "Há quanto tempo você chegou?".',
         476
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Quando você vai chegar?', false, 0),
       ('Quanto tempo você chega?', false, 1),
       ('Há quanto tempo você chegou?', true, 2),
       ('Por quanto tempo você chegará?', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 477 (translation: I am sorry for being late) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "Sorry for being late."',
         '"Desculpe pelo atraso" — apology with "pelo" (por + o) before the noun.',
         'Desculpe pelo atraso.',
         '"Sorry for being late" = "Desculpe pelo atraso".',
         477
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Desculpe para o atraso.', false, 0),
       ('Desculpe atraso.', false, 1),
       ('Desculpe do atraso.', false, 2),
       ('Desculpe pelo atraso.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 478 (translation PT→EN: a future-subj clause) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate to English: "Se você quiser, podemos ir agora."',
         '"Se" + futuro do subjuntivo ("quiser") + main clause in presente: "If you want, we can go now".',
         'If you want, we can go now.',
         '"Se você quiser, podemos ir agora" = "If you want, we can go now".',
         478
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('If you want, we can go now.', true, 0),
       ('If you wanted, we could go now.', false, 1),
       ('You will want, we will go now.', false, 2),
       ('You wanted us to go now.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 479 (translation: I miss you) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "I miss you."',
         'BR-PT uses "Estou com saudade de você" or simply "Saudade de você", since there is no direct verb for "to miss" someone.',
         'Estou com saudade de você.',
         '"I miss you" in BR-PT = "Estou com saudade de você".',
         479
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Eu te perco.', false, 0),
       ('Estou com saudade de você.', true, 1),
       ('Estou faltando você.', false, 2),
       ('Sinto você.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 480 (ser vs estar: chato) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the difference between "ser chato" and "estar chato"?',
         '"Ser chato" = "to be (an) annoying (person)" — a trait. "Estar chato" = "to be (currently) boring" — a temporary state.',
         'ser chato = annoying person; estar chato = currently boring',
         '"Ser chato" describes a permanent trait; "estar chato" describes a temporary state.',
         480
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('They mean the same thing.', false, 0),
       ('ser chato = annoying person; estar chato = currently boring', true, 1),
       ('ser chato = boring; estar chato = annoying', false, 2),
       ('Only "estar chato" is grammatical.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 481 (ser vs estar: bom) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the difference between "ser bom" and "estar bom"?',
         '"Ser bom em algo" = to be good at something (skill). "Estar bom" = "to be good/fine right now" (a state or that food/the situation is tasty/good now).',
         'ser bom = skilled / inherently good; estar bom = good right now',
         '"Ser bom" describes a trait; "estar bom" describes a current state.',
         481
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('ser bom = skilled / inherently good; estar bom = good right now', true, 0),
       ('They are interchangeable.', false, 1),
       ('ser bom = tasty; estar bom = skilled', false, 2),
       ('Only "estar bom" exists.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 482 (por vs para mixed: route vs purpose) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct preposition: "Este presente é ___ você."',
         '"Para" marks the recipient/goal: "Este presente é para você".',
         'para',
         '"Este presente é para você" uses "para" (recipient).',
         482
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('por', false, 0),
       ('para', true, 1),
       ('de', false, 2),
       ('em', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 483 (saber vs conhecer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the difference between "saber" and "conhecer"?',
         '"Saber" = to know a fact or how to do something. "Conhecer" = to be acquainted with (a person, place, or work).',
         'saber = know a fact; conhecer = be acquainted with',
         '"Saber" = know a fact; "conhecer" = be acquainted with a person/place.',
         483
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('They are synonyms.', false, 0),
       ('saber = know a person; conhecer = know a fact', false, 1),
       ('saber = know a fact; conhecer = be acquainted with', true, 2),
       ('saber = think; conhecer = forget', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 484 (levar vs trazer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is the difference between "levar" and "trazer"?',
         '"Levar" = to take (away from the speaker). "Trazer" = to bring (toward the speaker).',
         'levar = take away; trazer = bring here',
         '"Levar" = take (away); "trazer" = bring (here).',
         484
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('levar = take away; trazer = bring here', true, 0),
       ('They mean the same thing.', false, 1),
       ('levar = bring; trazer = take', false, 2),
       ('Only "trazer" is used in BR-PT.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 485 (gerúndio BR vs PT) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How does BR-PT typically express "I am speaking"?',
         'BR-PT uses estar + gerúndio: "Estou falando". PT-PT prefers estar a + infinitivo: "Estou a falar".',
         'Estou falando.',
         '"I am speaking" in BR-PT = "Estou falando" (BR uses gerúndio; PT uses estar a + infinitivo).',
         485
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Estou a falar.', false, 0),
       ('Falo agora.', false, 1),
       ('Estou falando.', true, 2),
       ('Sou falando.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 486 (há vs tem para existência) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How does informal BR-PT express "There are two cars here"?',
         'Informal BR-PT often uses "tem" for existence: "Tem dois carros aqui". The formal/written form is "Há dois carros aqui".',
         'Tem dois carros aqui.',
         'Informal BR-PT uses "tem" for existence: "Tem dois carros aqui" (formal: "Há dois carros aqui").',
         486
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Tem dois carros aqui.', true, 0),
       ('Está dois carros aqui.', false, 1),
       ('São dois carros aqui.', false, 2),
       ('Tinham dois carros aqui.', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 487 (false friend: puxar) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the false friend "puxar" really mean?',
         '"Puxar" means "to pull" (not "push"). Pushing is "empurrar".',
         'to pull',
         '"Puxar" means "to pull" (not "push" — that is "empurrar").',
         487
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to push', false, 0),
       ('to pull', true, 1),
       ('to lift', false, 2),
       ('to throw', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 488 (false friend: assistir) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the false friend "assistir" most often mean in BR-PT?',
         '"Assistir" most often means "to watch" (a film, a game). It can mean "to assist" in formal contexts, but in everyday BR speech it''s "to watch".',
         'to watch',
         '"Assistir" in BR-PT usually means "to watch" (e.g., "assistir um filme").',
         488
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to insist', false, 0),
       ('to remember', false, 1),
       ('to watch', true, 2),
       ('to attend a school', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 489 (false friend: parentes) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the false friend "parentes" mean?',
         '"Parentes" means "relatives" (extended family), not "parents". "Parents" = "pais".',
         'relatives',
         '"Parentes" means "relatives" (not "parents"); "parents" = "pais".',
         489
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('parents', false, 0),
       ('siblings', false, 1),
       ('grandparents', false, 2),
       ('relatives', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 490 (false friend: pretender) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the false friend "pretender" really mean?',
         '"Pretender" means "to intend / plan to" — not "to pretend" (that is "fingir").',
         'to intend / plan to',
         '"Pretender" means "to intend"; "to pretend" = "fingir".',
         490
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('to intend / plan to', true, 0),
       ('to pretend', false, 1),
       ('to imagine', false, 2),
       ('to lie', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 491 (diminutivo: cafezinho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the diminutive "cafezinho" mean?',
         '"Cafezinho" = a small/affectionate coffee — a typical BR cup of strong coffee. The diminutive "-zinho" also conveys warmth.',
         'a little coffee',
         '"Cafezinho" is the diminutive of "café" — a small (or affectionately small) coffee.',
         491
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a giant coffee', false, 0),
       ('a little coffee', true, 1),
       ('a cold coffee', false, 2),
       ('coffee with milk', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 492 (diminutivo: pãozinho) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "pãozinho"?',
         '"Pãozinho" is a small bread roll — diminutive of "pão" with the "-zinho" suffix.',
         'small bread roll',
         '"Pãozinho" is the diminutive of "pão" — a small bread roll.',
         492
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a sandwich', false, 0),
       ('a cake', false, 1),
       ('small bread roll', true, 2),
       ('a cookie', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 493 (diminutivo: casinha) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What is "casinha"?',
         '"Casinha" is the diminutive of "casa" — a small/cute house.',
         'a little house',
         '"Casinha" is the diminutive of "casa" — a small or cute house.',
         493
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a mansion', false, 0),
       ('an apartment', false, 1),
       ('a tent', false, 2),
       ('a little house', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 494 (augmentativo: carrão) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the augmentative "carrão" mean?',
         '"Carrão" is the augmentative of "carro" — a big/impressive car.',
         'a big car',
         '"Carrão" is the augmentative of "carro" — a big/impressive car.',
         494
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('a big car', true, 0),
       ('a small car', false, 1),
       ('a slow car', false, 2),
       ('a broken car', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 495 (saudade — untranslatable) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "saudade" mean?',
         '"Saudade" is the famously hard-to-translate emotion combining longing, nostalgia, and missing someone/something.',
         'longing / nostalgic missing',
         '"Saudade" describes a deep longing or nostalgic missing.',
         495
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('happiness', false, 0),
       ('longing / nostalgic missing', true, 1),
       ('anger', false, 2),
       ('boredom', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 496 (negation: ninguém) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does "ninguém" mean?',
         '"Ninguém" = nobody / no one. Combined with another negative for emphasis: "Não vi ninguém" = "I didn''t see anyone".',
         'nobody',
         '"Ninguém" means "nobody" or "no one".',
         496
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('someone', false, 0),
       ('everyone', false, 1),
       ('nobody', true, 2),
       ('anyone', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 497 (negation: nada) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'How do you say "I didn''t see anything" in Portuguese?',
         'Portuguese uses double negation: "Não vi nada" = literally "I didn''t see nothing" = "I didn''t see anything".',
         'Não vi nada.',
         '"I didn''t see anything" = "Não vi nada" — double negation is standard.',
         497
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Vi nada.', false, 0),
       ('Não vi alguma coisa.', false, 1),
       ('Vi não nada.', false, 2),
       ('Não vi nada.', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 498 (interjection: né) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'What does the BR-PT tag "né?" mean?',
         '"Né?" is a contracted "não é?" — equivalent to English "right?" / "isn''t it?" — extremely common in casual BR speech.',
         'right? / isn''t it?',
         '"Né?" is a contracted "não é?" meaning "right?" or "isn''t it?".',
         498
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('right? / isn''t it?', true, 0),
       ('no?', false, 1),
       ('really!', false, 2),
       ('ok', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 499 (review: você está vs você é) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Translate: "You are tired" (right now).',
         'Temporary state takes "estar": "Você está cansado". "Você é cansado" would mean "You are a tiring person" — unusual.',
         'Você está cansado.',
         '"You are tired (right now)" = "Você está cansado" — temporary state takes "estar".',
         499
  from modules where slug = 'portuguese'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Você é cansado.', false, 0),
       ('Você está cansado.', true, 1),
       ('Você foi cansado.', false, 2),
       ('Você seja cansado.', false, 3)
     ) as c(label, is_correct, order_index);
