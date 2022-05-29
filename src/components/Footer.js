import React, { Component } from 'react'
import logo  from './logo.svg'
export class Footer extends Component {
    render() {
        return (
            
                <footer className="footer-bs ">
          <div className="row">
            <div className="col-md-3 footer-brand animated fadeInLeft">
              <img src={logo} className="w-50" alt=""/>
              <p>Suspendisse hendrerit tellus laoreet luctus pharetra. Aliquam porttitor vitae orci nec ultricies. Curabitur vehicula, libero eget faucibus faucibus, purus erat eleifend enim, porta pellentesque ex mi ut sem.</p>
              <p>© 2020 BestMenu, All rights reserved</p>
            </div>
            <div className="col-md-4 footer-nav animated fadeInUp">
          
              <div className="col-md-6">
                {/* <ul className="list">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Contacts</a></li>
                  <li><a href="#">Terms &amp; Condition</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                </ul> */}
                <p>Suspendisse hendrerit tellus laoreet luctus pharetra. Aliquam porttitor vitae orci nec ultricies. Curabitur vehicula, libero eget faucibus faucibus, purus erat eleifend enim, porta pellentesque ex mi ut sem.</p>
           
              </div>
            </div>
            <div className="col-md-2 footer-social animated fadeInDown">
              <h4>Follow Us</h4>
              <ul>
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">Instagram</a></li>
                <li><a href="#">RSS</a></li>
              </ul>
            </div>
            <div className="col-md-3 footer-ns animated fadeInRight">
              <h4>Newsletter</h4>
              <p>A rover wearing a fuzzy suit doesn’t alarm the real penguins</p>
              <p>
              </p><div className="input-group">
             
              
              </div>{/* /input-group */}
              <p />
            </div>
          </div>
        </footer>
           
        )
    }
}

export default Footer
