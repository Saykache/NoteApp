import 'package:flutter/material.dart';
import 'package:aplicativo_notas/screens/home_screen.dart';
// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
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
    return const MaterialApp(
      home: HomeScreen());
  }
}

/*
  First of all I'm going to create a new fire base project
  Let's add a couple of depedecies
  Open your terminal and follow me
  Okey now before I run the app, I have a couple of things to do
  first let's initialize our Flutter app

  And now let's add some stylling property to our app
  Now we can run our app and start coding
  Now it's time to start creating our database

  Okey now let's start coding
  if we want it to work we have to change our security rules in firestore, since we didn't add an authentication system on our app
  follow my steps
 */
