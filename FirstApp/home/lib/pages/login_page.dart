import 'package:flutter/material.dart';
import 'package:home/utils/routes.dart';
class LoginPage extends StatefulWidget {
 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
              setState(() {
              changeButton=true;
              });
              await Future.delayed(Duration(seconds: 1));
              await Navigator.pushNamed(context,MyRoutes.homeRoute);
              setState(() {
                changeButton=false;
              });
    }
              }
@override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            
            children: [Image.asset("assets/images/login_image.png",
            fit:BoxFit.cover ,),
            SizedBox(height: 50.0,
            child: Text("Mess Manger",),),
             Text("Welcome $name",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold),),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 32.0),
                child: Column(
                    children: [
                     TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  validator:(value){
                    if(value!.isEmpty){
                    return'Username cannot be empty';
                    }
                    return null;
                  },        
                   onChanged:(value){
                    name = value;
                    setState(() {});
                  }
            ),
            TextFormField(
              obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty){
                    return "Password cannot be empty";
                    }
                    else if (value.length<6){
                    return "Password should be at least 6";
                    }
                    return null;
                  },  
            ),
            SizedBox(height: 40.0,),
            Material(
              color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changeButton?40: 8),
              child: InkWell(onTap: ()=>moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton?40: 120,height:40,
                
                alignment: Alignment.center,
                child:changeButton?Icon(Icons.done,color:Colors.white): Text("Login",
                style:TextStyle(
                  fontSize:16,
                fontWeight: FontWeight.bold
                ),),
                
                
                ),
              ),
            ),
            //ElevatedButton(
             //style: TextButton.styleFrom(minimumSize: Size(120, 40),primary: Colors.black),
             //child:Text('Login'),
              //onPressed:(){Navigator.pushNamed(context, MyRoutes.homeRoute);
              //},
               
               
              
            //),
                    ],
                  ),
              ),
          
           
            ],
          ),
        ),
      ),
    );
  }
}
