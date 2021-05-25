import React, { useState } from 'react'
import plsWork from './plsWork.jpg';
import './App.css';

function App() {
  const [ search, setSearch ] = useState('')
  const [ res, setRes ] = useState([])

  const handleSubmit = async (e) => {
    e.preventDefault()
    const res = await fetch(`http://localhost:8080/?search=${search}`, { cors: 'no-cors' }).then(res => res.json())
    setRes(res)
  }

  return (
    <div className="App">
      <img src={plsWork} style={{ position: 'absolute', left: 0, top: 0, width: 400 }}/>
      <h1>Google v2.0</h1>
      <form onSubmit={ handleSubmit } style={{ marginBottom: 30 }}>
        <input type="text" value={ search } onChange={ (e) => setSearch(e.target.value) } placeholder="Search something" />
        <button onClick={ handleSubmit }>Submit</button>
      </form>

      { res.map(url => <div>
        <a href={`https://${url}`} target="_blank">{ url }</a>
      </div>) }
    </div>
  );
}

export default App;
