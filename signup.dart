
import 'package:flutter/material.dart';




// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var email;


  SignUp(String this.email, String password, {super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30, vertical:8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text("Sign Up", style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),),

                const SizedBox(height: 50,),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_circle),
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(color: Colors.blue), // Border color
                    ),
                  ),
                ),


                const SizedBox(height: 20,),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(color: Colors.blue), // Border color
                    ),
                  ),
                ),


                const SizedBox(height: 20,),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    labelText: 'Phone No',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(color: Colors.blue), // Border color
                    ),
                  ),
                ),


                const SizedBox(height: 20,),


                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(color: Colors.blue), // Border color
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(color: Colors.blue), // Border color
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Background color of the Container
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                  ),
                ),


                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?', style: TextStyle(fontSize: 18)),
                    TextButton(
                      // Within the `FirstRoute` widget
                        onPressed: () {
                          Navigator.pop(context);
                        }, child: const Text("Log In", style: TextStyle(color: Colors.blue, fontSize: 18) )
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}