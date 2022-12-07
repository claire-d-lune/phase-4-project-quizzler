# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


##--QUIZ 1--###

qz1 = Quiz.create(title: "Claire's first quiz", description: "A very easy geography quiz!", image_url: "", author_id:1)


## Shorthand: ' qz1_q1 ' ==> ' Quiz 1 - Question 1 ' , and so forth
qz1_q1 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the capital of Indonesia?" ,correct_answer: "Jakarta")
qz1_q2 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "Which Russian oblast forms a border with Poland?", correct_answer: "Kaliningrad")
qz1_q3 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "Which US state has the highest population?", correct_answer: "California")
qz1_q4 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "Which of these African countries list Spanish as an official language?", correct_answer: "Equatorial Guinea")
qz1_q5 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is Canada's smallest province?",correct_answer: "Prince Edward Island")
qz1_q6 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "How many countries does Mexico border?" ,correct_answer: 3)
qz1_q7 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the capital of India?" ,correct_answer: "New Delhi")
qz1_q8 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "How many federal states does Germany have?", correct_answer: "16")
qz1_q9 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the only state in the United States that does not have a flag in a shape with 4 edges?", correct_answer: "Ohio")
qz1_q0 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the 15th letter of the Greek alphabet?", correct_answer: "Omicron (&Omicron;)")


IncorrectAnswer.create(question_id:qz1_q1.id, a1: "Poland, Iceland, Italy, Greece, Serbia", a2:  "Poland, Iceland, Italy, Greenland, Spain",  a3: "Portugal, Iceland, Ireland, Greece, Serbia")
IncorrectAnswer.create(question_id:qz1_q2.id, a1: "Samara", a2: "Nizhny Novgorod", a3: "Omsk")
IncorrectAnswer.create(question_id:qz1_q3.id, a1: "New York", a2: "Texas", a3: "Florida")
IncorrectAnswer.create(question_id:qz1_q4.id, a1: "Guinea", a2: "Cameroon", a3: "Angola")
IncorrectAnswer.create(question_id:qz1_q5.id, a1: "New Brunswick", a2: "Nova Scotia", a3: "Yukon")
IncorrectAnswer.create(question_id:qz1_q6.id, a1: "2", a2: "4", a3: "1")
IncorrectAnswer.create(question_id:qz1_q7.id, a1: "Bejing", a2: "Montreal", a3: "Tithi")
IncorrectAnswer.create(question_id:qz1_q8.id, a1: "13", a2: "32", a3: "25")
IncorrectAnswer.create(question_id:qz1_q9.id, a1: "Florida", a2: "Idaho", a3: "New Mexico")
IncorrectAnswer.create(question_id:qz1_q0.id, a1: "Sigma (&Sigma;)", a2: "Pi (&Pi;)", a3: "Nu (&Nu;)")

##--QUIZ 2--###
qz2 = Quiz.create(title: "Claire's second quiz", description: "A very easy history quiz!", image_url: "", author_id:1)

qz2_q1 = Question.create(quiz_id: qz2.id, question: "Which one of these was not a beach landing site in the Invasion of Normandy?", correct_answer: "Silver", category: "History", format: "multi", difficulty: "easy" ) 
qz2_q2 = Question.create(quiz_id: qz2.id, question: "What was William Frederick Cody better known as?", correct_answer: "Buffalo Bill", category: "History", format: "multi", difficulty: "easy" )
qz2_q3 = Question.create(quiz_id: qz2.id, question: "Which one of these tanks was designed and operated by the United Kingdom?", correct_answer: "Tog II", category: "History", format: "multi", difficulty: "easy" )
qz2_q4 = Question.create(quiz_id: qz2.id, question: "The original Roman alphabet lacked the following letters EXCEPT:", correct_answer: "X", category: "History", format: "multi", difficulty: "easy" )
qz2_q5 = Question.create(quiz_id: qz2.id, question: "What was Manfred von Richthofen&#039;s nickname?", correct_answer: "The Red Baron", category: "History", format: "multi", difficulty: "easy" )
qz2_q6 = Question.create(quiz_id: qz2.id, question: "Who was the first prime minister of Canada?", correct_answer: "John Macdonald", category: "History", format: "multi", difficulty: "easy" )
qz2_q7 = Question.create(quiz_id: qz2.id, question: "How long did World War II last?", correct_answer: "6 years", category: "History", format: "multi", difficulty: "easy" )
qz2_q8 = Question.create(quiz_id: qz2.id, question: "In 1939, Britain and France declared war on Germany after it invaded which country?", correct_answer: "Poland", category: "History", format: "multi", difficulty: "easy" )
qz2_q9 = Question.create(quiz_id: qz2.id, question: "Which modern country is known as &quot;The Graveyard of Empires&quot;?", correct_answer: "Afghanistan" , category: "History", format: "multi", difficulty: "easy" )
qz2_q0 = Question.create(quiz_id: qz2.id, question: "What was the name commonly given to the ancient trade routes that connected the East and West of Eurasia?", correct_answer: "Silk Road", category: "History", format: "multi", difficulty: "easy" )

