import React, { useState, createContext } from "react";


// create the context
const UserContext = createContext();

// create a provider component
function UserProvider({ children }) {

  const [currentUser, setCurrentUser] = useState({userName: "claire-d-lune", image_url: "https://media-exp1.licdn.com/dms/image/D5603AQF9uigUo2kWQA/profile-displayphoto-shrink_800_800/0/1668648375793?e=1675900800&v=beta&t=p33TY21eEtjriCLxvesaFM36yXEdac7DP7Gn0xVVT00"})

  return <UserContext.Provider value={[currentUser, setCurrentUser]}>{children}</UserContext.Provider>;
}


export { UserContext, UserProvider};