import React , {Component} from 'react';
import {login} from './UserFunctions';
import { Link } from 'react-router-dom';
import Navbar from './Navbar';

import Footer from '../Footer';
import logo  from '../logo.svg'

class Login extends Component {
    constructor(){
        super()
        this.state ={
            email:'',
            password:'',
           alert:'',
            errors :{}
        }

        this.onChange =  this.onChange.bind(this)
        this.onSubmit =  this.onSubmit.bind(this)
    }


    onChange(e){
        this.setState({
            [e.target.name]:e.target.value
        })
    }

onSubmit(e){

  e.preventDefault()
  
  if(localStorage.role == 1){
    var user ={
     role_id:2,
     email :this.state.email,
     password:this.state.password    
    
    }
  }else{
     user ={
      role_id:2,
      email :this.state.email,
      password:this.state.password 
     
     }
  }

var total
  this.props.pizzas.forEach(element => {
    if(element.is_added== 1){
      total = total + element
  
    }


  })


  

   login(user).then(res=>{
   
if(res.status ==401){

console.log("email or password invalid")
this.setState({
  alert:401
})

}else if(total){
  this.props.history.push(`/cart`)
}
else{
  this.props.history.push(`/commander`)
}



   })

 console.log('role ', localStorage.role)
   


}

render(){
  console.log("hii",this.props.pizzas)
    return (
<div>
<Navbar pizzas={this.props.pizzas} />

{/* <Slide/> */}
 <div className="container mt-5 mb-5">

   <div className="row d-flex justify-content-center">
<div className="col-md-6 mb-5  " >





<div class="card shadow-lg" >
<img className="card-img-top  mt-4 w-50 mx-auto" src={logo}  alt=""/>
    <h2 className="mx-auto ml-3">  BestMenu</h2>
       <p className="mx-auto ml-4"> Client Dashboard</p>
  <div class="card-body">
   





<form className="form-signin" noValidate onSubmit={this.onSubmit} mx-auto>
  
  <h1 className="h3 mb-3 font-weight-normal">Please sign in</h1>
  {this.state.alert==401 ? (
<div class="alert alert-danger" role="alert">
  email or password invalid
</div>
):(
<div >
 
</div>
)
}
  <label htmlFor="inputEmail" className="sr-only">
    Email address
  </label>
  <input
    type="email"
   name="email"
    className="form-control my-3"
    placeholder="Email address"
    value={this.state.email}
    onChange={this.onChange}
    required
    autofocus
  />
  <label htmlFor="inputPassword" className="sr-only">
    Password
  </label>
  <input
    type="password"
    name="password"
    className="form-control"
    value={this.state.password}
    onChange={this.onChange}
    placeholder="Password"
    required
  />

  <button className="btn btn-lg btn-primary btn-block my-2" type="submit">
    Sign in
  </button>
  <Link to="/register" className="btn btn-lg btn-danger btn-block">
           Register
  </Link>
 
</form>



</div>
</div>






</div>
</div>
</div>
<Footer/>
</div>
    )
}


}

export default Login