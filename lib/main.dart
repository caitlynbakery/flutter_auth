import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  final _formKey = GlobalKey<FormState>();
  String password;
  String email;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
               print('The password is $value');
               
             }
             return null;
           },
         ),
         ElevatedButton(onPressed: (){
           if(_formKey.currentState.validate()) {
            _formKey.currentState.reset();
            print(email);
            // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
           }
         }, child: Text('Create'))
       ],),),
        ),
    
    );
  }
}
