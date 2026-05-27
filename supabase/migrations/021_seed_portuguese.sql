-- 021_seed_portuguese.sql
-- Portuguese module: 250 quiz questions (batch 1 of 2)

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

-- BATCH_2_PLACEHOLDER
