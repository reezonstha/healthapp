import 'package:flutter/material.dart';
import 'package:shambala/home.dart';
import 'package:shambala/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeObscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                        'assets/logo.png',
                        scale: 3,
                      )),

                  const SizedBox(
                    height: 30,
                  ),

                  const Text(
                    'Log In',
                    style: TextStyle(fontSize: 30),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //textfield
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(
                            color: Colors.blue), // Border color
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    controller: passwordController,
                    obscureText: changeObscureText,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              changeObscureText = !changeObscureText;
                            });
                          },
                          child: const Icon(Icons.remove_red_eye)),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(
                            color: Colors.blue), // Border color
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue, // Background color of the Container
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            // Within the `FirstRoute` widget
                              onPressed: () {
                                if (emailController.text ==
                                    'reezstha1@gmail.com' &&
                                    passwordController.text == 'rijan') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return HomePage(emailController.text);
                                      },
                                    ),
                                  );
                                } else {
                                  final snackBar = SnackBar(
                                    backgroundColor: Colors.red,
                                    content: const Text(
                                      'Email and Password is incorrect!',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      textColor: Colors.white,
                                      onPressed: () {
                                        // Some code to undo the change.
                                      },
                                    ),
                                  );

                                  // Find the ScaffoldMessenger in the widget tree
                                  // and use it to show a SnackBar.
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              },
                              child: const Text("Log In",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18))),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                          style: TextStyle(fontSize: 18)),
                      TextButton(
                        // Within the `FirstRoute` widget
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp(
                                      emailController.text,
                                      passwordController.text)),
                            );
                          },
                          child: const Text("Sign Up",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 18))),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}