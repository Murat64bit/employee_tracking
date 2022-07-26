import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personel_takip/responsive/main_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyD9UZdPcse2fObLewXu8xilVLIR7mslp6E',
        appId: '1:892965098456:web:521386e14758173d2158ad',
        messagingSenderId: '892965098456',
        projectId: 'flutter-personal-tracking',
        storageBucket: 'flutter-personal-tracking.appspot.com',
      ),
    );
  }else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personel Takip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}