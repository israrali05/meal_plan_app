import 'package:meal_plan_app/screens/nav_bar_screen.dart';
import 'package:meal_plan_app/screens/signup_screen.dart';
import 'package:meal_plan_app/utils/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void checkValues() {
    String email = emailController.text.trim();
    String pass = passController.text.trim();
    if (email.isEmpty || pass.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all the fields"),
        ),
      );
    } else {
      logIn(email, pass);
    }
  }

  void logIn(String email, String password) async {
    try {
       await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      const SnackBar(
        content: Text("Login SuccessFully!"),
        
        
      );
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavBarScreen())
            );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.code.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                'Meal Planer App',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "Enter Email"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Enter Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              CupertinoButton(
                  color: Colors.black,
                  onPressed: () {
                    checkValues();
                  },
                  child: const Text("login")),
            ]),
          ),
        ),
      )),
      bottomNavigationBar: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Don't Have an Account",
            style: TextStyle(fontSize: 16),
          ),
          CupertinoButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }));
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 16),
              ))
        ]),
      ),
    );
  }
}
