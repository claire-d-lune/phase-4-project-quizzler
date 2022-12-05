// import './App.css';
import Home from './components/Home';
import NewUserForm from './components/NewUserForm';
import QuizPage from './components/QuizPage';
import User from './components/User';
import { Routes, Route } from 'react-router-dom';

function App() {
  return (
    <div>
        <Routes>
          <Route path='home' element= {<Home/>}/>
          <Route exact path='/login' element= {<NewUserForm/>}/>
          <Route path='/user' element= {<User/>}/>
          <Route path='/quizpage' element= {<QuizPage/>}/>
          {/* <Route path='/nav' element= {<Nav/>}/> */}
        </Routes>
    </div>
  );
}

export default App;