IncorrectAnswer.create(question_id:qz2_q1.id, a1: "Gold", a2: "Juno", a3: "Sword")
IncorrectAnswer.create(question_id:qz2_q2.id, a1: "Billy the Kid", a2: "Wild Bill Hickok", a3: "Pawnee Bill")
IncorrectAnswer.create(question_id:qz2_q3.id, a1: "M4 Sherman", a2: "Tiger H1", a3: "T-34")
IncorrectAnswer.create(question_id:qz2_q4.id, a1: "W", a2: "U", a3: "J")
IncorrectAnswer.create(question_id:qz2_q5.id, a1: "The High Flying Ace", a2: "The Blue Serpent ", a3: "The Germany Gunner")
IncorrectAnswer.create(question_id:qz2_q6.id, a1: "John Abbott", a2: "Alexander Mackenzie", a3: "Robert Borden")
IncorrectAnswer.create(question_id:qz2_q7.id, a1: "4 years", a2: "5 years", a3: "7 years")
IncorrectAnswer.create(question_id:qz2_q8.id, a1: "Czechoslovakia", a2: "Austria", a3: "Hungary")
IncorrectAnswer.create(question_id:qz2_q9.id, a1: "China", a2: "Iraq", a3: "Russia")
IncorrectAnswer.create(question_id:qz2_q0.id, a1: "Spice Road", a2: "Clay Road", a3: "Salt Road")

##--QUIZ 3--###
qz3 = Quiz.create(title: "Claire's third quiz", description: "A tricky film quiz!", image_url: "", author_id:1)

qz3_q1 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "In the 2010 Nightmare on Elm Street reboot, who played Freddy Kruger?",
  correct_answer: "Jackie Earle Haley")
qz3_qq2 = Question.create(quiz_id: qz2.id,  
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Which one of these action movies are shot entirely in one take?",
  correct_answer: "Victoria")
qz3_q3 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Who played Sgt. Gordon Elias in &#039;Platoon&#039; (1986)?",
  correct_answer: "Willem Dafoe")
qz3_q4 = Question.create(quiz_id: qz2.id,
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Darth Vader&#039;s famous reveal to Luke is iconic. But which of these is the right one?",
  correct_answer: "&quot;No. I am your father.&quot;")
qz3_q5 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Which animated film did Steven Lisberger direct in 1980 before going on to direct Tron?",
  correct_answer: "Animalympics")
qz3_q6 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "What was the name of the protagonist in the movie Commando (1985)?",
  correct_answer: "John Matrix")
qz3_q7 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "What is the correct spelling of the protagonist of the book in The NeverEnding Story (1984)?",
  correct_answer: "Atreyu")
qz3_q8 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Which stand-up comedian voiced the talking parrot &quot;Iago&quot; in Disney&#039;s 1992 adaptation of Aladdin?",
  correct_answer: "Gilbert Gottfried")
qz3_q9 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "In the 2014 film &quot;Birdman&quot;, what is the primary instrument in the score?",
  correct_answer: "Drums")
qz3_q0 = Question.create(quiz_id: qz2.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "How much money did the 2019 Marvel movie &quot;Avengers: Endgame&quot; grossed for it&#039;s record-breaking worldwide opening weekend?",
  correct_answer: "1.2 billion USD") 


IncorrectAnswer.create(question_id:qz3_qu1.id,   
    a1 = "Tyler Mane",
    a2 = "Derek Mears",
    a3 = "Gunnar Hansen")
IncorrectAnswer.create(question_id:qz3_q2.id, 
    a1 = "Ip Man 2",
    a2 = "The Bourne Legacy",
    a3 = "L&eacute;on: The Professional")
IncorrectAnswer.create(question_id:qz3_q3.id, 
    a1 = "Charlie Sheen",
    a2 = "Matt Damon",
    a3 = "Johnny Depp")
IncorrectAnswer.create(question_id:qz3_q4.id, 
    a1 = "&quot;Luke, I am your father.&quot;",
    a2 = "&quot;You&#039;re wrong. I am your father.&quot;",
    a3 = "&quot;The truth is that I am your father.&quot;")
IncorrectAnswer.create(question_id:qz3_q5.id, 
    a1 = "The Fox and the Hound",
    a2 = "The Black Cauldron",
    a3 = "The Great Mouse Detecive")
IncorrectAnswer.create(question_id:qz3_q6.id, 
    a1 = "Ben Richards",
    a2 = "Douglas Quaid",
    a3 = "Harry Tasker")
IncorrectAnswer.create(question_id:qz3_q7.id, 
    a1 = "Atrayu",
    a2 = "Atraiyu",
    a3 = "Atraeyu")
IncorrectAnswer.create(question_id:qz3_q8.id,
    a1 = "Robin Williams",
    a2 = "Pauly Shore",
    a3 = "Jonathan Freeman")
IncorrectAnswer.create(question_id:qz3_q9.id, 
    a1 = "Saxophone",
    a2 = "Violin",
    a3 = "Actual Live Birds Singing")
IncorrectAnswer.create(question_id:qz3_q0.id, 
    a1 = "640 million USD",
    a2 = "456 million USD",
    a3 = "392 million USD")

##--QUIZ 4--###
qz3 = Quiz.create(title: "Claire's third quiz", description: "A very easy geography quiz!", image_url: "", author_id:1)

qu1 = Question.create(quiz_id: qz2.id, question:
qu2 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu3 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu4 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu5 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu6 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu7 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu8 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu9 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )
qu0 = Question.create(quiz_id: qz2.id, category: "History", format: "multi", difficulty: "easy" )


IncorrectAnswer.create(question_id:qu1.id, )
IncorrectAnswer.create(question_id:qu2.id, )
IncorrectAnswer.create(question_id:qu3.id, )
IncorrectAnswer.create(question_id:qu4.id, )
IncorrectAnswer.create(question_id:qu5.id, )
IncorrectAnswer.create(question_id:qu6.id, )
IncorrectAnswer.create(question_id:qu7.id, )
IncorrectAnswer.create(question_id:qu8.id, )
IncorrectAnswer.create(question_id:qu9.id, )
IncorrectAnswer.create(question_id:qu0.id, )

