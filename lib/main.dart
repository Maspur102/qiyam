import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/theme/app_colors.dart';
// Ubah import ini ke splash screen
import 'screens/onboarding/splash_screen.dart'; 

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const QiyamApp());
}

class QiyamApp extends StatelessWidget {
  const QiyamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qiyam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryDark,
          primary: AppColors.primaryDark,
          background: AppColors.background,
        ),
        fontFamily: 'Roboto', 
        useMaterial3: true,
      ),
      // Ubah dari HomeScreen() menjadi SplashScreen()
      home: const SplashScreen(),
    );
  }
}