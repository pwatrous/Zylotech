import React, { Component } from 'react';
import './App.css';
import Image from './Image';
import { Button } from 'muicss/react';

class App extends Component {

  constructor(props) {
    super(props);
    this.state = {
      description: props.description,
      images: [],
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleClick = this.handleClick.bind(this)
  }

  handleChange() {
    console.log("changed");
  }

  handleClick() {
    this.setState({
      images: this.state.images.concat(<Image url={"https://c402277.ssl.cf1.rackcdn.com/photos/13100/images/featured_story/BIC_128.png?1485963152"} description={"a panda"}/>)

    });
  }

  render() {

    return (
      <div className="App">
        <header className="header">
          <h1 className="title">Image Library</h1>
        </header>
        <div className="nav_container">
          <input className="search_bar" type="text" placeholder="Search.." onChange={this.handleChange}/>
          <Button className="add_button" variant="fab" color="primary" onClick={this.handleClick}>+</Button>
        </div>
        <div className="image_grid">
          {this.state.images}
        </div>
      </div>
    );
  }
}

export default App;
