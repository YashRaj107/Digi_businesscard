import 'package:flutter/material.dart';
import 'package:instagram/Pages/BusinessCardHolder.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _pass = TextEditingController();

  final TextEditingController _user = TextEditingController();

  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(decoration: const BoxDecoration(color: Colors.pinkAccent),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20,50,20,10),
                      child: Image(image: AssetImage("assets/images/driving-license.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      child: SingleChildScrollView(
                        child: TextField(
                          controller: _user,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail_outline_outlined) ,
                              suffix:  Icon(Icons.alternate_email_outlined),
                              label: Text('Email'),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      child: SingleChildScrollView(
                        child: TextField(
                          controller: _pass,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            suffix: GestureDetector(
                              onLongPress: () {
                                setState(() {
                                  _passwordVisible = true;
                                });
                              },
                              onLongPressUp: () {
                                setState(() {
                                  _passwordVisible = false;
                                });
                              },
                              child: Icon(
                                  _passwordVisible ? Icons.visibility : Icons.visibility_off),
                            ),
                            label: const Text('Password'),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children:const [
                        Text('Forgot Password?'),],),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/CardDetails');
                        },
                        style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                          primary:Colors.greenAccent ,
                          side: BorderSide(color: Colors.black),),
                        child: const Text('Login',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/form1');
                        },
                        style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                          primary:Colors.greenAccent ,
                          side: BorderSide(color: Colors.black),),
                        child: const Text('Create New Account',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
