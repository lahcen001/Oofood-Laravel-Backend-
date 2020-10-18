import React, { Component } from 'react'

import axios from 'axios';
import { Aside_bar } from './Aside_bar';
import { Link } from 'react-router-dom';
import {getdashorder} from './Functions_dash';
import { RiDeleteBin5Line} from 'react-icons/ri';
export class Clientinfo extends Component {


    constructor(props){
        super(props)
        this.state ={
            index:[],
            name:'',
            email:'',
            ville:'',
            adresse:'',
            phone:''
        }
    }
   
    

    deleteOrder = (id)=>{

      axios.delete(`http://admin.lahcen-elhanchir.com/api/destroy/${id}`).then(res=>{
    
         
   })
   .catch(err=>{
       console.log(err)
   })


   
 getdashorder().then(res=>{
  this.setState({
  index:res
  })
  console.log(this.state.index)

  
})

   
getdashorder().then(res=>{
  this.setState({
  index:res
  })
  console.log(this.state.index)

  
})

    }




 

  

toggleCart = (item) => {

    
  if (item.is_added==1){

    fetch('http://admin.lahcen-elhanchir.com/api/removecat/' + item.id_order, {
      method: 'PUT',
      body: JSON.stringify(item),
      headers : { 
          'Content-Type': 'application/json',
          'Accept': 'application/json'
      }
  });

  

  getdashorder().then(res=>{
    this.setState({
    index:res
    })
    console.log(this.state.index)

    
 })


 getdashorder().then(res=>{
  this.setState({
  index:res
  })
  console.log(this.state.index)

  
})

 console.log(item.id)

  }
       
  else{

    
    fetch('http://admin.lahcen-elhanchir.com/api/addcat/' + item.id_order, {
      method: 'PUT',
      body: JSON.stringify(item),
      headers : { 
          'Content-Type': 'application/json',
          'Accept': 'application/json'
      }

  
  });
  

  getdashorder().then(res=>{
    this.setState({
    index:res
    })
    console.log(this.state.index)
 })
 getdashorder().then(res=>{
  this.setState({
  index:res
  })
  console.log(this.state.index)
})

 console.log(item.id)

 
  }
  
}







    
    componentDidMount(){
   const id=  this.props.match.params.id;
   getdashorder().then(res=>{
    this.setState({
    index:res
    })
    console.log(this.state.index)
 })
        
   
        axios.get(`http://admin.lahcen-elhanchir.com/api/user/${id}`).then(res=>{
    
           
             this.setState({
             
      name:res.data.name,
     email:res.data.email,
     ville:res.data.ville,
     adresse:res.data.adresse,
     phone:res.data.phone,

        
     
         })
        })
        .catch(err=>{
            console.log(err)
        })
     
            
    
      }
  
    
  render() {

    const client= this.state.index.filter(p => p.id== this.props.match.params.id);



    return (

      <div>
      
      <div>
{/* <nav className="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
<a className="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">
Company name
</a>
<button
className="navbar-toggler position-absolute d-md-none collapsed"
type="button"
data-toggle="collapse"
data-target="#sidebarMenu"
aria-controls="sidebarMenu"
aria-expanded="false"
aria-label="Toggle navigation"
>
<span className="navbar-toggler-icon" />
</button>
<input
className="form-control form-control-dark w-100"
type="text"
placeholder="Search"
aria-label="Search"
/>
<ul className="navbar-nav px-3">
<li className="nav-item text-nowrap">
<a className="nav-link" href="#">
Sign out
</a>
</li>
</ul>
</nav> */}
<div className="container-fluid">
<div className="row">

<Aside_bar  data={this.props} />

<main role="main" className="col-md-9">


        <div>
        <div className="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      

        <div class="card table col-md-12 shadow lg rounded">
  <div class="card-body">
 

        <table className="table col-md-12 ">

<tbody>

<tr>
<td><h4 className="text-success">Nom et Prenom </h4></td>
<td><h4>{this.state.name}</h4></td>
</tr>
<tr>
<td><h4  className="text-success">Email </h4> </td>
<td><h4> {this.state.email}</h4> </td>
</tr>
<tr>
<td><h4  className="text-success">Telephone</h4> </td>
<td><h4> <span class="badge badge-warning"> {this.state.phone} </span></h4> </td>
</tr>
<tr>
<td><h4  className="text-success">Ville </h4> </td>
<td><h4> {this.state.ville}</h4> </td>
</tr>
<tr>
<td><h4  className="text-success">Adresse </h4> </td>
<td><h4> {this.state.adresse}</h4> </td>
</tr>



</tbody>
</table>

</div>
</div>

        <div className="btn-toolbar mb-2 mb-md-0">
          <div className="btn-group mr-2">
          
         
          </div>
       
        </div>
      </div>
     
      <div className="table-responsive bg-white p-1">
      <div className="justify-content-center ml-5 mt-4 mb-4">

    
<h3> <span class="badge badge-info"> Tous Les commandes - {this.state.name} </span></h3>
</div>
      <table className="table table-striped table-sm">
            <thead>
              <tr>
           
                <th>Client</th>
                <th>Commande </th>
                <th>Quantité</th>
                <th>Prix</th>
                
                <th>date</th>
                <th>Image</th>
                <th>Status</th>
                <th>Status</th>
                <th>Supprimer</th>
                
             
             
              </tr>
            </thead>
         
            <tbody>
             
            {client.map((items,index) => (
              <tr key={index}>
             
            
                <td>
                <Link className=" mb-1 bg-success text-white rounded"  to={'/client/'+items.id} >
                  {items.name}
                  </Link>
                  </td>

                  <td><strong>{items.order_name}</strong></td>
                <td><strong>{items.cont}</strong></td>
                <td><strong>{(items.price)*(items.cont)}  MAD</strong></td>
                <td><strong>{items.date}</strong> </td>
                <td className="">
			      <img src={'http://admin.lahcen-elhanchir.com/storage/'+items.imageURL} className="img-fluid img-thumbnail" alt="Sheep"  width="100" height="100"/>
		      </td>
               
                
                <td>
                <button type="button" onClick={() => this.toggleCart(items)}  className="btn btn-primary">
          {items.is_added==1 ? (
      <span>accepté</span>                 
                    ):(
                    <span> en attente</span>   
                    )}
          </button>
          </td>
          
          <td> {items.accept==true ? (
                <span class="badge badge-pill badge-success">Commande annulé <br/>par le client</span>
                    ):(
      
      <span class="badge badge-pill badge-primary"></span>   
                    )
                    
                    
                    }
                    
                    
                    
                    </td>
          <td>
          <button type="button" onClick={() => this.deleteOrder(items.id_order)}  className="btn btn-danger"><RiDeleteBin5Line/></button>
          </td>

              </tr>
           )) }  

            </tbody>
            
             
           
          </table>



      </div>
      </div>



</main>
   

</div>
</div>
</div>

            
</div>


    )
  }
}

export default Clientinfo
