import React from "react";
import { Link } from "react-router-dom";

const QuizCard = ({quiz}) => {

    // We ran out of time to implement everything we wanted here, so instead of another fetch I am going to use a faker
    // to populate the visual portion of the author's data for presentation's sake. A real fetch would be pretty straight forward, 
    // but I need to go to bed. 
    const authorFakerJunior  = [
        {first_name: "Claire", 
        last_name: "Steinhoff", 
        username: "claire-d-lune", 
        image_url: "https://media-exp1.licdn.com/dms/image/D5603AQF9uigUo2kWQA/profile-displayphoto-shrink_800_800/0/1668648375793?e=1675900800&v=beta&t=p33TY21eEtjriCLxvesaFM36yXEdac7DP7Gn0xVVT00"
        },
        {first_name: "Oren",
        last_name: "Noyes",
        username: "orn",
        image_url: "https://media-exp1.licdn.com/dms/image/D5635AQFKEIO7J50lKg/profile-framedphoto-shrink_800_800/0/1667947544509?e=1671055200&v=beta&t=OhPkonBcFqqTEBkLVPSq8__SyA-Y-e7BfKtgOnoI-FQ"
        }
    ]

    //This line randomizes the choice from our faker and selects one. 
    const randomAuthor = authorFakerJunior.sort((a, b) => 0.5 - Math.random())[0]

    return (
        <div class="left-50 my-5 lg:flex">
            <div class="bg-geo h-48 lg:h-auto lg:w-48 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden" title="Woman holding a mug">
            </div>
            <div class="w-3/4 border-r border-b border-l border-grey-light lg:border-l-0 lg:border-t lg:border-grey-light bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
                <div class="mb-8">
                <p class="text-sm text-black flex items-center pb-2">
                    {/* <svg class="text-grey w-3 h-3 mr-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                    <path d="M4 8V6a6 6 0 1 1 12 0v2h1a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-8c0-1.1.9-2 2-2h1zm5 6.73V17h2v-2.27a2 2 0 1 0-2 0zM7 6v2h6V6a3 3 0 0 0-6 0z" />
                    </svg> */}
                    Category ::  {quiz.questions[0].category}
                </p>
                <Link to={`/quizpage/${quiz.id}`}>
                    <div class="text-black font-bold underline text-xl mb-2">{quiz.title}</div>
                </Link>
                <p class="text-gray-700 text-base">{quiz.description}</p>
                </div>
                <div class="flex items-center">
                <img class="w-10 h-10 rounded-full mr-4" src={randomAuthor.image_url} alt="Avatar of Jonathan Reinink"/>
                <div class="text-sm">
                    <p class="text-black leading-none">{randomAuthor.first_name}  {randomAuthor.last_name}</p>
                    <p class="text-grey-dark">Aug 18</p>
                </div>
                </div>
            </div>
            </div>
)
}

export default QuizCard