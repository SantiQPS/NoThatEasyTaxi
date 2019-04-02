import React, { Component } from "react";



class formularioIngresar extends Component{

    render(){

        return(
            <div className = "FormCenter">

              <form className="Formfields" onSubmit={this.handleSubmit}>
                <div className = "FormField">
                    <lable className ="FormField__Label" htmlFor="email">Correo Electrónico</lable>
                    <input type="email" id="email" className="FormField__Input" placeholder="Escriba su correo electrónico" name="email" />
                </div>

              <div className = "FormField">
                <lable className ="FormField__Label" htmlFor="contraseña">Contraseña</lable>
                <input type="password" id="contraseña" className="FormField__Input" placeholder="contraseña" name="contraseña" />
              </div>

              

              <div className ="FormField">
                <button className ="FormField__Button mr-20">Ingresar</button><a href="#"
                className="FormField__Link"> Crear cuenta</a>
              </div>
            </form>
          
          </div>
        );
    }

   
}
export default formularioIngresar;