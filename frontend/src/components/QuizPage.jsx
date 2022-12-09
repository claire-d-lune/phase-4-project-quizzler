import React, {useEffect, useState, useContext} from "react";
import { useParams } from "react-router-dom";
import QuestionCard from "./QuestionCard";
import { UserContext } from "../context/context";

const QuizPage = () => {

    const {id} = useParams();
    const [quizData, setQuizData] = useState({questions: []})

    //getting current user for submit later:
    let currentContext = useContext(UserContext)
    let user = currentContext[0]
    console.log(user)

    //pre populating a results array that I will pass down. Hopefully this will allow me to send a count attempts
    const quizResults = []

    useEffect(() => {
        fetch(`/api/quizzes/${id}`)
        .then(res => res.json())
        .then(data => setQuizData(data))
    }, []);

    
    const questionsStack = quizData.questions.map((question) => {
        const setQuizResults = (e) => {
            console.log(e.target.value)
            if (e.target.value == "correct")
                quizResults[question.id] = true
            else
                quizResults[question.id] = false
            console.log(quizResults)
        }

        return <QuestionCard key={question.id} questionID={question.id} setQuizResults={setQuizResults} quizResults ={quizResults}/>
    })

    const handleSubmit = (e) => {
        e.preventDefault()
        let score = quizResults.filter(n => n).length

        let attemptBody = {
            quiz_id: parseInt(id),
            user_id: user.id,
            score: score
        }

        fetch("/api/attempts",
        { 
            method: "POST",
            headers: {"Content-Type" : "application/json"},
            body: JSON.stringify(attemptBody)
        })
        .then(res => res.json())
        .then(data => console.log(data))
    }


    return (
        <> 
        <div class="grid-cols-1 relative left-40">
            {questionsStack}
            <div class=" py-3 sm:px-6">
                    <button onClick={handleSubmit} class="inline-flex mx-20 rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                        Submit Results
                    </button>
            </div>
        </div>
        <button onClick={handleSubmit} class="inline-flex mx-20 rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
            Submit Results
        </button>
        </>
    )
}

export default QuizPage