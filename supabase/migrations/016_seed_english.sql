-- 016_seed_english.sql
-- English module: 500 quiz questions

-- Question 0 (synonym: happy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "happy"?',
         '"Joyful" is a direct synonym for "happy," both expressing a state of pleasure or contentment.',
         'joyful',
         '"Joyful" is the closest synonym for "happy."',
         0
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('joyful', true, 0),
       ('weary', false, 1),
       ('anxious', false, 2),
       ('bitter', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 1 (synonym: big) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "big"?',
         '"Enormous" means very large in size, matching the sense of "big."',
         'enormous',
         '"Enormous" is a synonym for "big."',
         1
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('tiny', false, 0),
       ('enormous', true, 1),
       ('hollow', false, 2),
       ('narrow', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 2 (synonym: smart) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "smart"?',
         '"Intelligent" describes someone with strong mental capacity, the same idea conveyed by "smart."',
         'intelligent',
         '"Intelligent" is a synonym for "smart."',
         2
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dull', false, 0),
       ('rude', false, 1),
       ('intelligent', true, 2),
       ('loud', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 3 (synonym: fast) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "fast"?',
         '"Swift" means moving with great speed, matching the meaning of "fast."',
         'swift',
         '"Swift" is a synonym for "fast."',
         3
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sluggish', false, 0),
       ('quiet', false, 1),
       ('frozen', false, 2),
       ('swift', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 4 (synonym: brave) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "brave"?',
         '"Courageous" means showing bravery in the face of danger or difficulty.',
         'courageous',
         '"Courageous" is a synonym for "brave."',
         4
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('courageous', true, 0),
       ('timid', false, 1),
       ('cautious', false, 2),
       ('selfish', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 5 (synonym: angry) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "angry"?',
         '"Furious" indicates extreme anger and is a strong synonym for "angry."',
         'furious',
         '"Furious" is a synonym for "angry."',
         5
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cheerful', false, 0),
       ('furious', true, 1),
       ('calm', false, 2),
       ('curious', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 6 (synonym: sad) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "sad"?',
         '"Sorrowful" expresses deep sadness, closely matching the meaning of "sad."',
         'sorrowful',
         '"Sorrowful" is a synonym for "sad."',
         6
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('elated', false, 0),
       ('amused', false, 1),
       ('sorrowful', true, 2),
       ('eager', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 7 (synonym: tired) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "tired"?',
         '"Exhausted" describes a state of being extremely tired.',
         'exhausted',
         '"Exhausted" is a synonym for "tired."',
         7
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('alert', false, 0),
       ('restored', false, 1),
       ('eager', false, 2),
       ('exhausted', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 8 (synonym: rich) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "rich"?',
         '"Wealthy" describes someone with a great deal of money or assets.',
         'wealthy',
         '"Wealthy" is a synonym for "rich."',
         8
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('wealthy', true, 0),
       ('humble', false, 1),
       ('poor', false, 2),
       ('frugal', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 9 (synonym: difficult) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "difficult"?',
         '"Arduous" describes something requiring great effort, matching "difficult."',
         'arduous',
         '"Arduous" is a synonym for "difficult."',
         9
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('simple', false, 0),
       ('arduous', true, 1),
       ('trivial', false, 2),
       ('breezy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 10 (synonym: beautiful) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "beautiful"?',
         '"Gorgeous" is a strong synonym for "beautiful," emphasizing great attractiveness.',
         'gorgeous',
         '"Gorgeous" is a synonym for "beautiful."',
         10
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('plain', false, 0),
       ('coarse', false, 1),
       ('gorgeous', true, 2),
       ('drab', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 11 (synonym: quiet) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "quiet"?',
         '"Silent" describes the absence of noise, closely matching "quiet."',
         'silent',
         '"Silent" is a synonym for "quiet."',
         11
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('boisterous', false, 0),
       ('chatty', false, 1),
       ('frantic', false, 2),
       ('silent', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 12 (synonym: begin) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "begin"?',
         '"Commence" is a formal synonym meaning to start or begin something.',
         'commence',
         '"Commence" is a synonym for "begin."',
         12
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('commence', true, 0),
       ('cease', false, 1),
       ('linger', false, 2),
       ('conclude', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 13 (synonym: end) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "end"?',
         '"Conclude" means to bring something to an end, matching the meaning of "end."',
         'conclude',
         '"Conclude" is a synonym for "end."',
         13
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('initiate', false, 0),
       ('conclude', true, 1),
       ('extend', false, 2),
       ('continue', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 14 (synonym: friend) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "friend"?',
         '"Companion" denotes a person who shares time and experiences with another, much like "friend."',
         'companion',
         '"Companion" is a synonym for "friend."',
         14
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('rival', false, 0),
       ('stranger', false, 1),
       ('companion', true, 2),
       ('enemy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 15 (synonym: help) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "help"?',
         '"Assist" means to give support or aid, matching "help."',
         'assist',
         '"Assist" is a synonym for "help."',
         15
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('hinder', false, 0),
       ('ignore', false, 1),
       ('oppose', false, 2),
       ('assist', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 16 (synonym: build) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "build"?',
         '"Construct" means to create or build something, especially structures.',
         'construct',
         '"Construct" is a synonym for "build."',
         16
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('construct', true, 0),
       ('demolish', false, 1),
       ('destroy', false, 2),
       ('erode', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 17 (synonym: hide) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "hide"?',
         '"Conceal" means to keep something out of sight, matching "hide."',
         'conceal',
         '"Conceal" is a synonym for "hide."',
         17
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('reveal', false, 0),
       ('conceal', true, 1),
       ('expose', false, 2),
       ('show', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 18 (synonym: find) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "find"?',
         '"Discover" means to find or come across something, matching "find."',
         'discover',
         '"Discover" is a synonym for "find."',
         18
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lose', false, 0),
       ('misplace', false, 1),
       ('discover', true, 2),
       ('forget', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 19 (synonym: ask) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "ask"?',
         '"Inquire" means to ask for information, matching "ask."',
         'inquire',
         '"Inquire" is a synonym for "ask."',
         19
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('respond', false, 0),
       ('declare', false, 1),
       ('command', false, 2),
       ('inquire', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 20 (synonym: lazy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "lazy"?',
         '"Indolent" describes a tendency to avoid activity or effort, matching "lazy."',
         'indolent',
         '"Indolent" is a synonym for "lazy."',
         20
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('indolent', true, 0),
       ('diligent', false, 1),
       ('industrious', false, 2),
       ('eager', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 21 (synonym: strange) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "strange"?',
         '"Peculiar" means odd or unusual, matching "strange."',
         'peculiar',
         '"Peculiar" is a synonym for "strange."',
         21
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('typical', false, 0),
       ('peculiar', true, 1),
       ('routine', false, 2),
       ('ordinary', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 22 (synonym: choose) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "choose"?',
         '"Select" means to carefully choose something from a set of options.',
         'select',
         '"Select" is a synonym for "choose."',
         22
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('reject', false, 0),
       ('decline', false, 1),
       ('select', true, 2),
       ('discard', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 23 (synonym: shy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "shy"?',
         '"Bashful" describes someone reluctant to draw attention to themselves, matching "shy."',
         'bashful',
         '"Bashful" is a synonym for "shy."',
         23
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('bold', false, 0),
       ('outspoken', false, 1),
       ('brash', false, 2),
       ('bashful', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 24 (synonym: clever) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "clever"?',
         '"Shrewd" describes sharp practical intelligence, matching "clever."',
         'shrewd',
         '"Shrewd" is a synonym for "clever."',
         24
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('shrewd', true, 0),
       ('foolish', false, 1),
       ('naive', false, 2),
       ('slow', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 25 (synonym: ancient) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "ancient"?',
         '"Antiquated" describes something very old, matching "ancient."',
         'antiquated',
         '"Antiquated" is a synonym for "ancient."',
         25
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('modern', false, 0),
       ('antiquated', true, 1),
       ('current', false, 2),
       ('novel', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 26 (synonym: brief) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "brief"?',
         '"Concise" describes something short and clear, matching "brief."',
         'concise',
         '"Concise" is a synonym for "brief."',
         26
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lengthy', false, 0),
       ('rambling', false, 1),
       ('concise', true, 2),
       ('extended', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 27 (synonym: stop) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "stop"?',
         '"Halt" means to bring to a stop, matching "stop."',
         'halt',
         '"Halt" is a synonym for "stop."',
         27
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('proceed', false, 0),
       ('continue', false, 1),
       ('persist', false, 2),
       ('halt', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 28 (synonym: dirty) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "dirty"?',
         '"Filthy" describes something extremely unclean, matching "dirty."',
         'filthy',
         '"Filthy" is a synonym for "dirty."',
         28
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('filthy', true, 0),
       ('pristine', false, 1),
       ('spotless', false, 2),
       ('sterile', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 29 (synonym: scared) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "scared"?',
         '"Frightened" describes a state of fear, matching "scared."',
         'frightened',
         '"Frightened" is a synonym for "scared."',
         29
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('confident', false, 0),
       ('frightened', true, 1),
       ('relaxed', false, 2),
       ('amused', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 30 (synonym: gather) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "gather"?',
         '"Assemble" means to bring together, matching "gather."',
         'assemble',
         '"Assemble" is a synonym for "gather."',
         30
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('disperse', false, 0),
       ('scatter', false, 1),
       ('assemble', true, 2),
       ('separate', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 31 (synonym: enemy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "enemy"?',
         '"Adversary" denotes an opponent, matching "enemy."',
         'adversary',
         '"Adversary" is a synonym for "enemy."',
         31
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('ally', false, 0),
       ('comrade', false, 1),
       ('partner', false, 2),
       ('adversary', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 32 (synonym: ugly) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "ugly"?',
         '"Hideous" describes something extremely unattractive, matching "ugly."',
         'hideous',
         '"Hideous" is a synonym for "ugly."',
         32
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('hideous', true, 0),
       ('lovely', false, 1),
       ('charming', false, 2),
       ('elegant', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 33 (synonym: thin) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "thin"?',
         '"Slender" describes a narrow or slim form, matching "thin."',
         'slender',
         '"Slender" is a synonym for "thin."',
         33
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('bulky', false, 0),
       ('slender', true, 1),
       ('plump', false, 2),
       ('broad', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 34 (synonym: angry) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "annoyed"?',
         '"Irritated" describes a mild state of anger, matching "annoyed."',
         'irritated',
         '"Irritated" is a synonym for "annoyed."',
         34
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('pleased', false, 0),
       ('content', false, 1),
       ('irritated', true, 2),
       ('serene', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 35 (synonym: real) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "real"?',
         '"Genuine" describes something authentic, matching "real."',
         'genuine',
         '"Genuine" is a synonym for "real."',
         35
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fake', false, 0),
       ('imitation', false, 1),
       ('counterfeit', false, 2),
       ('genuine', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 36 (synonym: prove) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "prove"?',
         '"Demonstrate" means to show clearly through evidence, matching "prove."',
         'demonstrate',
         '"Demonstrate" is a synonym for "prove."',
         36
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('demonstrate', true, 0),
       ('refute', false, 1),
       ('deny', false, 2),
       ('disprove', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 37 (synonym: small) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "small"?',
         '"Diminutive" describes something extremely small, matching "small."',
         'diminutive',
         '"Diminutive" is a synonym for "small."',
         37
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('massive', false, 0),
       ('giant', false, 1),
       ('grand', false, 2),
       ('diminutive', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 38 (synonym: walk) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "stroll"?',
         '"Saunter" means to walk in a leisurely way, matching "stroll."',
         'saunter',
         '"Saunter" is a synonym for "stroll."',
         38
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('saunter', true, 0),
       ('dash', false, 1),
       ('sprint', false, 2),
       ('lunge', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 39 (synonym: laugh) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "chuckle"?',
         '"Giggle" describes a quiet, light laugh, matching "chuckle."',
         'giggle',
         '"Giggle" is a synonym for "chuckle."',
         39
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('weep', false, 0),
       ('giggle', true, 1),
       ('grumble', false, 2),
       ('shout', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 40 (synonym: tasty) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "tasty"?',
         '"Delicious" describes food with great flavor, matching "tasty."',
         'delicious',
         '"Delicious" is a synonym for "tasty."',
         40
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('bland', false, 0),
       ('rancid', false, 1),
       ('delicious', true, 2),
       ('stale', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 41 (synonym: smart) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "brilliant"?',
         '"Ingenious" describes outstanding cleverness, matching "brilliant."',
         'ingenious',
         '"Ingenious" is a synonym for "brilliant."',
         41
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dim', false, 0),
       ('mediocre', false, 1),
       ('plain', false, 2),
       ('ingenious', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 42 (synonym: rude) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "rude"?',
         '"Impolite" describes someone lacking good manners, matching "rude."',
         'impolite',
         '"Impolite" is a synonym for "rude."',
         42
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('impolite', true, 0),
       ('courteous', false, 1),
       ('gracious', false, 2),
       ('refined', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 43 (synonym: brave) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "valiant"?',
         '"Heroic" describes courageous behavior, matching "valiant."',
         'heroic',
         '"Heroic" is a synonym for "valiant."',
         43
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cowardly', false, 0),
       ('heroic', true, 1),
       ('weak', false, 2),
       ('craven', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 44 (synonym: increase) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "increase"?',
         '"Augment" means to make greater in size or amount, matching "increase."',
         'augment',
         '"Augment" is a synonym for "increase."',
         44
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('reduce', false, 0),
       ('shrink', false, 1),
       ('augment', true, 2),
       ('diminish', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 45 (synonym: decrease) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "decrease"?',
         '"Diminish" means to make smaller, matching "decrease."',
         'diminish',
         '"Diminish" is a synonym for "decrease."',
         45
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('expand', false, 0),
       ('inflate', false, 1),
       ('enlarge', false, 2),
       ('diminish', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 46 (synonym: angry) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "irate"?',
         '"Enraged" describes intense anger, matching "irate."',
         'enraged',
         '"Enraged" is a synonym for "irate."',
         46
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('enraged', true, 0),
       ('placid', false, 1),
       ('amused', false, 2),
       ('serene', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 47 (synonym: lucky) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "lucky"?',
         '"Fortunate" describes someone receiving good outcomes by chance, matching "lucky."',
         'fortunate',
         '"Fortunate" is a synonym for "lucky."',
         47
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('unfortunate', false, 0),
       ('fortunate', true, 1),
       ('cursed', false, 2),
       ('doomed', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 48 (synonym: brave) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "bold"?',
         '"Daring" describes confident willingness to take risks, matching "bold."',
         'daring',
         '"Daring" is a synonym for "bold."',
         48
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('hesitant', false, 0),
       ('reluctant', false, 1),
       ('daring', true, 2),
       ('timid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 49 (synonym: happy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is closest in meaning to "delighted"?',
         '"Thrilled" describes great pleasure, matching "delighted."',
         'thrilled',
         '"Thrilled" is a synonym for "delighted."',
         49
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('miserable', false, 0),
       ('saddened', false, 1),
       ('disappointed', false, 2),
       ('thrilled', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 50 (antonym: happy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "happy"?',
         '"Sad" is the direct antonym of "happy," denoting an unpleasant emotional state.',
         'sad',
         '"Sad" is the antonym of "happy."',
         50
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sad', true, 0),
       ('joyful', false, 1),
       ('content', false, 2),
       ('elated', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 51 (antonym: big) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "big"?',
         '"Small" is the direct antonym of "big."',
         'small',
         '"Small" is the antonym of "big."',
         51
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('huge', false, 0),
       ('small', true, 1),
       ('enormous', false, 2),
       ('vast', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 52 (antonym: strong) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "strong"?',
         '"Weak" is the direct antonym of "strong."',
         'weak',
         '"Weak" is the antonym of "strong."',
         52
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('robust', false, 0),
       ('sturdy', false, 1),
       ('weak', true, 2),
       ('powerful', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 53 (antonym: brave) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "brave"?',
         '"Cowardly" is the direct antonym of "brave."',
         'cowardly',
         '"Cowardly" is the antonym of "brave."',
         53
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('valiant', false, 0),
       ('heroic', false, 1),
       ('daring', false, 2),
       ('cowardly', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 54 (antonym: light) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "light" (as in weight)?',
         '"Heavy" is the antonym of "light" when describing weight.',
         'heavy',
         '"Heavy" is the antonym of "light."',
         54
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('heavy', true, 0),
       ('weightless', false, 1),
       ('feathery', false, 2),
       ('airy', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 55 (antonym: hot) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "hot"?',
         '"Cold" is the direct antonym of "hot."',
         'cold',
         '"Cold" is the antonym of "hot."',
         55
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('warm', false, 0),
       ('cold', true, 1),
       ('tepid', false, 2),
       ('scorching', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 56 (antonym: rich) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "rich"?',
         '"Poor" is the direct antonym of "rich."',
         'poor',
         '"Poor" is the antonym of "rich."',
         56
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('affluent', false, 0),
       ('wealthy', false, 1),
       ('poor', true, 2),
       ('prosperous', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 57 (antonym: open) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "open"?',
         '"Closed" is the direct antonym of "open."',
         'closed',
         '"Closed" is the antonym of "open."',
         57
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('ajar', false, 0),
       ('public', false, 1),
       ('free', false, 2),
       ('closed', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 58 (antonym: easy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "easy"?',
         '"Difficult" is the direct antonym of "easy."',
         'difficult',
         '"Difficult" is the antonym of "easy."',
         58
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('difficult', true, 0),
       ('simple', false, 1),
       ('effortless', false, 2),
       ('basic', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 59 (antonym: full) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "full"?',
         '"Empty" is the direct antonym of "full."',
         'empty',
         '"Empty" is the antonym of "full."',
         59
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('packed', false, 0),
       ('empty', true, 1),
       ('crowded', false, 2),
       ('stuffed', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 60 (antonym: increase) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "increase"?',
         '"Decrease" is the direct antonym of "increase."',
         'decrease',
         '"Decrease" is the antonym of "increase."',
         60
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('expand', false, 0),
       ('grow', false, 1),
       ('decrease', true, 2),
       ('augment', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 61 (antonym: friend) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "friend"?',
         '"Enemy" is the antonym of "friend."',
         'enemy',
         '"Enemy" is the antonym of "friend."',
         61
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('ally', false, 0),
       ('comrade', false, 1),
       ('companion', false, 2),
       ('enemy', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 62 (antonym: love) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "love"?',
         '"Hate" is the direct antonym of "love."',
         'hate',
         '"Hate" is the antonym of "love."',
         62
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('hate', true, 0),
       ('adore', false, 1),
       ('cherish', false, 2),
       ('admire', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 63 (antonym: early) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "early"?',
         '"Late" is the direct antonym of "early."',
         'late',
         '"Late" is the antonym of "early."',
         63
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('prompt', false, 0),
       ('late', true, 1),
       ('punctual', false, 2),
       ('timely', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 64 (antonym: dry) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "dry"?',
         '"Wet" is the direct antonym of "dry."',
         'wet',
         '"Wet" is the antonym of "dry."',
         64
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('arid', false, 0),
       ('parched', false, 1),
       ('wet', true, 2),
       ('barren', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 65 (antonym: clean) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "clean"?',
         '"Dirty" is the direct antonym of "clean."',
         'dirty',
         '"Dirty" is the antonym of "clean."',
         65
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('spotless', false, 0),
       ('pristine', false, 1),
       ('tidy', false, 2),
       ('dirty', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 66 (antonym: kind) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "kind"?',
         '"Cruel" is the direct antonym of "kind."',
         'cruel',
         '"Cruel" is the antonym of "kind."',
         66
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cruel', true, 0),
       ('gentle', false, 1),
       ('caring', false, 2),
       ('warm', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 67 (antonym: rough) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "rough"?',
         '"Smooth" is the direct antonym of "rough."',
         'smooth',
         '"Smooth" is the antonym of "rough."',
         67
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('coarse', false, 0),
       ('smooth', true, 1),
       ('jagged', false, 2),
       ('uneven', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 68 (antonym: noisy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "noisy"?',
         '"Quiet" is the direct antonym of "noisy."',
         'quiet',
         '"Quiet" is the antonym of "noisy."',
         68
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('boisterous', false, 0),
       ('rowdy', false, 1),
       ('quiet', true, 2),
       ('loud', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 69 (antonym: cheap) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "cheap"?',
         '"Expensive" is the direct antonym of "cheap."',
         'expensive',
         '"Expensive" is the antonym of "cheap."',
         69
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('affordable', false, 0),
       ('bargain', false, 1),
       ('inexpensive', false, 2),
       ('expensive', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 70 (antonym: wide) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "wide"?',
         '"Narrow" is the direct antonym of "wide."',
         'narrow',
         '"Narrow" is the antonym of "wide."',
         70
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('narrow', true, 0),
       ('broad', false, 1),
       ('expansive', false, 2),
       ('spacious', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 71 (antonym: ancient) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "ancient"?',
         '"Modern" is the antonym of "ancient."',
         'modern',
         '"Modern" is the antonym of "ancient."',
         71
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('archaic', false, 0),
       ('modern', true, 1),
       ('antique', false, 2),
       ('aged', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 72 (antonym: sharp) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "sharp"?',
         '"Dull" is the antonym of "sharp" when describing edges.',
         'dull',
         '"Dull" is the antonym of "sharp."',
         72
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('keen', false, 0),
       ('pointed', false, 1),
       ('dull', true, 2),
       ('honed', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 73 (antonym: deep) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "deep"?',
         '"Shallow" is the antonym of "deep."',
         'shallow',
         '"Shallow" is the antonym of "deep."',
         73
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cavernous', false, 0),
       ('vast', false, 1),
       ('profound', false, 2),
       ('shallow', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 74 (antonym: float) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "float"?',
         '"Sink" is the antonym of "float."',
         'sink',
         '"Sink" is the antonym of "float."',
         74
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sink', true, 0),
       ('drift', false, 1),
       ('hover', false, 2),
       ('glide', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 75 (antonym: arrive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "arrive"?',
         '"Depart" is the antonym of "arrive."',
         'depart',
         '"Depart" is the antonym of "arrive."',
         75
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('reach', false, 0),
       ('depart', true, 1),
       ('approach', false, 2),
       ('enter', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 76 (antonym: accept) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "accept"?',
         '"Reject" is the antonym of "accept."',
         'reject',
         '"Reject" is the antonym of "accept."',
         76
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('embrace', false, 0),
       ('welcome', false, 1),
       ('reject', true, 2),
       ('approve', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 77 (antonym: succeed) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "succeed"?',
         '"Fail" is the antonym of "succeed."',
         'fail',
         '"Fail" is the antonym of "succeed."',
         77
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('achieve', false, 0),
       ('triumph', false, 1),
       ('flourish', false, 2),
       ('fail', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 78 (antonym: ascend) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "ascend"?',
         '"Descend" is the antonym of "ascend."',
         'descend',
         '"Descend" is the antonym of "ascend."',
         78
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('descend', true, 0),
       ('rise', false, 1),
       ('climb', false, 2),
       ('soar', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 79 (antonym: pretty) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "pretty"?',
         '"Ugly" is the antonym of "pretty."',
         'ugly',
         '"Ugly" is the antonym of "pretty."',
         79
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lovely', false, 0),
       ('ugly', true, 1),
       ('attractive', false, 2),
       ('charming', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 80 (antonym: tall) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "tall"?',
         '"Short" is the antonym of "tall."',
         'short',
         '"Short" is the antonym of "tall."',
         80
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lofty', false, 0),
       ('towering', false, 1),
       ('short', true, 2),
       ('elevated', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 81 (antonym: heavy) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "heavy"?',
         '"Light" is the antonym of "heavy."',
         'light',
         '"Light" is the antonym of "heavy."',
         81
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('dense', false, 0),
       ('weighty', false, 1),
       ('massive', false, 2),
       ('light', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 82 (antonym: foolish) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "foolish"?',
         '"Wise" is the antonym of "foolish."',
         'wise',
         '"Wise" is the antonym of "foolish."',
         82
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('wise', true, 0),
       ('silly', false, 1),
       ('absurd', false, 2),
       ('reckless', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 83 (antonym: bitter) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "bitter"?',
         '"Sweet" is the antonym of "bitter" when describing taste.',
         'sweet',
         '"Sweet" is the antonym of "bitter."',
         83
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('sour', false, 0),
       ('sweet', true, 1),
       ('tart', false, 2),
       ('acrid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 84 (antonym: rare) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "rare"?',
         '"Common" is the antonym of "rare."',
         'common',
         '"Common" is the antonym of "rare."',
         84
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('scarce', false, 0),
       ('unique', false, 1),
       ('common', true, 2),
       ('uncommon', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 85 (antonym: include) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "include"?',
         '"Exclude" is the antonym of "include."',
         'exclude',
         '"Exclude" is the antonym of "include."',
         85
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('contain', false, 0),
       ('embrace', false, 1),
       ('encompass', false, 2),
       ('exclude', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 86 (antonym: praise) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "praise"?',
         '"Criticize" is the antonym of "praise."',
         'criticize',
         '"Criticize" is the antonym of "praise."',
         86
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('criticize', true, 0),
       ('applaud', false, 1),
       ('compliment', false, 2),
       ('commend', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 87 (antonym: bright) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "bright"?',
         '"Dim" is the antonym of "bright."',
         'dim',
         '"Dim" is the antonym of "bright."',
         87
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('brilliant', false, 0),
       ('dim', true, 1),
       ('radiant', false, 2),
       ('vivid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 88 (antonym: artificial) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "artificial"?',
         '"Natural" is the antonym of "artificial."',
         'natural',
         '"Natural" is the antonym of "artificial."',
         88
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('synthetic', false, 0),
       ('fake', false, 1),
       ('natural', true, 2),
       ('imitation', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 89 (antonym: permit) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "permit"?',
         '"Forbid" is the antonym of "permit."',
         'forbid',
         '"Forbid" is the antonym of "permit."',
         89
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('allow', false, 0),
       ('approve', false, 1),
       ('authorize', false, 2),
       ('forbid', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 90 (antonym: smooth) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "smooth"?',
         '"Rough" is the antonym of "smooth."',
         'rough',
         '"Rough" is the antonym of "smooth."',
         90
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('rough', true, 0),
       ('polished', false, 1),
       ('sleek', false, 2),
       ('even', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 91 (antonym: shrink) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "shrink"?',
         '"Expand" is the antonym of "shrink."',
         'expand',
         '"Expand" is the antonym of "shrink."',
         91
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('contract', false, 0),
       ('expand', true, 1),
       ('compress', false, 2),
       ('reduce', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 92 (antonym: praise) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "tame"?',
         '"Wild" is the antonym of "tame."',
         'wild',
         '"Wild" is the antonym of "tame."',
         92
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('docile', false, 0),
       ('gentle', false, 1),
       ('wild', true, 2),
       ('mild', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 93 (antonym: humble) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "humble"?',
         '"Arrogant" is the antonym of "humble."',
         'arrogant',
         '"Arrogant" is the antonym of "humble."',
         93
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('modest', false, 0),
       ('meek', false, 1),
       ('unassuming', false, 2),
       ('arrogant', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 94 (antonym: gentle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "gentle"?',
         '"Harsh" is the antonym of "gentle."',
         'harsh',
         '"Harsh" is the antonym of "gentle."',
         94
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('harsh', true, 0),
       ('soft', false, 1),
       ('tender', false, 2),
       ('mild', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 95 (antonym: stale) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "stale"?',
         '"Fresh" is the antonym of "stale."',
         'fresh',
         '"Fresh" is the antonym of "stale."',
         95
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('moldy', false, 0),
       ('fresh', true, 1),
       ('rancid', false, 2),
       ('old', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 96 (antonym: vague) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "vague"?',
         '"Clear" is the antonym of "vague."',
         'clear',
         '"Clear" is the antonym of "vague."',
         96
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('hazy', false, 0),
       ('unclear', false, 1),
       ('clear', true, 2),
       ('ambiguous', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 97 (antonym: temporary) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "temporary"?',
         '"Permanent" is the antonym of "temporary."',
         'permanent',
         '"Permanent" is the antonym of "temporary."',
         97
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fleeting', false, 0),
       ('transient', false, 1),
       ('brief', false, 2),
       ('permanent', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 98 (antonym: agree) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "agree"?',
         '"Disagree" is the antonym of "agree."',
         'disagree',
         '"Disagree" is the antonym of "agree."',
         98
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('disagree', true, 0),
       ('concur', false, 1),
       ('consent', false, 2),
       ('approve', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 99 (antonym: generous) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Which word is the opposite of "generous"?',
         '"Stingy" is the antonym of "generous."',
         'stingy',
         '"Stingy" is the antonym of "generous."',
         99
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('giving', false, 0),
       ('stingy', true, 1),
       ('charitable', false, 2),
       ('liberal', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 100 (affect/effect) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The new policy will ___ everyone in the company."',
         '"Affect" is a verb meaning to influence; "effect" is most often a noun meaning result. The sentence needs a verb.',
         'affect (verb)',
         'Use "affect" as a verb meaning to influence.',
         100
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('affect', true, 0),
       ('effect', false, 1),
       ('affects to', false, 2),
       ('effected', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 101 (their/there/they''re) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ going to the park later."',
         '"They''re" is the contraction of "they are," which fits the sentence.',
         'they''re = they are',
         'Use "they''re" as the contraction of "they are."',
         101
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Their', false, 0),
       ('There', false, 1),
       ('They''re', true, 2),
       ('Theyre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 102 (your/you''re) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ going to love this movie."',
         '"You''re" is the contraction of "you are," which fits this sentence.',
         'you''re = you are',
         'Use "you''re" as the contraction of "you are."',
         102
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('You''re', true, 0),
       ('Your', false, 1),
       ('Youre', false, 2),
       ('Yore', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 103 (its/it''s) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The dog wagged ___ tail."',
         '"Its" is the possessive form; "it''s" is the contraction of "it is."',
         'its = possessive',
         'Use "its" without an apostrophe to show possession.',
         103
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('it''s', false, 0),
       ('its', true, 1),
       ('its''', false, 2),
       ('it is', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 104 (lie/lay) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "I think I''ll ___ down for a nap."',
         '"Lie" means to recline (no object); "lay" requires a direct object.',
         'lie down (no object)',
         'Use "lie" when reclining without a direct object.',
         104
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lay', false, 0),
       ('laid', false, 1),
       ('laying', false, 2),
       ('lie', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 105 (then/than) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "She is taller ___ her brother."',
         '"Than" is used for comparisons; "then" relates to time.',
         'than = comparison',
         'Use "than" when making a comparison.',
         105
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('then', false, 0),
       ('than', true, 1),
       ('thin', false, 2),
       ('thaen', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 106 (accept/except) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Everyone came ___ John."',
         '"Except" means excluding; "accept" means to receive.',
         'except = excluding',
         'Use "except" to mean "excluding."',
         106
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('accept', false, 0),
       ('excepted', false, 1),
       ('except', true, 2),
       ('accepted', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 107 (loose/lose) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Don''t ___ your keys."',
         '"Lose" is a verb meaning to misplace; "loose" is an adjective meaning not tight.',
         'lose = misplace',
         'Use "lose" as the verb meaning to misplace.',
         107
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('loose', false, 0),
       ('looze', false, 1),
       ('loosen', false, 2),
       ('lose', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 108 (fewer/less) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "She has ___ books than I do."',
         'Use "fewer" for countable items (books); "less" is for uncountable amounts.',
         'fewer = countable',
         'Use "fewer" for countable items.',
         108
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('fewer', true, 0),
       ('less', false, 1),
       ('lesser', false, 2),
       ('few', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 109 (good/well) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "She sings very ___."',
         '"Well" is an adverb that modifies the verb "sings." "Good" is an adjective.',
         'well = adverb',
         'Use "well" as the adverb modifying a verb.',
         109
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('good', false, 0),
       ('well', true, 1),
       ('goodly', false, 2),
       ('best', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 110 (who/whom) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "To ___ should I address this letter?"',
         '"Whom" is used as the object of a preposition (here, "to").',
         'whom = object',
         'Use "whom" as the object of a preposition.',
         110
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('who', false, 0),
       ('whose', false, 1),
       ('whom', true, 2),
       ('who''s', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 111 (whose/who''s) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ jacket is this?"',
         '"Whose" shows possession; "who''s" is a contraction of "who is."',
         'whose = possessive',
         'Use "whose" to show possession.',
         111
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Who''s', false, 0),
       ('Whose', true, 1),
       ('Whos', false, 2),
       ('Whoms', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 112 (principal/principle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The school ___ gave a speech."',
         '"Principal" refers to the head of a school; "principle" is a rule or belief.',
         'principal = head of school',
         'Use "principal" for the person in charge of a school.',
         112
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('principle', false, 0),
       ('principel', false, 1),
       ('principals', false, 2),
       ('principal', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 113 (stationary/stationery) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "She bought new ___ for her letters."',
         '"Stationery" refers to writing materials; "stationary" means not moving.',
         'stationery = paper goods',
         'Use "stationery" for paper and writing supplies.',
         113
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('stationary', false, 0),
       ('stationery', true, 1),
       ('stationarry', false, 2),
       ('stationaery', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 114 (compliment/complement) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The wine ___ the meal perfectly."',
         '"Complement" means to complete or pair well with; "compliment" is praise.',
         'complement = pair well',
         'Use "complement" when something completes or pairs well.',
         114
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('complimented', false, 0),
       ('complement', false, 1),
       ('complemented', true, 2),
       ('complimentary', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 115 (further/farther) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "How much ___ is the next gas station?"',
         '"Farther" refers to physical distance; "further" refers to abstract or figurative degree.',
         'farther = distance',
         'Use "farther" for physical distance.',
         115
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('farther', true, 0),
       ('further', false, 1),
       ('furthest', false, 2),
       ('farthest', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 116 (already/all ready) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "We have ___ finished dinner."',
         '"Already" means previously; "all ready" means everyone is prepared.',
         'already = previously',
         'Use "already" to mean previously or by this time.',
         116
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('all ready', false, 0),
       ('already', true, 1),
       ('allready', false, 2),
       ('all-ready', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 117 (between/among) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The secret stayed ___ the three friends."',
         '"Among" is used for three or more; "between" is generally for two.',
         'among = 3+ items',
         'Use "among" for three or more people or things.',
         117
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('between', false, 0),
       ('amongst', false, 1),
       ('among', true, 2),
       ('amid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 118 (imply/infer) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The speaker ___ that more changes were coming."',
         '"Imply" means to suggest (speaker''s side); "infer" means to deduce (listener''s side).',
         'imply = suggest',
         'The speaker implies; the listener infers.',
         118
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('inferred', false, 0),
       ('imply', false, 1),
       ('inferring', false, 2),
       ('implied', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 119 (lie/lay past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Yesterday, she ___ on the couch all afternoon."',
         '"Lay" is the past tense of "lie" (to recline). "Laid" is the past tense of "lay" (to put).',
         'lay = past of lie',
         'Use "lay" as the past tense of "lie."',
         119
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('laid', false, 0),
       ('lay', true, 1),
       ('lied', false, 2),
       ('lain', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 120 (bring/take) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Please ___ this letter to the post office when you leave."',
         '"Take" implies movement away from the speaker; "bring" implies movement toward.',
         'take = away from',
         'Use "take" for movement away from the speaker.',
         120
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('take', true, 0),
       ('bring', false, 1),
       ('took', false, 2),
       ('brought', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 121 (good/well health) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "After her recovery, she felt ___ again."',
         '"Well" can describe health as an adjective. "Good" describes general state, but "well" is preferred for health.',
         'well = healthy',
         'Use "well" to describe being in good health.',
         121
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('goodly', false, 0),
       ('well', true, 1),
       ('better best', false, 2),
       ('greatly', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 122 (its/it''s contraction) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ raining outside."',
         '"It''s" is the contraction of "it is," which fits the sentence.',
         'it''s = it is',
         'Use "it''s" as the contraction of "it is."',
         122
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Its', false, 0),
       ('It''s', true, 1),
       ('Its''', false, 2),
       ('Itis', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 123 (then time) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "First we ate, ___ we went to the movie."',
         '"Then" relates to time and sequence, while "than" is for comparisons.',
         'then = next in time',
         'Use "then" to indicate sequence in time.',
         123
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('than', false, 0),
       ('thain', false, 1),
       ('then', true, 2),
       ('thane', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 124 (allusion/illusion) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The novel makes an ___ to Greek mythology."',
         '"Allusion" is an indirect reference; "illusion" is a false impression.',
         'allusion = reference',
         'Use "allusion" for an indirect reference.',
         124
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('illusion', false, 0),
       ('allusion', true, 1),
       ('elusion', false, 2),
       ('elution', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 125 (cite/site/sight) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "We visited the historic ___ of the battle."',
         '"Site" means a location; "cite" means to quote; "sight" means vision.',
         'site = location',
         'Use "site" to refer to a location.',
         125
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('cite', false, 0),
       ('sight', false, 1),
       ('site', true, 2),
       ('cited', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 126 (lose/loose adjective) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "This shirt is too ___."',
         '"Loose" is the adjective meaning not tight; "lose" is the verb.',
         'loose = not tight',
         'Use "loose" as the adjective meaning not tight.',
         126
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('loose', true, 0),
       ('lose', false, 1),
       ('looze', false, 2),
       ('losen', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 127 (advice/advise) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Can you give me some ___?"',
         '"Advice" is the noun; "advise" is the verb.',
         'advice = noun',
         'Use "advice" as the noun.',
         127
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('advise', false, 0),
       ('advices', false, 1),
       ('advise me', false, 2),
       ('advice', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 128 (effect noun) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The medicine had a positive ___ on her."',
         '"Effect" is most commonly a noun meaning the result of an action.',
         'effect = result',
         'Use "effect" as the noun meaning result.',
         128
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('affect', false, 0),
       ('effect', true, 1),
       ('affecting', false, 2),
       ('affected', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 129 (peek/peak/pique) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The story ___ my curiosity."',
         '"Pique" means to arouse interest; "peek" means a quick look; "peak" is a high point.',
         'pique = arouse interest',
         'Use "pique" to arouse interest or curiosity.',
         129
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('peaked', false, 0),
       ('peeked', false, 1),
       ('piqued', true, 2),
       ('peaked at', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 130 (their possessive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The students brought ___ books to class."',
         '"Their" is the possessive form, showing ownership.',
         'their = possessive',
         'Use "their" to show possession by a group.',
         130
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('their', true, 0),
       ('there', false, 1),
       ('they''re', false, 2),
       ('thier', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 131 (there location) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Put the box over ___."',
         '"There" refers to a location.',
         'there = location',
         'Use "there" to refer to a location.',
         131
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('their', false, 0),
       ('there', true, 1),
       ('they''re', false, 2),
       ('thare', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 132 (your possessive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Is this ___ jacket?"',
         '"Your" is the possessive form; "you''re" is the contraction of "you are."',
         'your = possessive',
         'Use "your" to show possession.',
         132
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('you''re', false, 0),
       ('youre', false, 1),
       ('your', true, 2),
       ('yore', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 133 (whose possessive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ going to the store with me?"',
         '"Who''s" is the contraction of "who is."',
         'who''s = who is',
         'Use "who''s" as the contraction of "who is."',
         133
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Whose', false, 0),
       ('Who''s', true, 1),
       ('Whos', false, 2),
       ('Whose''s', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 134 (lend/borrow) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Can I ___ your pen for a minute?"',
         '"Borrow" means to take temporarily; "lend" means to give temporarily.',
         'borrow = take',
         'Use "borrow" when asking to take something temporarily.',
         134
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lend', false, 0),
       ('lent', false, 1),
       ('borrow', true, 2),
       ('borrowed', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 135 (lend/borrow giver) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Can you ___ me your pen?"',
         '"Lend" means to give temporarily; the speaker is asking the listener to give.',
         'lend = give',
         'Use "lend" when asking someone to give temporarily.',
         135
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lend', true, 0),
       ('borrow', false, 1),
       ('borrowed', false, 2),
       ('lent to', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 136 (lay object) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Please ___ the book on the table."',
         '"Lay" is transitive and takes a direct object (the book).',
         'lay = put (with object)',
         'Use "lay" when an object is being placed somewhere.',
         136
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lie', false, 0),
       ('lay', true, 1),
       ('lying', false, 2),
       ('laid', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 137 (council/counsel) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The city ___ met on Tuesday."',
         '"Council" is a group; "counsel" is advice or to advise.',
         'council = group',
         'Use "council" for a deliberative group.',
         137
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('counsel', false, 0),
       ('counseled', false, 1),
       ('council', true, 2),
       ('councels', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 138 (capital/capitol) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Washington, D.C. is the ___ of the United States."',
         '"Capital" refers to a city; "capitol" refers to a building (especially the U.S. Capitol).',
         'capital = city',
         'Use "capital" for a city that is the seat of government.',
         138
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('capitol', false, 0),
       ('capital', true, 1),
       ('captial', false, 2),
       ('capitals', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 139 (number/amount) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "A large ___ of people attended the concert."',
         '"Number" is for countable items (people); "amount" is for uncountable.',
         'number = countable',
         'Use "number" for countable nouns.',
         139
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('amount', false, 0),
       ('quantity of', false, 1),
       ('number', true, 2),
       ('measure', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 140 (whether/weather) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "I don''t know ___ to go or stay."',
         '"Whether" introduces alternatives; "weather" refers to atmospheric conditions.',
         'whether = alternative',
         'Use "whether" to introduce alternatives.',
         140
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('weather', false, 0),
       ('whether', true, 1),
       ('whither', false, 2),
       ('wether', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 141 (passed/past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "She ___ the test with flying colors."',
         '"Passed" is the past tense of "pass"; "past" is an adjective or noun referring to time.',
         'passed = verb',
         'Use "passed" as the past tense of the verb "pass."',
         141
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('passed', true, 0),
       ('past', false, 1),
       ('passt', false, 2),
       ('paste', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 142 (breath/breathe) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Take a deep ___."',
         '"Breath" is the noun; "breathe" is the verb.',
         'breath = noun',
         'Use "breath" as the noun.',
         142
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('breathe', false, 0),
       ('breath', true, 1),
       ('breathing', false, 2),
       ('breathes', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 143 (desert/dessert) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "I''d like chocolate cake for ___."',
         '"Dessert" is a sweet course after a meal; "desert" is a dry region.',
         'dessert = sweet',
         'Use "dessert" for the sweet course after a meal.',
         143
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('desert', false, 0),
       ('deserts', false, 1),
       ('dessert', true, 2),
       ('desserts', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 144 (lose verb) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "If we ___ this game, we''re out of the tournament."',
         '"Lose" is the verb meaning to fail to win or to misplace.',
         'lose = verb',
         'Use "lose" as the verb.',
         144
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lose', true, 0),
       ('loose', false, 1),
       ('losen', false, 2),
       ('loosen', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 145 (formerly/formally) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "She was ___ a teacher before becoming a writer."',
         '"Formerly" means previously; "formally" means in a formal manner.',
         'formerly = previously',
         'Use "formerly" to mean previously.',
         145
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('formally', false, 0),
       ('formerly', true, 1),
       ('formly', false, 2),
       ('formaly', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 146 (envelop/envelope) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Please put the letter in the ___."',
         '"Envelope" is a noun (the paper container); "envelop" is a verb meaning to surround.',
         'envelope = noun',
         'Use "envelope" as the noun for the paper container.',
         146
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('envelop', false, 0),
       ('enveloping', false, 1),
       ('envelope', true, 2),
       ('envelops', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 147 (everyday/every day) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "I exercise ___ to stay healthy."',
         '"Every day" (two words) is an adverbial phrase; "everyday" (one word) is an adjective.',
         'every day = each day',
         'Use "every day" as two words to mean "each day."',
         147
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('everyday', false, 0),
       ('every day', true, 1),
       ('everyones day', false, 2),
       ('everyones', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 148 (assure/ensure/insure) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Please ___ that the door is locked before leaving."',
         '"Ensure" means to make certain; "assure" is to reassure someone; "insure" relates to insurance.',
         'ensure = make certain',
         'Use "ensure" to mean to make certain.',
         148
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('assure', false, 0),
       ('insure', false, 1),
       ('ensure', true, 2),
       ('endure', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 149 (its possessive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The cat licked ___ paws."',
         '"Its" (without apostrophe) is the possessive form; "it''s" is the contraction of "it is."',
         'its = possessive',
         'Use "its" without an apostrophe for possession.',
         149
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('it''s', false, 0),
       ('its''', false, 1),
       ('it is', false, 2),
       ('its', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 150 (subject-verb: singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The dog ___ in the yard."',
         'The singular subject "dog" requires the singular verb "barks."',
         'singular subject = -s verb',
         'A singular subject takes a singular verb.',
         150
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('barks', true, 0),
       ('bark', false, 1),
       ('barking', false, 2),
       ('have barked', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 151 (subject-verb: plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The students ___ studying for the exam."',
         'The plural subject "students" takes the plural form "are."',
         'plural subject + are',
         'A plural subject takes a plural verb.',
         151
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('are', true, 1),
       ('was', false, 2),
       ('be', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 152 (compound subject) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Tom and Jerry ___ best friends."',
         'A compound subject joined by "and" is plural and takes a plural verb.',
         'and = plural verb',
         'Subjects joined by "and" take a plural verb.',
         152
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('are', true, 1),
       ('was', false, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 153 (either/or) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Either the teacher or the students ___ wrong."',
         'With "either/or," the verb agrees with the subject closest to it (here, the plural "students").',
         'either/or = nearest subject',
         'With either/or, the verb agrees with the nearest subject.',
         153
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('are', true, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 154 (each singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Each of the boys ___ a different opinion."',
         '"Each" is singular and takes a singular verb, even when followed by a plural noun.',
         'each = singular',
         '"Each" takes a singular verb.',
         154
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('have', false, 0),
       ('has', true, 1),
       ('are having', false, 2),
       ('having', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 155 (everyone singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Everyone ___ welcome to the party."',
         '"Everyone" is an indefinite pronoun and is singular.',
         'everyone = singular',
         '"Everyone" takes a singular verb.',
         155
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('were', false, 1),
       ('is', true, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 156 (collective noun) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The team ___ winning the championship."',
         'In American English, a collective noun like "team" typically takes a singular verb.',
         'team = singular (US)',
         'In US usage, collective nouns take a singular verb.',
         156
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 157 (none singular/plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "None of the cake ___ left."',
         '"None" with an uncountable noun takes a singular verb.',
         'none + uncountable = singular',
         '"None" with an uncountable noun takes a singular verb.',
         157
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 158 (there is/are) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "There ___ many reasons to celebrate."',
         'The plural subject "reasons" requires "are."',
         'there + plural = are',
         'Use "are" with a plural subject in "there ___" constructions.',
         158
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('are', true, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 159 (neither singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Neither of the answers ___ correct."',
         '"Neither" is singular when used as a subject.',
         'neither = singular',
         '"Neither" takes a singular verb.',
         159
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('were', false, 1),
       ('have been', false, 2),
       ('is', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 160 (news singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The news ___ surprising."',
         '"News" looks plural but is grammatically singular.',
         'news = singular',
         '"News" takes a singular verb despite ending in -s.',
         160
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 161 (mathematics singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Mathematics ___ my favorite subject."',
         'Academic subjects ending in -s like "mathematics" are treated as singular.',
         'mathematics = singular',
         'Subjects like "mathematics" take a singular verb.',
         161
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 162 (pants plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "My pants ___ in the dryer."',
         '"Pants" is treated as plural and takes a plural verb.',
         'pants = plural',
         '"Pants" always takes a plural verb.',
         162
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('are', true, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 163 (one of the singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "One of the books ___ missing."',
         'The subject is "one" (singular), not "books," so the verb is singular.',
         'one of the = singular',
         '"One of the ___" takes a singular verb.',
         163
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 164 (intervening phrase) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The box of donuts ___ on the table."',
         'The subject is "box" (singular); "of donuts" is a prepositional phrase that doesn''t change the verb.',
         'intervening phrase ignored',
         'A prepositional phrase between subject and verb doesn''t change agreement.',
         164
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('were', false, 1),
       ('is', true, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 165 (politics singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Politics ___ a complicated subject."',
         'When referring to the field of study, "politics" takes a singular verb.',
         'politics (field) = singular',
         '"Politics" as a field of study takes a singular verb.',
         165
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 166 (somebody singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Somebody ___ at the door."',
         '"Somebody" is an indefinite pronoun and is singular.',
         'somebody = singular',
         'Indefinite pronouns like "somebody" are singular.',
         166
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 167 (either of singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Either of the options ___ acceptable."',
         '"Either" is singular when used as the subject.',
         'either = singular',
         '"Either" as subject takes a singular verb.',
         167
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('were', false, 1),
       ('is', true, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 168 (family collective) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "My family ___ very important to me."',
         'Treated as a single unit, "family" takes a singular verb in American English.',
         'family (unit) = singular',
         '"Family" as a unit takes a singular verb.',
         168
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 169 (number of plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "A number of students ___ absent today."',
         '"A number of" takes a plural verb because it means "many."',
         'a number of = plural',
         '"A number of" takes a plural verb.',
         169
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('has been', false, 2),
       ('are', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 170 (the number singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The number of complaints ___ growing."',
         '"The number of" is singular, focusing on the count itself.',
         'the number of = singular',
         '"The number of" takes a singular verb.',
         170
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 171 (nobody singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Nobody ___ to admit the mistake."',
         '"Nobody" is singular and takes a singular verb.',
         'nobody = singular',
         '"Nobody" takes a singular verb.',
         171
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('want', false, 0),
       ('wants', true, 1),
       ('wanting', false, 2),
       ('have wanted', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 172 (here singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Here ___ the book you wanted."',
         'In "here ___" constructions, the verb agrees with the singular subject "book."',
         'here + singular = is',
         '"Here ___" uses a verb that agrees with the true subject.',
         172
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('were', false, 1),
       ('is', true, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 173 (committee plural action) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The committee ___ unable to reach an agreement."',
         'When emphasizing the unit, "committee" takes a singular verb.',
         'committee (unit) = singular',
         '"Committee" as a unit takes a singular verb.',
         173
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('was', true, 0),
       ('were', false, 1),
       ('have been', false, 2),
       ('are', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 174 (anyone singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Anyone who applies ___ welcome."',
         '"Anyone" is singular and takes a singular verb.',
         'anyone = singular',
         '"Anyone" takes a singular verb.',
         174
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 175 (children plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The children ___ playing in the park."',
         '"Children" is the plural of "child" and takes a plural verb.',
         'children = plural',
         '"Children" takes a plural verb.',
         175
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('has been', false, 2),
       ('are', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 176 (some uncountable) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Some of the water ___ leaking out."',
         '"Some" with an uncountable noun takes a singular verb.',
         'some + uncountable = singular',
         '"Some" with an uncountable noun takes a singular verb.',
         176
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 177 (some countable plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Some of the apples ___ rotten."',
         '"Some" with a countable plural noun takes a plural verb.',
         'some + plural = plural',
         '"Some" with a plural noun takes a plural verb.',
         177
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('are', true, 1),
       ('was', false, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 178 (everybody singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Everybody ___ enjoying the party."',
         '"Everybody" is singular and takes a singular verb.',
         'everybody = singular',
         '"Everybody" takes a singular verb.',
         178
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('were', false, 1),
       ('is', true, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 179 (physics singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Physics ___ a challenging subject."',
         '"Physics" looks plural but is treated as a singular subject.',
         'physics = singular',
         '"Physics" takes a singular verb.',
         179
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 180 (scissors plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The scissors ___ in the drawer."',
         '"Scissors" is treated as plural and takes a plural verb.',
         'scissors = plural',
         '"Scissors" takes a plural verb.',
         180
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('has been', false, 2),
       ('are', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 181 (everyone singular present) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Everyone in the office ___ a vote."',
         '"Everyone" is singular and takes a singular verb.',
         'everyone = singular',
         '"Everyone" takes a singular verb.',
         181
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('has', true, 0),
       ('have', false, 1),
       ('are having', false, 2),
       ('having', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 182 (each verb agreement) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Each student ___ responsible for their own work."',
         '"Each" is singular and takes a singular verb.',
         'each = singular',
         '"Each" takes a singular verb.',
         182
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 183 (compound subject singular meaning) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Peanut butter and jelly ___ my favorite sandwich."',
         'When the compound subject refers to a single entity, the verb is singular.',
         'single concept = singular',
         'A compound subject referring to one thing takes a singular verb.',
         183
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 184 (data plural traditionally) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb (traditional usage): "The data ___ inconclusive."',
         'In traditional formal usage, "data" is treated as plural.',
         'data = plural (traditional)',
         '"Data" traditionally takes a plural verb in formal writing.',
         184
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('are', true, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 185 (here plural subject) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Here ___ the keys you were looking for."',
         'The true subject is "keys" (plural), so the verb is plural.',
         'here + plural = are',
         'In "here ___" constructions, the verb agrees with the true subject.',
         185
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('has been', false, 2),
       ('are', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 186 (audience collective) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The audience ___ applauding."',
         'In American English, "audience" as a unit takes a singular verb.',
         'audience = singular (US)',
         '"Audience" as a unit takes a singular verb.',
         186
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 187 (each of compound) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Each of the books ___ illustrated."',
         '"Each" is the singular subject, so the verb is singular.',
         'each of = singular',
         '"Each of" takes a singular verb.',
         187
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 188 (either compound subject) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Neither my brother nor my sisters ___ home."',
         'With neither/nor, the verb agrees with the closer subject ("sisters," plural).',
         'neither/nor = nearest',
         'With neither/nor, the verb agrees with the nearest subject.',
         188
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('are', true, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 189 (the rest plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The rest of the students ___ ready."',
         'The verb agrees with "students" (plural), the object of "of."',
         'rest of + plural = plural',
         '"The rest of" agrees with the noun that follows "of."',
         189
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('has been', false, 2),
       ('are', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 190 (police plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The police ___ investigating the case."',
         '"Police" is treated as plural.',
         'police = plural',
         '"Police" always takes a plural verb.',
         190
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('are', true, 1),
       ('was', false, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 191 (gerund singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Swimming ___ good exercise."',
         'A gerund subject is singular.',
         'gerund = singular',
         'A gerund subject takes a singular verb.',
         191
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 192 (fractions plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Two-thirds of the students ___ here."',
         'With fractions, the verb agrees with the noun after "of" (students, plural).',
         'fraction + plural = plural',
         'Fractions agree with the noun that follows them.',
         192
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', true, 0),
       ('is', false, 1),
       ('was', false, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 193 (fractions singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Two-thirds of the cake ___ gone."',
         'With fractions, the verb agrees with the noun after "of" (cake, singular).',
         'fraction + singular = singular',
         'Fractions agree with the noun that follows them.',
         193
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 194 (relative clause agreement) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She is one of the few people who ___ honest."',
         'In "one of those who," the verb is plural because "who" refers to "people."',
         'who refers to plural',
         'In "one of those who," the verb agrees with the plural noun.',
         194
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('are', true, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 195 (subject after verb) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "On the table ___ several books."',
         'When the subject follows the verb, agreement is still based on the true subject ("books," plural).',
         'agree with true subject',
         'Verbs agree with the subject regardless of position.',
         195
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('was', false, 1),
       ('has been', false, 2),
       ('are', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 196 (time as unit) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Ten years ___ a long time to wait."',
         'When a period of time is treated as a single unit, the verb is singular.',
         'time as unit = singular',
         'A measurement treated as a single unit takes a singular verb.',
         196
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', true, 0),
       ('are', false, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 197 (titles singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Pride and Prejudice ___ a classic novel."',
         'A title, even if it contains plurals, is treated as a singular work.',
         'title = singular',
         'A title takes a singular verb.',
         197
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('are', false, 0),
       ('is', true, 1),
       ('were', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 198 (no one singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "No one ___ the answer."',
         '"No one" is singular and takes a singular verb.',
         'no one = singular',
         '"No one" takes a singular verb.',
         198
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('know', false, 0),
       ('are knowing', false, 1),
       ('knowing', false, 2),
       ('knows', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 199 (both plural) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Both of the answers ___ correct."',
         '"Both" is always plural and takes a plural verb.',
         'both = plural',
         '"Both" always takes a plural verb.',
         199
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('are', true, 1),
       ('was', false, 2),
       ('has been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 200 (simple past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Yesterday, I ___ to the store."',
         '"Went" is the simple past tense of "go," used for completed past actions.',
         'went = past of go',
         'Use "went" as the simple past of "go."',
         200
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('went', true, 0),
       ('gone', false, 1),
       ('go', false, 2),
       ('going', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 201 (present continuous) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She ___ a book right now."',
         'The present continuous (is + verb-ing) describes an action happening now.',
         'right now = is reading',
         'Use the present continuous for current actions.',
         201
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('reads', false, 0),
       ('is reading', true, 1),
       ('read', false, 2),
       ('has read', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 202 (present perfect) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I ___ never been to Paris."',
         'The present perfect (have/has + past participle) describes life experiences.',
         'have/never been = present perfect',
         'Use the present perfect for life experiences up to now.',
         202
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('was', false, 0),
       ('am', false, 1),
       ('have', true, 2),
       ('had', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 203 (past perfect) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "By the time we arrived, the movie ___ already started."',
         'The past perfect (had + past participle) describes an action completed before another past action.',
         'had + past participle',
         'Use the past perfect for events finished before another past event.',
         203
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('have', false, 0),
       ('has', false, 1),
       ('was', false, 2),
       ('had', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 204 (future simple) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I ___ call you tomorrow."',
         '"Will" forms the simple future tense.',
         'will = future',
         'Use "will" for simple future actions.',
         204
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('will', true, 0),
       ('have', false, 1),
       ('had', false, 2),
       ('am', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 205 (past continuous) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I ___ watching TV when the phone rang."',
         'The past continuous (was/were + verb-ing) describes an action in progress in the past.',
         'was/were + -ing',
         'Use the past continuous for ongoing past actions.',
         205
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('am', false, 0),
       ('was', true, 1),
       ('have been', false, 2),
       ('had', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 206 (present simple habit) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "He usually ___ coffee in the morning."',
         'The simple present is used for habits and routines.',
         'usually = simple present',
         'Use the simple present for habits.',
         206
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('drink', false, 0),
       ('is drinking', false, 1),
       ('drinks', true, 2),
       ('has drunk', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 207 (past participle eaten) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I have ___ all the cookies."',
         '"Eaten" is the past participle of "eat," used with "have."',
         'eaten = past participle',
         'Use "eaten" as the past participle of "eat."',
         207
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('ate', false, 0),
       ('eaten', true, 1),
       ('eat', false, 2),
       ('eating', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 208 (future continuous) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "This time tomorrow, I ___ flying to Tokyo."',
         'The future continuous (will be + verb-ing) describes an action in progress at a future time.',
         'will be + -ing',
         'Use the future continuous for actions in progress at a future time.',
         208
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('will be', true, 0),
       ('am', false, 1),
       ('will', false, 2),
       ('have been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 209 (irregular: bring) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She ___ her lunch to school yesterday."',
         '"Brought" is the past tense of "bring."',
         'brought = past of bring',
         'Use "brought" as the past tense of "bring."',
         209
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('bringed', false, 0),
       ('brung', false, 1),
       ('brought', true, 2),
       ('bring', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 210 (irregular: see) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I have ___ that movie three times."',
         '"Seen" is the past participle of "see," used with "have."',
         'seen = past participle of see',
         'Use "seen" as the past participle of "see."',
         210
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('saw', false, 0),
       ('seen', true, 1),
       ('see', false, 2),
       ('seeing', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 211 (irregular: write) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "He ___ a letter to his grandmother last week."',
         '"Wrote" is the past tense of "write."',
         'wrote = past of write',
         'Use "wrote" as the past tense of "write."',
         211
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('written', false, 0),
       ('writed', false, 1),
       ('writes', false, 2),
       ('wrote', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 212 (irregular: take past participle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She has ___ many photos on the trip."',
         '"Taken" is the past participle of "take."',
         'taken = past participle of take',
         'Use "taken" as the past participle of "take."',
         212
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('took', false, 0),
       ('taken', true, 1),
       ('take', false, 2),
       ('taking', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 213 (irregular: drive past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "We ___ to the beach last Saturday."',
         '"Drove" is the past tense of "drive."',
         'drove = past of drive',
         'Use "drove" as the past tense of "drive."',
         213
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('driven', false, 0),
       ('drived', false, 1),
       ('drove', true, 2),
       ('driving', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 214 (irregular: ride past participle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Have you ever ___ a horse?"',
         '"Ridden" is the past participle of "ride."',
         'ridden = past participle of ride',
         'Use "ridden" as the past participle of "ride."',
         214
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('rode', false, 0),
       ('rided', false, 1),
       ('riding', false, 2),
       ('ridden', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 215 (irregular: choose past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Last year, I ___ to study abroad."',
         '"Chose" is the past tense of "choose."',
         'chose = past of choose',
         'Use "chose" as the past tense of "choose."',
         215
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('chose', true, 0),
       ('chosen', false, 1),
       ('choosed', false, 2),
       ('choosing', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 216 (present perfect continuous) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She ___ working here for ten years."',
         'The present perfect continuous (has/have been + verb-ing) shows an ongoing action from past to present.',
         'have/has been + -ing',
         'Use the present perfect continuous for ongoing actions from past to present.',
         216
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('is', false, 0),
       ('has been', true, 1),
       ('was', false, 2),
       ('had been', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 217 (past perfect continuous) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "They ___ waiting for an hour before the bus arrived."',
         'The past perfect continuous (had been + verb-ing) shows action ongoing before another past event.',
         'had been + -ing',
         'Use the past perfect continuous for ongoing actions before another past event.',
         217
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('have been', false, 0),
       ('were', false, 1),
       ('had been', true, 2),
       ('are', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 218 (going to future) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Look at those clouds. It ___ rain."',
         '"Be going to" is used for predictions based on present evidence.',
         'is going to = prediction',
         'Use "be going to" for predictions based on evidence.',
         218
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('will', false, 0),
       ('is going to', true, 1),
       ('was', false, 2),
       ('has', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 219 (simple past be) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She ___ at the party last night."',
         '"Was" is the simple past of "be" for singular subjects.',
         'was = past of be (singular)',
         'Use "was" as the past tense of "be" with singular subjects.',
         219
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('were', false, 0),
       ('is', false, 1),
       ('are', false, 2),
       ('was', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 220 (conditional present) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "If it rains, we ___ stay home."',
         'In the first conditional, the result clause uses "will."',
         'if + present, will + base',
         'In the first conditional, use will + base verb in the result clause.',
         220
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('will', true, 0),
       ('would', false, 1),
       ('have', false, 2),
       ('had', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 221 (second conditional) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "If I ___ rich, I would travel the world."',
         'In the second conditional, use "were" with all subjects after "if."',
         'if + were, would + base',
         'Use "were" in the if-clause of the second conditional.',
         221
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('was', false, 0),
       ('were', true, 1),
       ('am', false, 2),
       ('be', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 222 (third conditional) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "If I had known, I ___ helped you."',
         'In the third conditional, use "would have" + past participle.',
         'would have + past participle',
         'Use "would have" + past participle in third conditional results.',
         222
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('will', false, 0),
       ('had', false, 1),
       ('would have', true, 2),
       ('would', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 223 (irregular: begin past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The concert ___ at 8 o''clock."',
         '"Began" is the simple past of "begin."',
         'began = past of begin',
         'Use "began" as the past tense of "begin."',
         223
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('begun', false, 0),
       ('beginned', false, 1),
       ('begining', false, 2),
       ('began', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 224 (irregular: begin past participle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The movie has ___ already."',
         '"Begun" is the past participle of "begin."',
         'begun = past participle of begin',
         'Use "begun" as the past participle of "begin."',
         224
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('began', false, 0),
       ('begun', true, 1),
       ('beginned', false, 2),
       ('beginning', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 225 (irregular: drink past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "He ___ all the water in one gulp."',
         '"Drank" is the simple past of "drink."',
         'drank = past of drink',
         'Use "drank" as the past tense of "drink."',
         225
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('drank', true, 0),
       ('drunk', false, 1),
       ('drinked', false, 2),
       ('drinking', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 226 (irregular: swim past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Last summer, I ___ in the ocean every day."',
         '"Swam" is the simple past of "swim."',
         'swam = past of swim',
         'Use "swam" as the past tense of "swim."',
         226
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('swum', false, 0),
       ('swam', true, 1),
       ('swimmed', false, 2),
       ('swimming', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 227 (irregular: fly past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The plane ___ over the mountains."',
         '"Flew" is the simple past of "fly."',
         'flew = past of fly',
         'Use "flew" as the past tense of "fly."',
         227
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('flown', false, 0),
       ('flied', false, 1),
       ('flew', true, 2),
       ('flying', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 228 (irregular: catch past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She ___ the ball with one hand."',
         '"Caught" is the simple past of "catch."',
         'caught = past of catch',
         'Use "caught" as the past tense of "catch."',
         228
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('catched', false, 0),
       ('catching', false, 1),
       ('catched up', false, 2),
       ('caught', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 229 (irregular: speak past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "He ___ to the manager about the issue."',
         '"Spoke" is the simple past of "speak."',
         'spoke = past of speak',
         'Use "spoke" as the past tense of "speak."',
         229
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('spoke', true, 0),
       ('spoken', false, 1),
       ('speaked', false, 2),
       ('speaking', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 230 (irregular: break past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She accidentally ___ the vase."',
         '"Broke" is the simple past of "break."',
         'broke = past of break',
         'Use "broke" as the past tense of "break."',
         230
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('broken', false, 0),
       ('broke', true, 1),
       ('breaked', false, 2),
       ('breaking', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 231 (since with present perfect) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I ___ here since 2010."',
         'Use the present perfect ("have lived") with "since" to show duration from past to present.',
         'since = present perfect',
         'Use the present perfect with "since."',
         231
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lived', false, 0),
       ('am living', false, 1),
       ('have lived', true, 2),
       ('was living', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 232 (ago with simple past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "We ___ this house ten years ago."',
         'Use the simple past with "ago" to indicate a finished past event.',
         'ago = simple past',
         'Use the simple past with "ago."',
         232
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('have bought', false, 0),
       ('bought', true, 1),
       ('buy', false, 2),
       ('had bought', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 233 (used to) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I ___ to play soccer every weekend."',
         '"Used to" describes a past habit that no longer occurs.',
         'used to + base verb',
         'Use "used to" for past habits.',
         233
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('use', false, 0),
       ('used', true, 1),
       ('using', false, 2),
       ('uses', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 234 (would for habits) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "When I was young, I ___ walk to school every day."',
         '"Would" can describe a habitual past action.',
         'would = repeated past action',
         'Use "would" for repeated past actions.',
         234
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('will', false, 0),
       ('have', false, 1),
       ('had', false, 2),
       ('would', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 235 (already with perfect) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She has ___ finished her homework."',
         '"Already" pairs with the present perfect to emphasize completion.',
         'already + present perfect',
         'Use "already" with the present perfect for emphasis.',
         235
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('already', true, 0),
       ('yet', false, 1),
       ('ago', false, 2),
       ('since', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 236 (yet with perfect) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Have you finished your homework ___?"',
         '"Yet" is used in questions and negatives with the present perfect.',
         'yet = question/negative',
         'Use "yet" in present perfect questions or negatives.',
         236
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('already', false, 0),
       ('yet', true, 1),
       ('still', false, 2),
       ('since', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 237 (just with perfect) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I have ___ arrived at the airport."',
         '"Just" indicates a very recent action and pairs with the present perfect.',
         'just = recently completed',
         'Use "just" with the present perfect for recent actions.',
         237
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('yet', false, 0),
       ('ago', false, 1),
       ('just', true, 2),
       ('since', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 238 (irregular: lay past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She ___ the baby in the crib gently."',
         '"Laid" is the past tense of "lay" (to put down).',
         'laid = past of lay',
         'Use "laid" as the past tense of "lay."',
         238
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('lay', false, 0),
       ('laid', true, 1),
       ('lied', false, 2),
       ('lain', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 239 (irregular: hang painting) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "They ___ the painting on the wall yesterday."',
         '"Hung" is the past tense of "hang" when referring to objects.',
         'hung = past of hang (objects)',
         'Use "hung" as the past tense of "hang" for objects.',
         239
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('hanged', false, 0),
       ('hanged up', false, 1),
       ('hang', false, 2),
       ('hung', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 240 (state verb present) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I ___ what you mean now."',
         'Stative verbs like "understand" use the simple present, not the present continuous.',
         'stative verb = simple present',
         'Stative verbs typically use the simple present.',
         240
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('understand', true, 0),
       ('am understanding', false, 1),
       ('was understanding', false, 2),
       ('have understanding', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 241 (irregular: rise past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "The sun ___ at 6 a.m. yesterday."',
         '"Rose" is the simple past of "rise."',
         'rose = past of rise',
         'Use "rose" as the past tense of "rise."',
         241
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('rised', false, 0),
       ('rose', true, 1),
       ('risen', false, 2),
       ('rising', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 242 (irregular: forget past participle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I have ___ his phone number."',
         '"Forgotten" is the past participle of "forget."',
         'forgotten = past participle',
         'Use "forgotten" as the past participle of "forget."',
         242
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('forgot', false, 0),
       ('forgetted', false, 1),
       ('forgotten', true, 2),
       ('forgetting', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 243 (irregular: leave past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She ___ the office at five o''clock."',
         '"Left" is the simple past of "leave."',
         'left = past of leave',
         'Use "left" as the past tense of "leave."',
         243
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('leaved', false, 0),
       ('leaving', false, 1),
       ('leaves', false, 2),
       ('left', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 244 (irregular: throw past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "He ___ the ball over the fence."',
         '"Threw" is the simple past of "throw."',
         'threw = past of throw',
         'Use "threw" as the past tense of "throw."',
         244
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('threw', true, 0),
       ('thrown', false, 1),
       ('throwed', false, 2),
       ('throwing', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 245 (irregular: become past participle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "She has ___ a successful lawyer."',
         '"Become" is the past participle of "become."',
         'become = past participle',
         'Use "become" as the past participle of "become."',
         245
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('became', false, 0),
       ('become', true, 1),
       ('becomed', false, 2),
       ('becoming', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 246 (irregular: feel past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I ___ tired after the long walk."',
         '"Felt" is the simple past of "feel."',
         'felt = past of feel',
         'Use "felt" as the past tense of "feel."',
         246
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('feeled', false, 0),
       ('feeling', false, 1),
       ('felt', true, 2),
       ('feels', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 247 (irregular: build past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "They ___ a new bridge last year."',
         '"Built" is the simple past of "build."',
         'built = past of build',
         'Use "built" as the past tense of "build."',
         247
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('builded', false, 0),
       ('building', false, 1),
       ('builds', false, 2),
       ('built', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 248 (irregular: teach past) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "Ms. Brown ___ us math last year."',
         '"Taught" is the simple past of "teach."',
         'taught = past of teach',
         'Use "taught" as the past tense of "teach."',
         248
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('teached', false, 0),
       ('taught', true, 1),
       ('teaching', false, 2),
       ('teaches', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 249 (irregular: know past participle) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct verb: "I have ___ him for years."',
         '"Known" is the past participle of "know."',
         'known = past participle',
         'Use "known" as the past participle of "know."',
         249
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('knew', false, 0),
       ('knowed', false, 1),
       ('known', true, 2),
       ('knowing', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 250 (who subject) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ is going to the meeting?"',
         '"Who" is used as the subject of the sentence.',
         'who = subject',
         'Use "who" as the subject of a sentence.',
         250
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Who', true, 0),
       ('Whom', false, 1),
       ('Whose', false, 2),
       ('Who''s', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 251 (I subject) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "John and ___ went to the store."',
         '"I" is the subject form. (Try removing "John and" to test: "I went," not "Me went.")',
         'I = subject',
         'Use "I" as a subject.',
         251
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('me', false, 0),
       ('I', true, 1),
       ('myself', false, 2),
       ('mine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 252 (me object) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The gift is for John and ___."',
         '"Me" is the object form, required after the preposition "for."',
         'me = object',
         'Use "me" as the object of a preposition or verb.',
         252
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I', false, 0),
       ('myself', false, 1),
       ('me', true, 2),
       ('mine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 253 (whom object) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ did you see at the party?"',
         '"Whom" is the object form (object of the verb "see").',
         'whom = object',
         'Use "whom" as an object.',
         253
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Who', false, 0),
       ('Whose', false, 1),
       ('Who''s', false, 2),
       ('Whom', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 254 (reflexive himself) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "He cut ___ while shaving."',
         '"Himself" is the reflexive pronoun referring back to "he."',
         'himself = reflexive',
         'Use "himself" when the subject is also the object.',
         254
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('himself', true, 0),
       ('hisself', false, 1),
       ('him', false, 2),
       ('his', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 255 (reflexive themselves) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The children dressed ___."',
         '"Themselves" is the reflexive pronoun referring back to "children."',
         'themselves = reflexive',
         'Use "themselves" when the plural subject is the object.',
         255
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('theirselves', false, 0),
       ('themselves', true, 1),
       ('themself', false, 2),
       ('them', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 256 (subject pronoun she) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Sarah and ___ are best friends."',
         '"She" is the subject form, needed because the pronoun is part of the compound subject.',
         'she = subject',
         'Use "she" as a subject pronoun.',
         256
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('her', false, 0),
       ('hers', false, 1),
       ('she', true, 2),
       ('herself', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 257 (object pronoun her) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Please give the book to ___."',
         '"Her" is the object form, required after the preposition "to."',
         'her = object',
         'Use "her" as an object pronoun.',
         257
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('she', false, 0),
       ('hers', false, 1),
       ('herself', false, 2),
       ('her', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 258 (whom preposition) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "For ___ are you waiting?"',
         '"Whom" is required as the object of the preposition "for."',
         'for whom = object',
         'After a preposition, use "whom."',
         258
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('who', false, 0),
       ('whom', true, 1),
       ('whose', false, 2),
       ('which', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 259 (subject we) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ are going to the beach."',
         '"We" is the subject form of the first-person plural pronoun.',
         'we = subject',
         'Use "we" as a subject pronoun.',
         259
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Us', false, 0),
       ('Our', false, 1),
       ('Ourselves', false, 2),
       ('We', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 260 (object us) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The manager spoke to ___ about the project."',
         '"Us" is the object form, required after the preposition "to."',
         'us = object',
         'Use "us" as an object pronoun.',
         260
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('us', true, 0),
       ('we', false, 1),
       ('our', false, 2),
       ('ours', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 261 (antecedent agreement) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct pronoun: "Every student must bring ___ own pencil."',
         '"His or her" agrees with the singular "every student." (Modern usage often accepts "their.")',
         'every student = singular',
         'A singular antecedent takes a singular pronoun.',
         261
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('their', false, 0),
       ('his or her', true, 1),
       ('its', false, 2),
       ('them', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 262 (possessive my) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "This is ___ favorite book."',
         '"My" is the possessive adjective form.',
         'my = possessive',
         'Use "my" as a possessive adjective.',
         262
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I', false, 0),
       ('me', false, 1),
       ('my', true, 2),
       ('mine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 263 (possessive pronoun mine) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "That book is ___."',
         '"Mine" is the possessive pronoun and stands alone.',
         'mine = possessive pronoun',
         'Use "mine" as a standalone possessive.',
         263
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('my', false, 0),
       ('mine', true, 1),
       ('me', false, 2),
       ('I', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 264 (reflexive myself) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "I bought ___ a new coat."',
         '"Myself" is the reflexive pronoun referring back to the subject "I."',
         'myself = reflexive',
         'Use "myself" when the subject is "I."',
         264
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('me', false, 0),
       ('I', false, 1),
       ('mine', false, 2),
       ('myself', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 265 (object him) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "I gave the gift to ___."',
         '"Him" is the object form, used after a preposition.',
         'him = object',
         'Use "him" as an object pronoun.',
         265
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('him', true, 0),
       ('he', false, 1),
       ('his', false, 2),
       ('himself', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 266 (subject he) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ is my brother."',
         '"He" is the subject form.',
         'he = subject',
         'Use "he" as the subject of a sentence.',
         266
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Him', false, 0),
       ('He', true, 1),
       ('His', false, 2),
       ('Himself', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 267 (possessive their) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The students forgot ___ homework."',
         '"Their" is the possessive adjective form for plural.',
         'their = possessive',
         'Use "their" to show plural possession.',
         267
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('them', false, 0),
       ('they''re', false, 1),
       ('there', false, 2),
       ('their', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 268 (object them) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "I saw ___ at the park."',
         '"Them" is the object form of the third-person plural pronoun.',
         'them = object',
         'Use "them" as an object pronoun.',
         268
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('they', false, 0),
       ('them', true, 1),
       ('their', false, 2),
       ('themselves', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 269 (between you and me) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Between you and ___, I don''t trust him."',
         '"Me" is the object form, required after the preposition "between."',
         'between you and me',
         'After a preposition, use the object form.',
         269
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('I', false, 0),
       ('myself', false, 1),
       ('me', true, 2),
       ('mine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 270 (who restrictive clause) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The student ___ won the prize is here."',
         '"Who" is the subject of "won the prize," so the subject form is required.',
         'who = subject of clause',
         'Use "who" as the subject of a relative clause.',
         270
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('whom', false, 0),
       ('which', false, 1),
       ('whose', false, 2),
       ('who', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 271 (whose possessive relative) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The author ___ book I read was famous."',
         '"Whose" is the possessive form of "who/which."',
         'whose = possessive',
         'Use "whose" to show possession in a relative clause.',
         271
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('whose', true, 0),
       ('who''s', false, 1),
       ('who', false, 2),
       ('whom', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 272 (it singular antecedent) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct pronoun: "The dog wagged ___ tail."',
         '"Its" agrees with the singular antecedent "dog."',
         'its = singular animal/thing',
         'Use "its" for a singular non-human antecedent.',
         272
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('it''s', false, 0),
       ('their', false, 1),
       ('its', true, 2),
       ('his', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 273 (plural antecedent) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct pronoun: "The teachers brought ___ supplies to the meeting."',
         '"Their" agrees with the plural antecedent "teachers."',
         'their = plural antecedent',
         'A plural antecedent takes a plural pronoun.',
         273
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('his', false, 0),
       ('their', true, 1),
       ('its', false, 2),
       ('there', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 274 (reflexive ourselves) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "We enjoyed ___ at the party."',
         '"Ourselves" is the reflexive pronoun for "we."',
         'ourselves = reflexive',
         'Use "ourselves" when the subject is "we."',
         274
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('us', false, 0),
       ('ourself', false, 1),
       ('ourselves', true, 2),
       ('ours', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 275 (reflexive yourself) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Did you hurt ___?"',
         '"Yourself" is the singular reflexive for "you."',
         'yourself = singular reflexive',
         'Use "yourself" for a singular "you."',
         275
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('yourself', true, 0),
       ('yourselves', false, 1),
       ('you', false, 2),
       ('yours', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 276 (whom verb object) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "He is the man ___ I admire."',
         '"Whom" is the object of "admire" in the relative clause.',
         'whom = object of verb',
         'Use "whom" as the object in a relative clause.',
         276
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('who', false, 0),
       ('whose', false, 1),
       ('whom', true, 2),
       ('which', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 277 (I after to be) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the formal correct word: "It is ___ who called."',
         'After "to be," formal grammar requires the subject form "I."',
         'to be + subject (formal)',
         'Formal grammar uses subject pronouns after linking verbs.',
         277
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('me', false, 0),
       ('I', true, 1),
       ('myself', false, 2),
       ('mine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 278 (he than I) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the formal correct word: "She is taller than ___."',
         'In formal usage, the pronoun after "than" matches the subject form: "than I (am)."',
         'than I = formal',
         'Formally, use the subject form after "than."',
         278
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('me', false, 0),
       ('myself', false, 1),
       ('mine', false, 2),
       ('I', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 279 (subject they) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "John and Mary called. ___ are coming over."',
         '"They" is the subject form of the third-person plural pronoun.',
         'they = subject',
         'Use "they" as a subject pronoun.',
         279
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('They', true, 0),
       ('Them', false, 1),
       ('Their', false, 2),
       ('Themselves', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 280 (us before noun) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The job is hard for ___ students."',
         '"Us" is the object form needed after "for" before the noun "students."',
         'us students = object',
         'Use "us" before a noun when functioning as an object.',
         280
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('we', false, 0),
       ('us', true, 1),
       ('ourselves', false, 2),
       ('our', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 281 (we students subject) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ students should work hard."',
         '"We" is the subject form needed before "students" as the subject of the sentence.',
         'we students = subject',
         'Use "we" before a noun when functioning as a subject.',
         281
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Us', false, 0),
       ('Our', false, 1),
       ('We', true, 2),
       ('Ourselves', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 282 (myself misuse) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "John and ___ will attend the meeting."',
         '"I" is the subject form. "Myself" can only be used reflexively.',
         'I (not myself) as subject',
         'Use "I," not "myself," as a subject.',
         282
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('myself', false, 0),
       ('me', false, 1),
       ('mine', false, 2),
       ('I', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 283 (it impersonal) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ is raining outside."',
         '"It" is the impersonal subject pronoun for weather expressions.',
         'it = weather subject',
         'Use "it" as the impersonal subject in weather expressions.',
         283
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('It', true, 0),
       ('That', false, 1),
       ('There', false, 2),
       ('This', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 284 (his possessive adjective) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "He lost ___ wallet."',
         '"His" is the possessive adjective for "he."',
         'his = possessive',
         'Use "his" to show possession by "he."',
         284
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('him', false, 0),
       ('he''s', false, 1),
       ('his', true, 2),
       ('he', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 285 (your possessive adjective) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Is this ___ pen?"',
         '"Your" is the possessive adjective form.',
         'your = possessive',
         'Use "your" to show possession by "you."',
         285
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('yours', false, 0),
       ('your', true, 1),
       ('you''re', false, 2),
       ('youre', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 286 (yours possessive pronoun) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The blue car is ___."',
         '"Yours" is a possessive pronoun and stands alone.',
         'yours = standalone possessive',
         'Use "yours" as a standalone possessive.',
         286
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('your', false, 0),
       ('you''re', false, 1),
       ('yours', true, 2),
       ('yourselves', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 287 (whom direct object) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ should I invite to the party?"',
         '"Whom" is the object of the verb "invite" in this sentence.',
         'whom = direct object',
         'Use "whom" as a direct object.',
         287
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Who', false, 0),
       ('Whose', false, 1),
       ('Who''s', false, 2),
       ('Whom', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 288 (compound object her and me) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The teacher praised her and ___."',
         '"Me" is the object form, needed in the compound object.',
         'me = compound object',
         'Use "me" in compound objects.',
         288
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('me', true, 0),
       ('I', false, 1),
       ('mine', false, 2),
       ('myself', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 289 (its vs their for company) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct pronoun: "The company has changed ___ policies."',
         'In American English, "company" is singular, so the pronoun is "its."',
         'company = singular = its',
         'A company takes the singular pronoun "its."',
         289
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('their', false, 0),
       ('its', true, 1),
       ('it''s', false, 2),
       ('there', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 290 (he or she singular) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct formal pronoun: "If anyone calls, tell ___ to leave a message."',
         '"Him or her" agrees with the singular "anyone." (Modern usage often accepts "them.")',
         'anyone = singular',
         'Singular indefinite pronouns take singular pronouns formally.',
         290
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('them', false, 0),
       ('him or her', true, 1),
       ('us', false, 2),
       ('it', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 291 (subject I) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ am a student."',
         '"I" is the subject pronoun (always capitalized as a standalone word).',
         'I = subject',
         'Use "I" as the subject pronoun.',
         291
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Me', false, 0),
       ('My', false, 1),
       ('I', true, 2),
       ('Mine', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 292 (object him) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "Help ___ carry these boxes."',
         '"Him" is the object of the verb "help."',
         'him = object',
         'Use "him" as a direct object.',
         292
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('he', false, 0),
       ('him', true, 1),
       ('his', false, 2),
       ('himself', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 293 (possessive its) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "The tree has lost ___ leaves."',
         '"Its" (no apostrophe) is the possessive form.',
         'its = possessive',
         'Use "its" without an apostrophe for possession.',
         293
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('it''s', false, 0),
       ('its', true, 1),
       ('its''', false, 2),
       ('their', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 294 (himself reflexive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "He taught ___ to play piano."',
         '"Himself" is the reflexive pronoun referring back to "he."',
         'himself = reflexive',
         'Use "himself" reflexively when the subject is "he."',
         294
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('him', false, 0),
       ('he', false, 1),
       ('himself', true, 2),
       ('hisself', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 295 (subject she compound) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ and I went shopping."',
         '"She" is the subject form, required for the compound subject.',
         'she = subject',
         'Use "she" in a compound subject.',
         295
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Her', false, 0),
       ('Hers', false, 1),
       ('Herself', false, 2),
       ('She', true, 3)
     ) as c(label, is_correct, order_index);

-- Question 296 (it impersonal time) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "What time is ___?"',
         '"It" is the impersonal subject pronoun for time.',
         'it = impersonal time',
         'Use "it" as the subject in time expressions.',
         296
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('it', true, 0),
       ('this', false, 1),
       ('that', false, 2),
       ('there', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 297 (whose interrogative) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ keys are on the table?"',
         '"Whose" asks about possession.',
         'whose = possession',
         'Use "whose" to ask about possession.',
         297
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('Who''s', false, 0),
       ('Whose', true, 1),
       ('Whos', false, 2),
       ('Whom''s', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 298 (subject you compound) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "___ and I should leave now."',
         '"You" is correct in both subject and object positions.',
         'you = subject',
         '"You" works in both subject and object positions.',
         298
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('You', true, 0),
       ('Your', false, 1),
       ('Yours', false, 2),
       ('Yourself', false, 3)
     ) as c(label, is_correct, order_index);

-- Question 299 (yourselves plural reflexive) -----------------------------------------------------
with q as (
  insert into questions (
    module_id, category, prompt, explanation,
    flashcard_back, recap_answer, order_index
  )
  select id, null,
         'Choose the correct word: "All of you should help ___."',
         '"Yourselves" is the plural reflexive form for "you."',
         'yourselves = plural reflexive',
         'Use "yourselves" when the subject is plural "you."',
         299
  from modules where slug = 'english'
  returning id
)
insert into question_choices (question_id, label, is_correct, order_index)
select q.id, c.label, c.is_correct, c.order_index
from q,
     (values
       ('yourself', false, 0),
       ('yours', false, 1),
       ('yourselves', true, 2),
       ('you', false, 3)
     ) as c(label, is_correct, order_index);

-- BATCH_3_PLACEHOLDER
