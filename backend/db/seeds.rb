# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create(
  first_name: "Claire", 
  last_name: "Steinhoff", 
  username: "claire-d-lune", 
  image_url: "https://media-exp1.licdn.com/dms/image/D5603AQF9uigUo2kWQA/profile-displayphoto-shrink_800_800/0/1668648375793?e=1675900800&v=beta&t=p33TY21eEtjriCLxvesaFM36yXEdac7DP7Gn0xVVT00",
  password_digest:"$2a$12$ajUgvBSjQ3SJ57k3xKC4I.7dJFuHpFC9VEUOyFcQ4wKg8YylslKWu")
user2 = User.create(
  first_name: "Oren",
  last_name: "Noyes",
  username: "orn",
  image_url: "https://media-exp1.licdn.com/dms/image/D5635AQFKEIO7J50lKg/profile-framedphoto-shrink_800_800/0/1667947544509?e=1671055200&v=beta&t=OhPkonBcFqqTEBkLVPSq8__SyA-Y-e7BfKtgOnoI-FQ", 
  password_digest: "$2a$12$ec2FeXOXfkMPtYcBA5Hbt.YBGwsDw0Zl.ff3e7YEvo6J3PX4CEXwC")

  
##--QUIZ 1--###

qz1 = Quiz.create(title: "Beginner's Geography Quiz", description: "Test your Geography Skills with this quick quiz! ", image_url: "", author_id:1)


## Shorthand: ' qz1_q1 ' ==> ' Quiz 1 - Question 1 ' , and so forth
qz1_q1 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "What is the capital of Indonesia?" ,correct_answer: "Jakarta")
qz1_q2 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "Which Russian oblast forms a border with Poland?", correct_answer: "Kaliningrad")
qz1_q3 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "Which US state has the highest population?", correct_answer: "California")
qz1_q4 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "Which of these African countries list Spanish as an official language?", correct_answer: "Equatorial Guinea")
qz1_q5 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "What is Canada's smallest province?",correct_answer: "Prince Edward Island")
qz1_q6 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "How many countries does Mexico border?" ,correct_answer: 3)
qz1_q7 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "What is the capital of India?" ,correct_answer: "New Delhi")
qz1_q8 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "How many federal states does Germany have?", correct_answer: "16")
qz1_q9 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "What is the only state in the United States that does not have a flag in a shape with 4 edges?", correct_answer: "Ohio")
qz1_q0 = Question.create(quiz_id: qz1.id, category: "Geography", format: "multi", difficulty: "easy", question: "What is the 15th letter of the Greek alphabet?", correct_answer: "Omicron (&Omicron;)")


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
qz2 = Quiz.create(title: "Wait - what happened!?", description: "Who doesn't like history?", image_url: "", author_id:1)

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
qz3 = Quiz.create(title: "A Tricky Film Quiz!", description: "This one's for all the film buffs", image_url: "", author_id:1)

qz3_q1 = Question.create(quiz_id: qz3.id, category: "Entertainment: Film", format: "multiple", difficulty: "medium", question: "In the 2010 Nightmare on Elm Street reboot, who played Freddy Kruger?", correct_answer: "Jackie Earle Haley")
qz3_q2 = Question.create(quiz_id: qz3.id,  
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Which one of these action movies are shot entirely in one take?",
  correct_answer: "Victoria")
qz3_q3 = Question.create(quiz_id: qz3.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Who played Sgt. Gordon Elias in &#039;Platoon&#039; (1986)?",
  correct_answer: "Willem Dafoe")
qz3_q4 = Question.create(quiz_id: qz3.id,
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Darth Vader&#039;s famous reveal to Luke is iconic. But which of these is the right one?",
  correct_answer: "&quot;No. I am your father.&quot;")
qz3_q5 = Question.create(quiz_id: qz3.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Which animated film did Steven Lisberger direct in 1980 before going on to direct Tron?",
  correct_answer: "Animalympics")
