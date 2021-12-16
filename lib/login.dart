import 'package:flutter/material.dart';
import 'package:parcial_moviles_quezada/home.dart';
import 'package:parcial_moviles_quezada/registration.dart';
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formkey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailcontroller,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        emailcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),
      )
    );

     final passwordField = TextFormField(
      autofocus: false,
      controller: passwordcontroller, 
      obscureText: true,
      onSaved: (value)
      {
        passwordcontroller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),
      )
    );

    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) =>home()));
        },
        child: Text("Login", textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
      ),

    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/shopping.jpg",
                          fit: BoxFit.contain,
                      )),
                      SizedBox(height: 45),
                      emailField,
                      SizedBox(height: 25), 
                      passwordField,
                      SizedBox(height: 35),
                      loginbutton,
                      SizedBox(height: 15),
                      Row(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                               MaterialPageRoute(
                                 builder: (context) => 
                              Registration()));
                            },
                          child: Text(
                            "SignUp", 
                            style: TextStyle(
                              color: Colors.blueAccent,
                               fontWeight: FontWeight.bold,
                              fontSize: 15),
                          ),
                          )
                      ])
                    ]
                  ),
                ),
            ),
            ),
          ),
        ),
      );
  }
}

