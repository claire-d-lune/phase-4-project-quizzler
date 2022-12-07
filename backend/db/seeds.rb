# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

qz1 = Quiz.create(title: "Claire's first quiz", description: "A very easy geography quiz!", image_url: "", author_id:1)

q1 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the capital of Indonesia?" ,correct_answer: "Jakarta")
q2 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "Which Russian oblast forms a border with Poland?", correct_answer: "Kaliningrad")
q3 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "Which US state has the highest population?", correct_answer: "California")
q4 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "Which of these African countries list Spanish as an official language?", correct_answer: "Equatorial Guinea")
q5 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is Canada's smallest province?",correct_answer: "Prince Edward Island")
q6 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "How many countries does Mexico border?" ,correct_answer: 3)
q7 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the capital of India?" ,correct_answer: "New Delhi")
q8 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "How many federal states does Germany have?", correct_answer: "16")
q9 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the only state in the United States that does not have a flag in a shape with 4 edges?", correct_answer: "Ohio")
q10 = Question.create(quiz_id: qz1.id, category: "Geo", format: "multi", difficulty: "easy", question: "What is the 15th letter of the Greek alphabet?", correct_answer: "Omicron (&Omicron;)")


IncorrectAnswer.create(question_id:q1.id, a1: "Poland, Iceland, Italy, Greece, Serbia", a2:  "Poland, Iceland, Italy, Greenland, Spain",  a3: "Portugal, Iceland, Ireland, Greece, Serbia")
IncorrectAnswer.create(question_id:q2.id, a1: "Samara", a2: "Nizhny Novgorod", a3: "Omsk")
IncorrectAnswer.create(question_id:q3.id, a1: "New York", a2: "Texas", a3: "Florida")
IncorrectAnswer.create(question_id:q4.id, a1: "Guinea", a2: "Cameroon", a3: "Angola")
IncorrectAnswer.create(question_id:q5.id, a1: "New Brunswick", a2: "Nova Scotia", a3: "Yukon")
IncorrectAnswer.create(question_id:q6.id, a1: "2", a2: "4", a3: "1")
IncorrectAnswer.create(question_id:q7.id, a1: "Bejing", a2: "Montreal", a3: "Tithi")
IncorrectAnswer.create(question_id:q8.id, a1: "13", a2: "32", a3: "25")
IncorrectAnswer.create(question_id:q9.id, a1: "Florida", a2: "Idaho", a3: "New Mexico")
IncorrectAnswer.create(question_id:q10.id, a1: "Sigma (&Sigma;)", a2: "Pi (&Pi;)", a3: "Nu (&Nu;)")
# IncorrectAnswer.create(question_id:q, a1: , a2:, a3: , )
# IncorrectAnswer.create(question_id:q, a1: , a2:, a3: , )
# IncorrectAnswer.create(question_id:q, a1: , a2:, a3: , )
# IncorrectAnswer.create(question_id:q, a1: , a2:, a3: , )
# IncorrectAnswer.create(question_id:q, a1: , a2:, a3: , )
# IncorrectAnswer.create(question_id:q, a1: , a2:, a3: , )
# IncorrectAnswer.create(question_id:q, a1: , a2:, a3: , )