import React, { Component } from 'react'
import{Link , withRouter} from 'react-router-dom'
import logo  from '../logo.svg'
import {getdashorder} from './Functions_dash';
import { AiOutlineLogout } from 'react-icons/ai';
import { AiOutlineUnorderedList } from 'react-icons/ai';
export class Aside_bar extends Component {
  constructor(props){
    super(props)
    this.state ={
        index:[]
    }
}




    
  componentDidMount(){

    getdashorder().then(res=>{
     this.setState({
     index:res
     })
     console.log(this.state.index)
  })

  }

getdata(){
  getdashorder().then(res=>{
    this.setState({
    index:res
    })
    console.log(this.state.index)
 })
}



componentDidUpdate(){
  this.getdata()
}


  
logOut(e){
  
  e.preventDefault()
  localStorage.removeItem('usertoken')
  localStorage.removeItem('role')
  this.props.data.history.push('/admin')

  
}
  render() {


    let num = 0;
    this.state.index.forEach(element => {
       
         // element.is_added =0;
         num += parseFloat(element.cont.length);
     });

    // const ajout2 = this.state.index.filter(p => p.cont);
    console.log('data delete',num)
    // if(this.deleteOrder){
    //   setTimeout(this.getdata(),1000000);
    // }
    let att = 0;
    const attente = this.state.index.filter(p => p.is_added==0)

    attente.forEach(element => {
       
      // element.is_added =0;
      att += parseFloat(element.cont.length);
  });


  let acc = 0;
  const accepted = this.state.index.filter(p => p.is_added==1);


  
  accepted.forEach(element => {
       
    // element.is_added =0;
    acc += parseFloat(element.cont.length);
});


let ann = 0;
const annule = this.state.index.filter(p =>  p.accept==1 && p.is_added==0 );

annule.forEach(element => {
       
  // element.is_added =0;
  ann += parseFloat(element.cont.length);
});

let conf = 0;
const confirmer=  this.state.index.filter(p => p.exp);

confirmer.forEach(element => {
       
  // element.is_added =0;
 conf += parseFloat(element.cont.length);
});
    ////////



    const loginRegLink = (
      <Link to="/admin" className="btn btn-outline-primary  btn-block">
      Login
         </Link>
  )

  const userLink = (
    <div>
       <button onClick={this.logOut.bind(this)}   className="btn btn-danger  btn-block my-3">
       <AiOutlineLogout/>  Logout
            </button>
            <hr/>




   <Link to="/orderdash" className="btn btn-outline-primary  btn-block">
   <AiOutlineUnorderedList className="mx-2"/> 
  Liste des commandes <span class="badge badge-info"> {num}</span>
    </Link>
    <Link to="/ajoutdash" className="btn btn-outline-primary btn-block  my-3">
    <AiOutlineUnorderedList className="mx-2"/>  commandes acceptées <span class="badge badge-info"> {acc}</span>
  </Link>

  <Link to="/orderref" className="btn btn-outline-primary  btn-block">

  <AiOutlineUnorderedList className="mx-2"/>  commandes en attentes <span class="badge badge-info"> {att}</span>
  </Link>
 
  <hr/>
  <Link to="/annulerclient" className="btn btn-outline-dark  btn-block">
  <AiOutlineUnorderedList className="mx-2"/>  commande annulée  <span class="badge badge-info"> {ann}</span>
  </Link>
  <Link to="/confirmerecep" className="btn btn-outline-dark  btn-block">
  <AiOutlineUnorderedList className="mx-2"/>  commandes confirmées   <span class="badge badge-info"> {conf}</span>
  </Link>
 
  </div>
  )
  

    return (
    
            <nav

        id="sidebarMenu"
        className="col-md-3 d-md-block bg-light sidebar collapse shadow-lg"
      >
        
       
        <div className="sidebar-sticky ">
          <div className=" justify-content-center ml-5">
          
          <img className="w-75 ml-3" src={logo} alt=""/>
         
       <h2 className="ml-5">  BestMenu</h2>
    <h5 className="ml-5">  bienvenue  {localStorage.name}</h5>
   
             </div>
          <ul className="nav flex-column">

         
            <li className="nav-item">
         
           
            {(localStorage.usertoken &&  localStorage.role==1) ? userLink : loginRegLink}
               
              
            </li>
            
          </ul>
          <h6 className="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
           
            {/* <a
              className="d-flex align-items-center text-muted"
              href="#"
              aria-label="Add a new report"
            >
              <span data-feather="plus-circle" />
            </a> */}
          </h6>
       
        </div>
      </nav>

    )
  }
}

export default   withRouter(Aside_bar)
