import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Stats', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('XP GROWTH', style: TextStyle(color: AppColors.textLight, letterSpacing: 1.5, fontSize: 12)),
            const SizedBox(height: 8),
            const Row(
              children: [
                Text('2,450 XP', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.textDark)),
                SizedBox(width: 12),
                Text('+12% vs last week', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 40),
            const Text('Spiritual Milestones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _buildMilestoneCard('7-Day Streak', 'The Consistent Worshipper', 'Unlocked 2 hours ago', Icons.military_tech),
            _buildMilestoneCard('50 Pages', 'Light of Quran', 'Achieved this week', Icons.menu_book),
          ],
        ),
      ),
    );
  }

  Widget _buildMilestoneCard(String title, String subtitle, String date, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primaryDark.withOpacity(0.1),
            child: Icon(icon, color: AppColors.primaryDark),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 12, color: AppColors.textLight)),
                Text(subtitle, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(date, style: const TextStyle(fontSize: 12, color: AppColors.textLight)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}