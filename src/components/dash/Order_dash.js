import React, { Component } from 'react';
import {getdashorder} from './Functions_dash';
import{Link , withRouter, Redirect} from 'react-router-dom';
import axios from 'axios';
import { Aside_bar } from './Aside_bar';
import { RiDeleteBin5Line} from 'react-icons/ri';




export class Index_dash extends Component {
    constructor(props){
        super(props)
        this.state ={
            index:[],
            loading:false,
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

getdata(){
  getdashorder().then(res=>{
    this.setState({
    index:res
    })
    console.log(this.state.index)
 })
}

    
  componentDidMount(){

      getdashorder().then(res=>{
       this.setState({
       index:res
       })
       console.log(this.state.index)
       this.setState({
        loading:true
      })
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



componentDidUpdate(){
  this.getdata()
}



    render() {

    //  let num = 0;
    //   this.state.index.forEach(element => {
         
    //        // element.is_added =0;
    //        num += parseFloat(element.cont);
    //    });

    //   // const ajout2 = this.state.index.filter(p => p.cont);
    //   console.log('data delete',num)
    //   // if(this.deleteOrder){
    //   //   setTimeout(this.getdata(),1000000);
    //   // }
    //   let att = 0;
    //   const attente = this.state.index.filter(p => p.is_added==0)

    //   attente.forEach(element => {
         
    //     // element.is_added =0;
    //     att += parseFloat(element.cont);
    // });

   
        return (







<div>

{
            !(localStorage.usertoken &&  localStorage.role==1) ? (
              <Redirect to ="/admin"></Redirect>
            ) :(

<div>


          <div>
                
          <div>
    


    <div className="container-fluid">
    <div className="row">
    
    <Aside_bar data={this.props} />
    
    <main role="main" className="col-md-9">





          <div>
          <div className="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 className="h2">
          <span class="badge badge-success">
            Liste des Commandes 
            </span>
            </h1>
       
            <div className="btn-group mr-2">
            
             
            </div>
         
        
        </div>
        {/* <h2>total : {tot} MAD</h2> */}
        <div className="table-responsive bg-white p-1">
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



            {!(this.state.loading) ? (
 
 <tr>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 <td> <div class="spinner-border text-success" role="status">
   <span class="sr-only">Loading...</span>
 </div>
 </td>
 </tr>
 
 
 ): (<p></p>)}




             
            {this.state.index.map((items,index) => (
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
          
          <td> {items.accept==true  && items.is_added==0  ? (
             <span class="badge badge-pill badge-success">Commande annulé <br/>par le client</span>
               
             
                    ):(
                      <span class="badge badge-pill badge-primary">-------------------</span>  
                     
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

 </div>
            )
          }

     </div>
        )
    }
}

export default Index_dash
