import React, {useState, useEffect} from "react";


const QuestionCard = ({questionID}) => {

    const [questionData, setQuestionData] = useState([])

    useEffect(() => {
        fetch(`/api/questions/${questionID}`)
        .then(res => res.json())
        .then(data => setQuestionData(data))
    }, []);

    console.log(questionData)
    return (
    <>
        <p>{questionID}</p>
    </>
    )
}

export default QuestionCard