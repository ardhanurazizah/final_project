import 'package:flutter/material.dart';
import 'package:final_project/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Register Page"),
            backgroundColor: const Color(0xFF0000ff),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Registration',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter Username',
                  prefixIcon: new Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {},
                validator: ((value) {
                  return value!.isEmpty ? 'Please Enter Username' : null;
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Email',
                  prefixIcon: new Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {},
                validator: ((value) {
                  return value!.isEmpty ? 'Please Enter Email' : null;
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  prefixIcon: new Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {},
                validator: ((value) {
                  return value!.isEmpty ? 'Please Enter Password' : null;
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Register'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Register'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Login();
                      }),
                    );
                  },
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ));
  }
}
