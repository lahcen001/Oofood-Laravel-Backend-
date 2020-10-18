import React, { Component } from 'react';
import Index from './components/Index';

import Dash from './components/dash/Index_dash';

import { BrowserRouter as Router, Route , Switch} from 'react-router-dom';


import Itempage from './components/Itempage';




export class App extends Component {
  render() {

 





    return (
      <div>
        <Router>
      <Switch>
        <Route  exact path="/" component={Index}/>
        
      

       
        </Switch>
      

                  
    
       

       
        </Router>
      </div>
    )
  }
}

export default App
