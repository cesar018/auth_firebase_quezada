import 'package:flutter/material.dart';
import 'package:parcial_moviles_quezada/login.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome"), centerTitle: true,),
      body: Center(child: Padding(padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 180,
          child: Image.asset("assets/shopping.jpg", fit:BoxFit.contain),
          ),
          Text("Welcome to Store", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
          ),
          SizedBox(height: 10,),
          Text("Name",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500,
          )),
          Text("Email",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500,
          )),
          SizedBox(height: 15,),
          ActionChip(label: Text("Logout"), onPressed: (){
            Navigator.push(context,
                               MaterialPageRoute(
                                 builder: (context) => 
                              Login()));
          }), 
        ], 
      ),
      ),
      ),
    );
  }
}