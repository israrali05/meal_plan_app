import 'package:firebase_auth/firebase_auth.dart';
import 'package:meal_plan_app/screens/home_screen.dart';
import 'package:meal_plan_app/screens/login_screen.dart';
import 'package:meal_plan_app/screens/nav_bar_screen.dart';
import 'package:meal_plan_app/utils/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      FirebaseAuth auth = FirebaseAuth.instance;
      auth.authStateChanges().listen((User? user) {
        if (user == null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        } else {
          // User is logged in, perform your desired action here
          // For example, you can navigate to a different screen or load data.
          // Your function to run when the user logs in
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NavBarScreen()),
          );
        }
      });
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Meal Planner \n App",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
