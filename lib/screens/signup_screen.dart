
import 'package:meal_plan_app/screens/nav_bar_screen.dart';
import 'package:meal_plan_app/utils/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cpassController = TextEditingController();

  void checkValues() {
    String email = emailController.text.trim();
    String pass = passController.text.trim();
    String cpass = cpassController.text.trim();
    if (email.isEmpty || pass.isEmpty || cpass.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all the fields"),
        ),
      );
    } else if (pass != cpass) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Password is Not Match!"),
      ));
    } else {
      sigUp(email, pass);
    }
  }

  void sigUp(String email, String pass) async {
    UserCredential? credential;

    try {
      credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Account Created Successfully"),
      ));
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavBarScreen())
            );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.code.toString())),
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
                'SignUp Recipe Planner App',
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
                height: 10,
              ),
              TextField(
                controller: cpassController,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: "Confirm Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              CupertinoButton(
                  color: Colors.black,
                  onPressed: () {
                    checkValues();
                  },
                  child: const Text("Sign Up")),
            ]),
          ),
        ),
      )),
      bottomNavigationBar: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Already Have an Account",
            style: TextStyle(fontSize: 16),
          ),
          CupertinoButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 16),
              ))
        ]),
      ),
    );
  }
}