import React, { useState, useEffect } from "react";

const AttemptCard = ({score, quiz}) => {

    console.log("Returning attempt")
    console.log(score)
    return (
        <div>
            <p>Quiz_id: {quiz}</p>
            <p>Score: {score}</p>
        </div>
    )

    // return (
        
    //     <div class="left-50 my-5 lg:flex">
    //         <div class="bg-geo h-48 lg:h-auto lg:w-48 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden" title="Woman holding a mug">
    //         </div>
    //         <div class="w-3/4 border-r border-b border-l border-grey-light lg:border-l-0 lg:border-t lg:border-grey-light bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
    //             <div class="mb-8">
    //             <p class="text-sm text-black flex items-center pb-2">
    //                 {/* <svg class="text-grey w-3 h-3 mr-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
    //                 <path d="M4 8V6a6 6 0 1 1 12 0v2h1a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-8c0-1.1.9-2 2-2h1zm5 6.73V17h2v-2.27a2 2 0 1 0-2 0zM7 6v2h6V6a3 3 0 0 0-6 0z" />
    //                 </svg> */}
    //                 Category ::  {quiz.questions[0].category}
    //             </p>
    //             <Link to={`/quizpage/${quiz.id}`}>
    //                 <div class="text-black font-bold underline text-xl mb-2">{quiz.title}</div>
    //             </Link>
    //             <p class="text-gray-700 text-base">{quiz.description}</p>
    //             </div>
    //             <div class="flex items-center">
    //             <img class="w-10 h-10 rounded-full mr-4" src={randomAuthor.image_url} alt="Avatar of Jonathan Reinink"/>
    //             <div class="text-sm">
    //                 <p class="text-black leading-none">{randomAuthor.first_name}  {randomAuthor.last_name}</p>
    //                 <p class="text-grey-dark">Aug 18</p>
    //             </div>
    //             </div>
    //         </div>
    //         </div>
    // )
}

export default AttemptCard