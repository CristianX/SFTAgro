import 'package:flutter/material.dart';
import 'package:stfagro/src/widgets/headers.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderCurvo(),
          _LoginForm()
        ],
      )
    );
  }
}

class _LoginForm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.only( top: MediaQuery.of(context).size.height * 0.63 ),
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only( left: 10 ),
            child: Text('INICIAR SESIÓN', style: TextStyle( color: Color.fromRGBO(42, 193, 126, 1), fontWeight: FontWeight.bold, fontSize: 15)),
          ),
          SizedBox( height: 20 ),
          _CorreoElectronico(),
          SizedBox( height: 10 ),
          _Password(),
          SizedBox( height: 20 ),
          Center(child: _BotonContinuar()),
          SizedBox( height: 25 ),
          Center(child: Text('No estas registrado? REGISTRATE', style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10))),
          SizedBox( height: 20 ),
        ],
      ),
    );
  }
}

class _CorreoElectronico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 10 ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Correo Electrónico',
          // helperText: 'CorreoElectrónico',
          suffixIcon: Icon(Icons.alternate_email),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          )
        ),
        
      ),
    );
  }
}

class _Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 10 ),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          suffixIcon: Icon(Icons.lock_open_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          )
        ),
        
      ),
    );
  }
}

class _BotonContinuar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 80, vertical: 15 ),
        child: Text( 'Continuar' ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 20,
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      onPressed: (){},
    );
  }
}