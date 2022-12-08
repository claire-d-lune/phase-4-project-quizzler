import React, {useEffect, useState} from "react";
import { useParams } from "react-router-dom";
import QuestionCard from "./QuestionCard";

const QuizPage = () => {

    const {id} = useParams();
    const [quizData, setQuizData] = useState({questions: []})

    useEffect(() => {
        fetch(`/api/quizzes/${id}`)
        .then(res => res.json())
        .then(data => setQuizData(data))
    }, []);
 
    console.log(quizData)

    const questionsStack = quizData.questions.map((question) => {
        return <QuestionCard key={question.id} questionID={question.id}/>
    })


    return (
        <>
            {questionsStack}
        </>
    )
}

export default QuizPage