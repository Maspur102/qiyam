import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class FocusModeScreen extends StatelessWidget {
  const FocusModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'SESI AKTIF',
                style: TextStyle(letterSpacing: 2, color: AppColors.textLight, fontSize: 12),
              ),
              const SizedBox(height: 12),
              const Text(
                'Murojaah Surat Al-Mulk',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.primaryDark),
              ),
              const SizedBox(height: 60),
              _buildTimerCircle(),
              const SizedBox(height: 60),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '"Hati yang sibuk dengan mengingat-Nya tidak akan menyisakan ruang bagi kegelisahan dunia."',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic, color: AppColors.textLight, fontSize: 16, height: 1.5),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.check_circle_outline),
                  label: const Text('Selesaikan Misi', style: TextStyle(fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryDark,
                    foregroundColor: AppColors.white,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: AppColors.textDark),
                label: const Text('Batal', style: TextStyle(color: AppColors.textDark)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimerCircle() {
    return Container(
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primaryDark, width: 4),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '24:58',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: AppColors.primaryDark),
            ),
            Text(
              'tersisa',
              style: TextStyle(fontSize: 16, color: AppColors.textLight, letterSpacing: 2),
            ),
          ],
        ),
      ),
    );
  }
}