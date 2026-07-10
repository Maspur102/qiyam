import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
// Tambahkan import ini agar bisa pindah ke halaman onboarding
import 'onboarding_screen.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulasi loading 3 detik, lalu pindah ke OnboardingScreen
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const OnboardingScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: AppColors.primaryDark,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 40,
                  height: 60,
                  color: AppColors.white, 
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Qiyam',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.primaryDark),
            ),
            const SizedBox(height: 16),
            const Text(
              'Elevate Your Focus, Enrich Your Soul',
              style: TextStyle(color: AppColors.textDark, fontSize: 14),
            ),
            const Spacer(flex: 2),
            SizedBox(
              width: 150,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey.withOpacity(0.3),
                valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primaryDark),
                minHeight: 2,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'INITIALIZING PRACTICE',
              style: TextStyle(color: AppColors.textLight, fontSize: 10, letterSpacing: 2),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}