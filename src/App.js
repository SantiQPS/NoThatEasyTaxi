import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Link} from 'react-router-dom';
import formularioRegistrar from "./pages/formularioRegistrar";
import formularioIngresar from "./pages/formularioIngresar";
import './App.css';

class App extends Component {
  render() {
    return (
      <Router>
      <div className="App">
        <div className = "App__Form"></div>


        <div className = "App__Aside">
          <div className ="PageSwitcher">
            <a href ="#" className ="PageSwitcher__Item">Ingresar</a>
            <a href ="#" className ="PageSwitcher__Item PageSwitcher__Item--Active">Registrarse</a>
          </div>


          <div className ="FormTitle">
            <Link to="/ingresar" className ="FormTitle__Link">Ingresar</Link> or <Link to="/"
            className="FormTitle__Link FormTitle__Link--Active">Registrarse</Link>
          </div>

          <Route exact path="/" component={formularioRegistrar}>
          </Route>
          <Route path= "/ingresar" component= {formularioIngresar}>
          </Route>


        </div>
      </div>
      </Router>
    );
  }
}

export default App;
