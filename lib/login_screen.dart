import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class LoginScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
      String password;
  String email;

    return Scaffold(
      appBar: AppBar(
        title: Text("Auth Practice"),
      ),
     body: Form(key: _formKey, child: Column(children: [
       
       TextFormField(
         decoration: InputDecoration(labelText: 'E-mail'),
         validator: (value) {
           if(value.isEmpty) {
             return 'Please enter some text';
           }
           else {
             email = value;
           }
           return null;
         }
       ),
       TextFormField(
         decoration: InputDecoration(labelText: 'Password'),
         validator: (value) {
           if(value.isEmpty) {
             return 'Please enter some text';
           }
           else {
            password = value;
             
           }
           return null;
         },
       ),
       ElevatedButton(onPressed: () async{
         if(_formKey.currentState.validate()) {
          
          var url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyB78Z59pVHhJpjjSOaqIVKK9PFvSwqidZk';
          var response = await http.post(url, body: json.encode({'password': password, 'email': email,
            'returnSecureToken': true}));
          print(email);
          print(response.body);
          var idToken = json.decode(response.body)['idToken'];

          if(idToken != null){
            Navigator.pushNamed(context, '/fruits');
          }
          _formKey.currentState.reset();
          // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
         }
       }, child: Text('Login')),
       FlatButton(onPressed: (){
         Navigator.pushNamed(context, '/create');
       }, child: Text('Sign Up'))
     ],),),
      );
  }
}
