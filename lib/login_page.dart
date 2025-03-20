import 'package:flutter/material.dart';
import 'package:login/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Login page'),
        ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(),
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Email'),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'Masukan email anda';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                   vertical: 8.0,
                )
                ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Email'),
                ),
                validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'Masukan password anda';
                    }

                    return null;
                  },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                  onPressed: () {
                  debugPrint('Email: ${emailcontroller.text}');
                  debugPrint('Password: ${passwordController.text}');
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DashboardPage(email: emailcontroller.text,
                      )));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content :Text('Silahkan lengkapi form'),
                      ),
                      );
                  }
                  },
                  child: Text('Login'),
                  )
                )
                
                )
            ],
          ),
        )
        ) 
      );
  }
}