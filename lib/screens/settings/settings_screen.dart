import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'about_screen.dart';
import 'terms_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Settings', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11'),
            ),
            const SizedBox(height: 16),
            const Text(
              'UTD Store',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primaryDark),
            ),
            const SizedBox(height: 4),
            const Text(
              'Rifky Raihan',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textDark),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.accentPeach,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('Pro Member', style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 40),
            _buildSettingsSection(
              context, 
              Icons.person, 
              'Personal Information', 
              const AboutScreen(), // Sementara diarahkan ke About
            ),
            _buildSettingsSection(
              context, 
              Icons.article, 
              'Syarat & Ketentuan', 
              const TermsScreen(),
            ),
            _buildSettingsSection(
              context, 
              Icons.info_outline, 
              'About Qiyam', 
              const AboutScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsSection(BuildContext context, IconData icon, String title, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.textDark),
            const SizedBox(width: 16),
            Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16))),
            const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.textLight),
          ],
        ),
      ),
    );
  }
}