import 'package:flutter/material.dart';
import 'package:ejemplo_login/widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget {

  static const String routerName = "Inputs";


  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Gracias a esta variable podremos hacer referencia al formulario y su estado
    // en cualquier momento
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    //En objeto vamos a mantener la información del formulario
    final Map<String, String> formValues ={
      'usuario' : 'profesor',
      'password' : '12345',
      'rol' : 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("FORMULARIO"),
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: [

                  CustomInputField(labelText: "Usuario",hintText: "Nombre de usuario",helperText: "Sólo letras",icon:Icons.access_alarm_outlined ,formProperty: "usuario",formValues: formValues,)
                  ,SizedBox(height: 30),
                  CustomInputField(labelText: "Contraseña",hintText: "Escriba su contraseña",helperText: "Números y letras",icon:Icons.access_alarm_outlined ,formProperty: "password",formValues: formValues)
                  ,SizedBox(height: 30),
                  ElevatedButton(
                    child: SizedBox(
                      width: double.infinity,
                      child:Center(child:Text("LOGIN")) ,
                    ),
                    onPressed: (){

                      // Con esto quitamos el foco del teclado:
                      //FocusScope.of(context).requestFocus( FocusNode());

                      //con validate se disparan las validaciones de los input y me dice si es
                      // válido o no: formKey.currentState!.validate();
                      if ( !formKey.currentState!.validate() ) {
                        print('Formulario no válido');
                        return;
                      }

                      print(formValues);

                    },)

                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
