import React, {useState} from "react";

const Signup = () => {

    const [userForm, setUserForm] = useState({
        first_name: "",
        last_name: "",
        username: "",
        email: "",
        password: "",
        password_confirmation: ""
    })


    const handleFormChange = (e) => {
        let newForm = {...userForm}
        newForm[e.target.id] = e.target.value
        setUserForm(newForm)
    }

    const handleSubmit = (e) => {
        e.preventDefault()
        fetch("api/signup", {
            method: "POST",
            headers: {"Content-Type" : "application/json"},
            body: JSON.stringify(userForm) 
        })
    }

    console.log(userForm)

    return (
        <div class="bg-white mt-10 sm:mt-0">
            <div class="md:grid md:grid-cols-3 md:gap-6">
                <div class="md:col-span-1">
                    <div class="bg-white px-4 sm:px-0">
                        <h3 class="text-lg font-medium leading-6 text-gray-900">Register a new account:</h3>
                        <p class="mt-1 text-sm text-gray-600">Use an email address where you can receive mail.</p>
                    </div>
                </div>
                <div class="mt-5 md:col-span-2 md:mt-0">
                {/* <form action="#" method="POST"> */}
                <form onSubmit={handleSubmit}>
                    <div class="overflow-hidden shadow sm:rounded-md">
                    <div class="bg-white px-4 py-5 sm:p-6">
                        <div class="grid grid-cols-6 gap-6">
                        <div class="col-span-6 sm:col-span-3">
                            <label class="block text-sm font-medium text-gray-700">First name</label>
                            <input onChange={handleFormChange} value={userForm.first_name} type="text" name="first_name" id="first_name" autocomplete="given-name" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                        </div>

                        <div class="col-span-6 sm:col-span-3">
                            <label class="block text-sm font-medium text-gray-700">Last name</label>
                            <input onChange={handleFormChange}  value={userForm.last_name} type="text" name="last-name" id="last_name" autocomplete="family-name" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                        </div>

                        <div class="col-span-6 sm:col-span-4">
                            <label for="email-address" class="block text-sm font-medium text-gray-700">Email address</label>
                            <input onChange={handleFormChange}  value={userForm.email} type="text" name="email-address" id="email" autocomplete="email" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                        </div>

                        <div class="col-span-6 sm:col-span-3">
                            <div class="col-span-6 sm:col-span-3">
                                <label class="block text-sm font-medium text-gray-700">Username</label>
                                <input onChange={handleFormChange} value={userForm.username}type="text" name="username" id="username" autocomplete="username" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                            </div>
                           
                        </div>

                        <div></div>

                        <div class="col-span-6 sm:col-span-3">
                            <label class="block text-sm font-medium text-gray-700">Password</label>
                            <input onChange={handleFormChange} type="text" name="last-name" id="password" autocomplete="password" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                        </div>

                        <div class="col-span-6 sm:col-span-3">
                            <label class="block text-sm font-medium text-gray-700">Confirm Password</label>
                            <input onChange={handleFormChange} type="text" name="last-name" id="password_confirmation" autocomplete="password" class="text-black mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"/>
                        </div>
                        </div>
                        </div>
                    <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">
                        <button type="submit" onSubmit={handleSubmit} class="inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Save</button>
                    </div>
                    </div>
                </form>
                </div>
            </div>
        </div>
    )

    }

export default Signup