qz3_q6 = Question.create(quiz_id: qz3.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "What was the name of the protagonist in the movie Commando (1985)?",
  correct_answer: "John Matrix")
qz3_q7 = Question.create(quiz_id: qz3.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "What is the correct spelling of the protagonist of the book in The NeverEnding Story (1984)?",
  correct_answer: "Atreyu")
qz3_q8 = Question.create(quiz_id: qz3.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "Which stand-up comedian voiced the talking parrot &quot;Iago&quot; in Disney&#039;s 1992 adaptation of Aladdin?",
  correct_answer: "Gilbert Gottfried")
qz3_q9 = Question.create(quiz_id: qz3.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "In the 2014 film &quot;Birdman&quot;, what is the primary instrument in the score?",
  correct_answer: "Drums")
qz3_q0 = Question.create(quiz_id: qz3.id, 
  category: "Entertainment: Film",
  format: "multiple",
  difficulty: "medium",
  question: "How much money did the 2019 Marvel movie &quot;Avengers: Endgame&quot; grossed for it&#039;s record-breaking worldwide opening weekend?",
  correct_answer: "1.2 billion USD") 


IncorrectAnswer.create(question_id:qz3_q1.id,   
    a1: "Tyler Mane",
    a2: "Derek Mears",
    a3: "Gunnar Hansen")
IncorrectAnswer.create(question_id:qz3_q2.id, 
    a1: "Ip Man 2",
    a2: "The Bourne Legacy",
    a3: "L&eacute;on: The Professional")
IncorrectAnswer.create(question_id:qz3_q3.id, 
    a1: "Charlie Sheen",
    a2: "Matt Damon",
    a3: "Johnny Depp")
IncorrectAnswer.create(question_id:qz3_q4.id, 
    a1: "&quot;Luke, I am your father.&quot;",
    a2: "&quot;You&#039;re wrong. I am your father.&quot;",
    a3: "&quot;The truth is that I am your father.&quot;")
IncorrectAnswer.create(question_id:qz3_q5.id, 
    a1: "The Fox and the Hound",
    a2: "The Black Cauldron",
    a3: "The Great Mouse Detecive")
IncorrectAnswer.create(question_id:qz3_q6.id, 
    a1: "Ben Richards",
    a2: "Douglas Quaid",
    a3: "Harry Tasker")
IncorrectAnswer.create(question_id:qz3_q7.id, 
    a1: "Atrayu",
    a2: "Atraiyu",
    a3: "Atraeyu")
IncorrectAnswer.create(question_id:qz3_q8.id,
    a1:  "Robin Williams",
    a2:  "Pauly Shore",
    a3:  "Jonathan Freeman")
IncorrectAnswer.create(question_id:qz3_q9.id, 
    a1:  "Saxophone",
    a2:  "Violin",
    a3:  "Actual Live Birds Singing")
IncorrectAnswer.create(question_id:qz3_q0.id, 
    a1: "640 million USD",
    a2: "456 million USD",
    a3: "392 million USD")

##--QUIZ 4--###
qz4 = Quiz.create(title: "64-bit History: a Gaming Quiz", description: "Are you a gamer?", image_url: "", author_id:1)

qz4_q1 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "In Portal 2, the iconic character GLaDOS is turned into:",
  correct_answer: "A potato")
qz4_q2 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "In the 2002 video game &quot;Kingdom Hearts&quot;, how many playable worlds were there?",
  correct_answer: "14")
qz4_q3 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium" ,
  question: "In Left 4 Dead, what is the name of the virus, as designated by CEDA, that causes most humans to turn into the Infected?",
  correct_answer: "Green Flu")
qz4_q4 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "When was Chapter 1 of the Source Engine mod &quot;Underhell&quot; released?",
  correct_answer: "September 1st, 2013")
qz4_q5 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "What was the original name of  &quot;Minecraft&quot;?",
  correct_answer: "Cave Game")
qz4_q6 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "In the game Pok&eacute;mon Conquest, how many kingdoms make up the region of Ransei?",
  correct_answer: "17")
