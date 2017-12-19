import React, { Component } from 'react';
import './App.css';

class ImageGrid extends Component {

  render() {
    return (
      <div>
        <img src={this.props.url} description={this.props.description}/>
      </div>
    );
  }
}

export default ImageGrid;