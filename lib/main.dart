
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meal_plan_app/providers/favourite_provider.dart';

import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'providers/plan_provider.dart';
import 'screens/splash_screen.dart';

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ChangeNotifierProvider(create: (_) => CardProvider()),
      ],
      child: MaterialApp(
        title: 'Recipe App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
