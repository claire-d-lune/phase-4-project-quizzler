// import './App.css';
import Home from './components/Home';
import NewUserForm from './components/LoginPage';
import QuizPage from './components/QuizPage';
import User from './components/User';
import Signup from './components/Signup';
import { Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';

function App() {
  return (
    <div>
        <Navbar/>
        <Routes>
          <Route path='home' element= {<Home/>}/>
          <Route exact path='/login' element= {<NewUserForm/>}/>
          <Route path='/user' element= {<User/>}/>
          <Route path='/quizpage' element= {<QuizPage/>}/>
          <Route path='/signup' element = {<Signup/>}/>
          {/* <Route path='/nav' element= {<Nav/>}/> */}
        </Routes>
    </div>
  );
}

export default App;
