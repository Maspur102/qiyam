import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class QiyamLockScreen extends StatelessWidget {
  const QiyamLockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white.withOpacity(0.1)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.warning_amber_rounded, color: Colors.white70, size: 16),
                      SizedBox(width: 8),
                      Text('BUKA DARURAT', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, letterSpacing: 1)),
                      SizedBox(width: 12),
                      Text('-50 XP', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 1),
              const Text('SESI QIYAM AKTIF', style: TextStyle(color: Colors.white54, letterSpacing: 3, fontSize: 12)),
              const SizedBox(height: 16),
              const Text(
                '11:38',
                style: TextStyle(fontSize: 96, fontWeight: FontWeight.bold, color: Colors.white, height: 1.0),
              ),
              const SizedBox(height: 16),
              const Text(
                'Waktunya Menghadap\nSang Pencipta',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              const Spacer(flex: 1),
              _buildCountdownCircle(),
              const Spacer(flex: 1),
              const Icon(Icons.format_quote, color: Colors.white54, size: 40),
              const SizedBox(height: 16),
              const Text(
                '"Ketenangan sejati hanya didapat saat hati terhubung sepenuhnya dengan-Nya."',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 16, fontStyle: FontStyle.italic, height: 1.5),
              ),
              const SizedBox(height: 16),
              const Text('AL-INSHIRAH', style: TextStyle(color: Colors.white38, letterSpacing: 2, fontSize: 10)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCountdownCircle() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.teal.withOpacity(0.5), width: 3),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('14:59', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('TERSISA', style: TextStyle(color: Colors.white54, letterSpacing: 2, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}