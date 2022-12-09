import React, {useState, useEffect} from "react";

const QuestionCard = ({questionID, setQuizResults}) => {

    const [questionData, setQuestionData] = useState({
        incorrect_answers: []
    })

    useEffect(() => {
        fetch(`/api/questions/${questionID}`)
        .then(res => res.json())
        .then(data => setQuestionData(data))
    }, [])

    //destructing some messy data for consumption
    const answerObject = {...questionData.incorrect_answers[0], ca: questionData.correct_answer}

    let multipleChoices = [
        <option value="incorrect_1" id="incorrect_1">{answerObject.a1}</option>,
        <option value="incorrect_2" id="incorrect_2">{answerObject.a2}</option>,
        <option value="incorrect_3" id="incorrect_3">{answerObject.a3}</option>,
        <option value="correct" id="correct">{answerObject.ca}</option>
    ]

    //shuffle choices
    const shuffledChoices = multipleChoices.sort((a, b) => 0.5 - Math.random())

    return (
        <div class="max-w-sm bg-[#8e94c1] rounded overflow-hidden shadow-lg my-5 ">
            <div class="px-6 py-4">
                <div class="font-bold text-xl mb-2">{questionData.question}</div>
            </div>
            <div>
                        <label class="mb-3 block text-base font-medium text-[#9797ac]">Select an Answer: </label>
                        <select onChange={setQuizResults} id="category" defaultValue="DEFAULT" class="w-full resize-none rounded-md mb-3 border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md">
                            <option value="DEFAULT" disabled hidden>select an answer</option>
                            {shuffledChoices}
                        </select>   
            </div>
        </div>
    )
}

export default QuestionCard