// import './App.css';
import Home from './components/Home';
import LoginPage from './components/LoginPage';
import QuizPage from './components/QuizPage';
import User from './components/User';
import Signup from './components/Signup';
import { Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import LeaderBoard from './components/Leaderboard';
import { UserProvider } from './context/context';

function App() {
  return (
    <UserProvider>
      <div>
          <Navbar/>
          <Routes>
            <Route path='/home' element= {<Home/>}/>
            <Route path='/login' element= {<LoginPage/>}/>
            <Route path='/user' element= {<User/>}/>
            <Route path='/quizpage/:id' element= {<QuizPage/>}/>
            <Route path='/signup' element = {<Signup/>}/>
            <Route path='/leaderboard' element = {<LeaderBoard/>}/>
          </Routes>
      </div>
    </UserProvider>
  );
}

export default App;
