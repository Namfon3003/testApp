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
      backgroundColor: const Color(0xffAD3E32),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(children: [
          Image.asset(
            "images/BBQ_login.gif",
            width: 300,
            height: 300,
          ),

          const SizedBox(
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
                        color: const Color.fromARGB(255, 219, 218, 218)
                            .withOpacity(0.5)),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      decoration: const InputDecoration(
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

                const SizedBox(
                  height: 10,
                ),

                //Password Input
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 219, 218, 218)
                            .withOpacity(0.5)),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      decoration: const InputDecoration(
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

          const SizedBox(
            height: 20,
          ),

          //Login button
          MaterialButton(
            onPressed: () {
              String email = emailController.text;
              String password = passwordController.text;
              if (email.isNotEmpty && password.isNotEmpty) {
                log.d("pass");
                // loginUsers();
              } else {
                valadateFormLogin(context);
                //log.d("not pass");
              }
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const Home()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: const Text("Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 94, 93, 93),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          //Create New Account?   Button
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Register()));
            },
            child: const Text("Create New Account? ",
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),

          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  Future<dynamic> valadateFormLogin(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(
            Icons.warning,
            color: Color(0xffAD3E32),
            size: 25,
          ),
          title: const Center(
              child: Text(
            'เข้าสู่ระบบไม่สำเร็จ!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xffAD3E32),
            ),
          )),
          content: const Text(
            'กรุณากรอก Email และ Password',
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text(
                  "ตกลง",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        );
      },
    );
  }
}
