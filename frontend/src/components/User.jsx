import React from "react";
import Navbar from "./Navbar";

const User = () => {


    const print_array = (array) => {
        console.log(`a1: "${array[0]}", a2: "${array[1]}", a3: "${array[2]}"`)
    }

    print_array(
        [
    "Samara",
    "Nizhny Novgorod",
    "Omsk"
    ]
    )



 return (
        <>
            <Navbar/>
            <h1>User test</h1>
            
        </>
    )

}

export default User