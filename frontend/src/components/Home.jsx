import React from 'react'
import { useState, useEffect } from 'react'
import QuizCard from './QuizCard'

const Home = () => {

    const [quizList, setQuizList] = useState([])

    useEffect(() => {
        fetch("/api/quizzes")
        .then(res => res.json())
        .then(data => setQuizList([...data]))
    }, []);

    console.log(quizList)

    const quizStack = quizList.map((quiz) => {
        return <QuizCard key={quiz.id} quiz={quiz}/>
    }) 

    return (
    <>
        <p>Home</p>
        <div class="grid-cols-1 relative mx-10">
            {quizStack}
        </div>
    </>
    )
}

export default Home