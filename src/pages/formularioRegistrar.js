import React, { Component } from "react";



class formularioRegistrar extends Component{

    render(){

        return(
            <div className = "FormCenter">

              <form className="Formfields" onSubmit={this.handleSubmit}>
                <div className = "FormField">
                  <lable className ="FormField__Label" htmlFor="name">Nombre</lable>
                  <input type="text" id="name" className="FormField__Input" placeholder="ingrese su nombre completo" name="name" />
                </div>

              <div className = "FormField">
                <lable className ="FormField__Label" htmlFor="contraseña">Contraseña</lable>
                <input type="password" id="contraseña" className="FormField__Input" placeholder="contraseña" name="contraseña" />
              </div>

              <div className = "FormField">
                <lable className ="FormField__Label" htmlFor="email">Correo Electrónico</lable>
                <input type="email" id="email" className="FormField__Input" placeholder="Escriba su correo electrónico" name="email" />
              </div>

              <label className ="FormField__CheckboxLabel">
                <input className ="FormField__Checkbox" type="checkbox" name="ha aceptado" /> acepto todos los términos y condiciones
                in <a href="" className="FormField__TermsLink">terms of service</a>
              </label>

              <div className ="FormField">
                <button className ="FormField__Button mr-20">Registrarse</button><a href="#"
                className="FormField__Link"> Ya soy miembro</a>
              </div>
            </form>
          
          </div>
        );
    }

   
}
export default formularioRegistrar;