qz4_q7 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "Which of these blocks in &quot;Minecraft&quot; has the lowest blast resistance?",
  correct_answer: "Sand")
qz4_q8 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "When was Club Penguin launched?",
  correct_answer: "October 24, 2005")
qz4_q9 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "Why were only only 300,000 copies of Uniracers were produced?",
  correct_answer: "DMA Designs was sued by Pixar, preventing more copies from being produced")
qz4_q0 = Question.create(quiz_id: qz4.id, category: "Video Games", format: "multi", difficulty: "medium",
  question: "Which of the following is a character in the video game Destiny?",
  correct_answer: "Cayde-6")

IncorrectAnswer.create(question_id:qz4_q1.id, 
  a1: "A tomato",
  a2: "A lemon",
  a3: "An apple")
IncorrectAnswer.create(question_id:qz4_q2.id, 
  a1: "13",
  a2: "16",
  a3: "11")
IncorrectAnswer.create(question_id:qz4_q3.id, 
  a1: "Yellow Fever",
  a2: "T-Virus",
  a3: "Raspberry Sniffles")
IncorrectAnswer.create(question_id:qz4_q4.id,  
  a1: "March 3rd, 2011",
  a2: "September 12th, 2013",
  a3: "October 2nd, 2012")
IncorrectAnswer.create(question_id:qz4_q5.id,
  a1: "Minecraft: Order of the Stone",
  a2: "Dig And Build",
  a3: "Infiniminer")
IncorrectAnswer.create(question_id:qz4_q6.id, 
  a1: "18",
  a2: "15",
  a3: "16")
IncorrectAnswer.create(question_id:qz4_q7.id, 
  a1: "End Stone",
  a2: "Water",
  a3: "Wood Planks")
IncorrectAnswer.create(question_id:qz4_q8.id, 
  a1: "October 21, 2005",
  a2: "March 29, 2006",
  a3: "November 22, 2004")
IncorrectAnswer.create(question_id:qz4_q9.id,    
  a1: "There was a disagreement between DMA Designs and Nintendo",
  a2: "It didn't sell well due to poor review scores",
  a3: "No public information is available")
IncorrectAnswer.create(question_id:qz4_q0.id, 
  a1: "Ostrava of Boletaria",
  a2: "Mordecai the Hunter",
  a3: "Leon S. Kennedy")


## Quiz 5 ##

qz5 = Quiz.create(title: "A Tricky Computer Quiz", description: "Can you compute all the questions?", image_url: "", author_id:1)

qz5_q1 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "In any programming language, what is the most common way to iterate through an array?" ,correct_answer: "For loops")
qz5_q2 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "What does CPU stand for?", correct_answer: "Central Processing Unit")
qz5_q3 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "The programming language Swift was created to replace what other programming language?", correct_answer: "Objective-C")
qz5_q4 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "What amount of bits commonly equals one byte?", correct_answer: "8")
qz5_q5 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "The series of the Intel HD graphics generation succeeding that of the 5000 and 6000 series (Broadwell) is called:",correct_answer: "HD Graphics 500")
qz5_q6 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "How many kilobytes in one gigabyte?" ,correct_answer: "1000000")
qz5_q7 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "The numbering system with a radix of 16 is more commonly referred to as:" ,correct_answer: "Hexidecimal")
qz5_q8 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "The C programming language was created by this American computer scientist", correct_answer: "Dennis Ritchie")
qz5_q9 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "In computing, what does MIDI stand for?", correct_answer: "Musical Instrument Digital Interface")
qz5_q10 = Question.create(quiz_id: qz5.id, category: "Computers", format: "multi", difficulty: "easy", question: "What language does Node.js use?", correct_answer: "JavaScript")


