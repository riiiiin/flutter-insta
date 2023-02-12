import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test/responsive/mobile_screen_layout.dart';
import 'package:test/responsive/responsive_layout_screen.dart';
import 'package:test/responsive/web_screen_layout.dart';
import 'package:test/screens/login_screen.dart';
import 'package:test/screens/sign_up_screen.dart';
import 'package:test/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: 'AIzaSyD1a97svMyc00kOuWAKYCKT4TwB9GOPx3k', appId: '1:549893028199:web:9cdbf3960cd7ce496c17c2', messagingSenderId: '549893028199', projectId: 'instagram-tut-b553e', storageBucket: 'instagram-tut-b553e.appspot.com')
    );

  } else {
    await Firebase.initializeApp();

  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ReponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),)
      home: LoginScreen()
    );
  }
}

