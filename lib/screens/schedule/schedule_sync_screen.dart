import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class ScheduleSyncScreen extends StatelessWidget {
  const ScheduleSyncScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Prayer Times Sync', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textDark),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLocationHeader(),
            const SizedBox(height: 24),
            const Text(
              'Automated focus integration for your spiritual schedule. Qiyam will auto-lock distractions 5 minutes before each prayer.',
              style: TextStyle(color: AppColors.textLight, height: 1.5),
            ),
            const SizedBox(height: 24),
            _buildPrayerCard('Fajr', '05:12', Icons.wb_twilight, true, true),
            _buildPrayerCard('Dhuhr', '13:10', Icons.wb_sunny, true, true, isNext: true),
            _buildPrayerCard('Asr', '16:48', Icons.wb_cloudy, true, false),
            _buildPrayerCard('Maghrib', '19:42', Icons.nights_stay, true, true),
            _buildPrayerCard('Isha', '21:15', Icons.nightlight_round, true, true),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        children: [
          Icon(Icons.location_on, color: AppColors.primaryDark),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CURRENT SYNC', style: TextStyle(fontSize: 10, color: AppColors.textLight)),
                Text('Bandung, Indonesia', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ],
            ),
          ),
          Icon(Icons.edit, size: 16, color: AppColors.textLight),
        ],
      ),
    );
  }

  Widget _buildPrayerCard(String title, String time, IconData icon, bool notifEnabled, bool lockEnabled, {bool isNext = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isNext ? Colors.teal.withOpacity(0.1) : AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: isNext ? Border.all(color: Colors.teal.withOpacity(0.3), width: 1) : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              Icon(icon, color: AppColors.textDark),
            ],
          ),
          const SizedBox(height: 4),
          Text(time, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notifications', style: TextStyle(color: AppColors.textLight)),
              Switch(
                value: notifEnabled,
                onChanged: (val) {},
                activeColor: AppColors.primaryDark,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Auto-Lock Focus', style: TextStyle(color: AppColors.textLight)),
              Switch(
                value: lockEnabled,
                onChanged: (val) {},
                activeColor: AppColors.primaryDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}