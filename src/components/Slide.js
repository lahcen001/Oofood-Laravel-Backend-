import React, { Component } from 'react'
import './slider.css'
import logo  from './logo.svg'

export class Slide extends Component {
  render() {
    return (
    
        
  <div className="jumbotron jumbotron bg-cover shadow mb-0">
         <div className="justify-content-center">
    <div className="overlay"></div>
    <div className="container">
   
    <div  className="display-3 mb-1">
    <img src={logo} alt=""  className="w-25"/>
     <h1 className="display-3 mb-1 text-white"> BestMenu</h1>
     </div>
      <h4 className="lead">Order food online in  <span>CASABLANCA & TANGER</span></h4>
      
    </div>
    </div>
  </div>


    )
  }
}

export default Slide
