import React, { Component } from 'react';
import Home from './components/Home'
import './App.css';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {topics: []};
    this.getTopics = this.getTopics.bind(this);
  }

  getTopics(){
    fetch('api/v1/topics')
    .then(res => res.json())
    .then(topics => {
      debugger;
      this.setState({topics: JSON.stringify(topics)})
    })
  }

  render() {
    return (
      <div className="App">
        <button onClick={this.getTopics}> Get Topics</button>
        <p>{this.state.topics}</p>

      </div>
    );
  }
}

export default App;
