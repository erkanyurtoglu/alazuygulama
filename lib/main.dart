import 'dart:io';

import 'package:alazuygulama/cart_provider.dart';
import 'package:alazuygulama/splashSyf.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: 'AIzaSyDY4du6zR2ylU_r3D45f5ukZeA-xdYmAHw',
              appId: '1:974713450660:android:745b4927f7849f3cadb631',
              messagingSenderId: '974713450660',
              projectId: 'alazuygulama'))
      : await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        theme:
            ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
