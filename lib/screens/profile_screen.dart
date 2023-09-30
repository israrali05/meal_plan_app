import 'package:firebase_auth/firebase_auth.dart';
import 'package:meal_plan_app/screens/login_screen.dart';
import 'package:meal_plan_app/utils/consts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Account Logout Successfully"),
      ));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.code.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    logout();
                  },
                  child: const Text("Logout")),
            )
          ]),
    );
  }
}