IncorrectAnswer.create(question_id:qz5_q1.id, a1: "If statements", a2:  "Do while loops",  a3: "While loops")
IncorrectAnswer.create(question_id:qz5_q2.id, a1: "Central Process Unit", a2: "Computer Personal Unit", a3: "Central Processor Unit")
IncorrectAnswer.create(question_id:qz5_q3.id, a1: "C#", a2: "Ruby", a3: "C++")
IncorrectAnswer.create(question_id:qz5_q4.id, a1: "1", a2: "2", a3: "64")
IncorrectAnswer.create(question_id:qz5_q5.id, a1: "HD Graphics 700", a2: "HD Graphics 600", a3: "HD Graphics 7000")
IncorrectAnswer.create(question_id:qz5_q6.id, a1: "1024", a2: "1000", a3: "1048567")
IncorrectAnswer.create(question_id:qz5_q7.id, a1: "Binary", a2: "Duodecimal", a3: "Octal")
IncorrectAnswer.create(question_id:qz5_q8.id, a1: "Tim Berners Lee", a2: "al-Khwārizmi", a3: "Willis Ware")
IncorrectAnswer.create(question_id:qz5_q9.id, a1: "Musical Interface of Digital Instruments", a2: "Modular Interface of Digital Instruments", a3: "Musical Instrument Data Interface")
IncorrectAnswer.create(question_id:qz5_q10.id, a1: "Java", a2: "Java Source", a3: "Joomla Source Code")

qz6 = Quiz.create(title: "Science and Nature", description: "Let's get scientific!", image_url: "", author_id:1)

qz6_q1 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "Which of the following bones is not in the leg?" , correct_answer: "Radius")
qz6_q2 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "Which of these bones is hardest to break?", correct_answer: "Femur")
qz6_q3 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "Rhinoplasty is a surgical procedure on what part of the human body?", correct_answer: "Nose")
qz6_q4 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "This element, when overcome with extreme heat and pressure, creates diamonds.", correct_answer: "Carbon")
qz6_q5 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "What is the first element on the periodic table?",correct_answer: "Hydrogen")
qz6_q6 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "Human cells typically have how many copies of each gene?" ,correct_answer: "2")
qz6_q7 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "The biggest distinction between a eukaryotic cell and a prokaryotic cell is:" ,correct_answer: "The presence or absence of a nucleus")
qz6_q8 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "What is the standard atomic weight of a Plutonium nucleus?", correct_answer: "244")
qz6_q9 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "Dry ice is the solid form of what substance?", correct_answer: "Carbon dioxide")
qz6_q10 = Question.create(quiz_id: qz6.id, category: "Science", format: "multi", difficulty: "easy", question: "Who discovered the law of Gravity?", correct_answer: "Isaac Newton")

IncorrectAnswer.create(question_id:qz6_q1.id, a1: "Patella", a2: "Tibia",  a3: "Fibula")
IncorrectAnswer.create(question_id:qz6_q2.id, a1: "Cranium", a2: "Humerus", a3: "Tibia")
IncorrectAnswer.create(question_id:qz6_q3.id, a1: "Ears", a2: "Chin", a3: "Neck")
IncorrectAnswer.create(question_id:qz6_q4.id, a1: "Nitrogen", a2: "Oxygen", a3: "Hydrogen")
IncorrectAnswer.create(question_id:qz6_q5.id, a1: "Helium", a2: "Oxygen", a3: "Lithium")
IncorrectAnswer.create(question_id:qz6_q6.id, a1: "1", a2: "4", a3: "3")
IncorrectAnswer.create(question_id:qz6_q7.id, a1: "The overall size", a2: "The presence or absence of certain organelles", a3: "The mode of reproduction")
IncorrectAnswer.create(question_id:qz6_q8.id, a1: "94", a2: "481", a3: "128")
IncorrectAnswer.create(question_id:qz6_q9.id, a1: "Nitrogen", a2: "Ammonia", a3: "Oxygen")
IncorrectAnswer.create(question_id:qz6_q10.id, a1: "Galileo Galilei", a2: "Charles Darwin", a3: "Albert Einstein")

qz7 = Quiz.create(title: "Sports Trivia", description: "You better come to play...", image_url: "", author_id:1)

