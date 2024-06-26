import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_admin/views/screen/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid ? const FirebaseOptions(
          apiKey: "AIzaSyABQoWn33iNGmcPngW3MnhNtxy-8JkTKcA",
          authDomain: "test-app-5edb5.firebaseapp.com",
          projectId: "test-app-5edb5",
          storageBucket: "test-app-5edb5.appspot.com",
          messagingSenderId: "1089360954742",
          appId: "1:1089360954742:web:70ef854a7b3addf75ee657",
          measurementId: "G-40R2NNP8CH"
      ): null
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

