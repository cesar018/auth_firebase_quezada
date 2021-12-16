import 'package:flutter/material.dart';
class Registration extends StatefulWidget {
  const Registration({ Key? key }) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final formkey = GlobalKey<FormState>();

  final firstnamecontroller = new TextEditingController();
  final secondnamecontroller = new TextEditingController();
  final correocontroller = new TextEditingController();
  final passcontroller = new TextEditingController();
  final confirmpasscontroller = new TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    final firstnamefield = TextFormField(
      autofocus: false,
      controller: firstnamecontroller,
      keyboardType: TextInputType.name,
      onSaved: (value)
      {
        firstnamecontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

     final secondnamefield= TextFormField(
      autofocus: false,
      controller: secondnamecontroller,
      keyboardType: TextInputType.name,
      onSaved: (value)
      {
        secondnamecontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Second Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

    final correofield= TextFormField(
      autofocus: false,
      controller: correocontroller,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        correocontroller.text = value!;
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

    final passfield= TextFormField(
      autofocus: false,
      controller: passcontroller,
      obscureText: true,
      onSaved: (value)
      {
        passcontroller.text = value!;
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

    final confirmpassfield= TextFormField(
      autofocus: false,
      controller: confirmpasscontroller,
      obscureText: true,
      onSaved: (value)
      {
        confirmpasscontroller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

    final registerbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text("Register", textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
      ),

    );
  return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
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
                      firstnamefield,
                      SizedBox(height: 20), 
                      secondnamefield,
                      SizedBox(height: 20),
                      correofield,
                      SizedBox(height: 20),
                      passfield,
                      SizedBox(height: 20),
                      confirmpassfield,
                      SizedBox(height: 20),
                      registerbutton,
                      SizedBox(height: 15),
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