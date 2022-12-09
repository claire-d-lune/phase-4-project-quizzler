import React, { useContext, useEffect, useState }  from "react";
import Navbar from "./Navbar"
import { UserContext } from "../context/context";
import { useNavigate } from "react-router-dom";


function LoginPage() {

    //Controlled form and submission:
    const [formData, setFormData] = useState({
        username: "",
        password: ""
    });

    const handleFormChange = (e) => {
        let newInfo = {...formData}
        newInfo[e.target.id] = e.target.value
        setFormData(newInfo)
    }

    //importing context setter for post log in. 
    let setUserContext = useContext(UserContext)[1]

    let navigate = useNavigate()

    const handleSubmit = (e) => {
        e.preventDefault()
        fetch("/api/login", 
        {   method: "POST",
            headers:{"Content-Type" : "application/json"},
            body: JSON.stringify(formData)
        })
        .then(res => res.json())
        .then(data => {
            data.username ? setUserContext(data) : alert("Error!")
            return data
        })
        .then((data) => data.username ? navigate("/home") : nil)
    }

    return (
        <>
        <div class="bg-white mt-10 sm:mt-0">
        <div class="md:grid md:grid-cols-3 md:gap-6">
            <div class="md:col-span-1">
            <div class="bg-white px-4 sm:px-0">
                <h3 class="text-lg font-medium leading-6 text-gray-900">Log in:</h3>
                <p class="mt-1 text-sm text-gray-600">please enter the username and password you used to register</p>
            </div>
            </div>
            <div class="mt-5 md:col-span-2 md:mt-0">
            {/* <form action="#" method="POST"> */}
            <form onSubmit={handleSubmit}>
                <div class="overflow-hidden shadow sm:rounded-md">
                <div class="bg-white px-4 py-5 sm:p-6">
                    <div class="grid grid-cols-6 gap-6">
                    <div class="col-span-6 sm:col-span-4">
                        <label for="email-address" class="block text-sm font-medium text-gray-700">Username: </label>
                        <input onChange={handleFormChange}  value={formData.username} type="text"  id="username" autocomplete="username" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                    </div>
                    <div class="col-span-6 sm:col-span-3">
                        <label for="last-name" class="block text-sm font-medium text-gray-700">Password</label>
                        <input onChange={handleFormChange} type="text" name="last-name" id="password" autocomplete="password" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                    </div>
                    </div>
                    </div>
                <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">
                    <button onClick={handleSubmit} class="inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Login</button>
                </div>
                </div>
            </form>
            </div>
        </div>
    </div>
    </>
    )
}

export default LoginPage;