q1 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "Who won the 2015 Formula 1 World Championship?" ,correct_answer: "Lewis Hamilton")
q2 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "Which driver has been the Formula 1 world champion for a record 7 times?", correct_answer: "Michael Schumacher")
q3 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "In Baseball, how many times does the ball have to be pitched outside of the strike zone before the batter is walked?", correct_answer: "4")
q4 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "What team won the 2016 MLS Cup?", correct_answer: "Seattle Sounders")
q5 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "Which team has won the most Stanley Cups in the NHL?",correct_answer: "Montreal Canadians")
q6 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "When was the first official international game played?" ,correct_answer: "1872")
q7 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "Which player holds the NHL record of 2,857 points?" ,correct_answer: "Wayne Gretzky")
q8 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "Which two teams played in Super Bowl XLII?", correct_answer: "The New York Giants and the New England Patriots")
q9 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "Which of the following Grand Slam tennis tournaments occurs LAST?", correct_answer: "US Open")
q10 = Question.create(quiz_id: qz7.id, category: "Sport", format: "multi", difficulty: "easy", question: "Which team was the 2014-2015 NBA Champions?", correct_answer: "Golden State Warriors")

IncorrectAnswer.create(question_id:q1.id, a1: "Nico Rosberg", a2:  "Sebastian Vettel",  a3: "Jenson Button")
IncorrectAnswer.create(question_id:q2.id, a1: "Ayrton Senna", a2: "Fernando Alonso", a3: "Jim Clark")
IncorrectAnswer.create(question_id:q3.id, a1: "1", a2: "2", a3: "3")
IncorrectAnswer.create(question_id:q4.id, a1: "Colorado Rapids", a2: "Toronto FC", a3: "Montreal Impact")
IncorrectAnswer.create(question_id:q5.id, a1: "Chicago Blackhawks", a2: "Toronto Maple Leafs", a3: "Detroit Red Wings")
IncorrectAnswer.create(question_id:q6.id, a1: "1880", a2: "1863", a3: "1865")
IncorrectAnswer.create(question_id:q7.id, a1: "Mario Lemieux", a2: "Sidney Crosby", a3: "Gordie Howe")
IncorrectAnswer.create(question_id:q8.id, a1: "The Green Bay Packers and the Pittsburgh Steelers", a2: "The Philadelphia Eagles and the New England Patriots", a3: "The Seattle Seahawks and the Denver Broncos")
IncorrectAnswer.create(question_id:q9.id, a1: "French Open", a2: "Wimbledon", a3: "Austrailian Open")
IncorrectAnswer.create(question_id:q10.id, a1: "Cleveland Cavaliers", a2: "Houston Rockets", a3: "Atlanta Hawks")

qz8 = Quiz.create(title: "Music Hear-o (I'm so sorry)", description: "Hear me out on this one...", image_url: "", author_id:1)

q1 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "Who wrote the Sinead O'Connor hit, Nothing Compares 2 U?" ,correct_answer: "Prince")
q2 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "Who had a 1969 top 5 hit with the song, A Boy Named Sue?", correct_answer: "Johnny Cash")
q3 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "Where does the Mac part of the name Fleetwood Mac come from?", correct_answer: "John McVie")
q4 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "What was the name of singer Frank Ocean's second studio album?", correct_answer: "Blonde")
q5 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "Kanye West's song Gold Digger featured which Oscar-winning actor?",correct_answer: "Jamie Foxx")
q6 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "Who performed, I Took a Pill in Ibiza?" ,correct_answer: "Mike Posner")
q7 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "Gene Autry is credited with the first recording for all but which classic Christmas jingle?" ,correct_answer: "White Christmas")
q8 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: " The British Invasion was a cultural phenomenon in music where British boy bands became popular in the USA in what decade?", correct_answer: "1960s")
q9 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "The song YYZ by Rush, derives its name from the IATA aiport identification code for which city? ", correct_answer: "Toronto")
q10 = Question.create(quiz_id: qz8.id, category: "Music", format: "multi", difficulty: "easy", question: "Which of these are NOT a Men at Work song?", correct_answer: "Basket Case")

