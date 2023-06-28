import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var log = Logger();

  final formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(children: [
          Image.asset(
            "images/BBQ_register.gif",
            width: 300,
            height: 300,
          ),

          SizedBox(
            height: 10,
          ),

          Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Register",
                    style: TextStyle(
                        color: Color.fromARGB(255, 145, 144, 143),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                //Your Name...   Input
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 187, 186, 186)
                            .withOpacity(0.5)),
                    child: TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          hintText: "Your Name",
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child:
                                Icon(Icons.person_2, color: Color(0xffAD3E32)),
                          ),
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.grey)),
                    )),

                SizedBox(
                  height: 10,
                ),

                //Email Address  Input
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 187, 186, 186)
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
                            child: Icon(Icons.mail, color: Color(0xffAD3E32)),
                          ),
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.grey)),
                    )),

                SizedBox(
                  height: 10,
                ),

                //Password Input
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 187, 186, 186)
                            .withOpacity(0.5)),
                    child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Icon(
                              Icons.key,
                              color: Color(0xffAD3E32),
                            ),
                          ),
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.grey)),
                    )),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //Login button
          MaterialButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffAD3E32),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text("Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          //Create New Account?   Button

          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
