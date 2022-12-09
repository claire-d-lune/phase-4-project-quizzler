import React, { useState, createContext } from "react";


// create the context
const UserContext = createContext();

// create a provider component
function UserProvider({ children }) {

  const [currentUser, setCurrentUser] = useState({id: 1, userName: "claire-d-lune", image_url: 'https://pngimg.com/uploads/github/github_PNG90.png', attempts: []})

  return <UserContext.Provider value={[currentUser, setCurrentUser]}>{children}</UserContext.Provider>;
}


export { UserContext, UserProvider};