IncorrectAnswer.create(question_id:q1.id, a1: "Michael Jackson", a2:  "Cameo",  a3: "Rick James")
IncorrectAnswer.create(question_id:q2.id, a1: "Bob Dylan", a2: "Willie Nelson", a3: "Kris Kristofferson")
IncorrectAnswer.create(question_id:q3.id, a1: "Christine McVie", a2: "Mac McAnally", a3: "David Tennant")
IncorrectAnswer.create(question_id:q4.id, a1: "Brunette", a2: "Black", a3: "Burgundy")
IncorrectAnswer.create(question_id:q5.id, a1: "Alec Baldwin", a2: "Dwayne Johnson", a3: "Bruce Willis")
IncorrectAnswer.create(question_id:q6.id, a1: "Avicii", a2: "Robbie Williams", a3: "Harry Styles")
IncorrectAnswer.create(question_id:q7.id, a1: "Frosty the Snowman", a2: "Rudolph the Red-Nosed Reindeer", a3: "Here comes Santa Claus")
IncorrectAnswer.create(question_id:q8.id, a1: "50s", a2: "40s", a3: "30s")
IncorrectAnswer.create(question_id:q9.id, a1: "Vancouver", a2: "Ottawa", a3: "Calgary")
IncorrectAnswer.create(question_id:q10.id, a1: "Dr. Heckyll and Mr. Jive", a2: "Who Can It Be Now", a3: "Be Good Johnny")

qz9 = Quiz.create(title: "Vehicles", description: "Can you put the drive in to ace this quiz?", image_url: "", author_id:1)

q1 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "Where are the cars of the brand Ferrari manufactured?" ,correct_answer: "Italy")
q2 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "Which Italian city is home of the car manufacturer Fiat?", correct_answer: "Turin")
q3 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "Jaguar Cars was previously owned by which car manfacturer?", correct_answer: "Ford")
q4 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "What UK Train does NOT go over 125MPH?", correct_answer: "Sprinter")
q5 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "Which of these companies does NOT manufacture motorcycles?",correct_answer: "Toyota")
q6 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "Which car tire manufacturer is famous for its, P Zero line?" ,correct_answer: "Pirelli")
q7 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "The LS2 engine is how many cubic inches?" ,correct_answer: "364")
q8 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "What is the name of the most popular electric car from Nissan?", correct_answer: "Leaf")
q9 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "What is the fastest road legal car in the world?", correct_answer: "Koenigsegg Agera RS")
q10 = Question.create(quiz_id: qz9.id, category: "Cars", format: "multi", difficulty: "easy", question: "What brand of car is associated with James Bond?", correct_answer: "Aston Martin")

IncorrectAnswer.create(question_id:q1.id, a1: "Romania", a2:  "Germany",  a3: "Russia")
IncorrectAnswer.create(question_id:q2.id, a1: "Maranello", a2: "Modena", a3: "Rome")
IncorrectAnswer.create(question_id:q3.id, a1: "Chrysler", a2: "General Motors", a3: "Fiat")
IncorrectAnswer.create(question_id:q4.id, a1: "Class 43", a2: "Javelin", a3: "Pendolino")
IncorrectAnswer.create(question_id:q5.id, a1: "Honda", a2: "Kawasaki", a3: "Yamaha")
IncorrectAnswer.create(question_id:q6.id, a1: "Goodyear", a2: "Bridgestone", a3: "Michelin")
IncorrectAnswer.create(question_id:q7.id, a1: "346", a2: "376", a3: "402")
IncorrectAnswer.create(question_id:q8.id, a1: "Tree", a2: "Deer", a3: "Roots")
IncorrectAnswer.create(question_id:q9.id, a1: "Hennessy Venom GT", a2: "Bugatti Veyron Super Sport", a3: "Pagani Huayra BC")
IncorrectAnswer.create(question_id:q10.id, a1: "Jaguar", a2: "Mercedes-Benz", a3: "BMW")
