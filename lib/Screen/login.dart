import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart';
import 'package:logger/logger.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var log = Logger();

  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffAD3E32),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(children: [
          Image.asset(
            "images/BBQ_login.gif",
            width: 300,
            height: 300,
          ),

          SizedBox(
            height: 10,
          ),

          Form(
            key: formkey,
            child: Column(
              children: [
                //Email Address  Input
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 219, 218, 218)
                            .withOpacity(0.5)),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          hintText: "Email Adress",
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Icon(Icons.mail, color: Colors.white),
                          ),
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.white)),
                    )),

                SizedBox(
                  height: 10,
                ),

                //Password Input
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 219, 218, 218)
                            .withOpacity(0.5)),
                    child: TextFormField(
                      controller: passwordController,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Icon(Icons.key, color: Colors.white),
                          ),
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.white)),
                    )),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //Login button
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text("Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 94, 93, 93),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          //Create New Account?   Button
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
            child: Text("Create New Account? ",
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),

          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
