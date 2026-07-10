import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class RestRiseScreen extends StatelessWidget {
  const RestRiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Rest & Rise', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textDark),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              'Align your sleep with the natural rhythms of devotion and vitality.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textLight, height: 1.5),
            ),
            const SizedBox(height: 32),
            _buildSleepCircle(),
            const SizedBox(height: 32),
            _buildRoutineSchedule(),
          ],
        ),
      ),
    );
  }

  Widget _buildSleepCircle() {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: const Column(
        children: [
          Icon(Icons.nights_stay, color: AppColors.textDark, size: 28),
          SizedBox(height: 16),
          Text('5h 30m', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('SLEEP DURATION', style: TextStyle(fontSize: 10, color: AppColors.textLight, letterSpacing: 1)),
          SizedBox(height: 16),
          Icon(Icons.wb_sunny, color: AppColors.primaryDark, size: 28),
        ],
      ),
    );
  }

  Widget _buildRoutineSchedule() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.access_time, size: 18, color: AppColors.textLight),
              SizedBox(width: 8),
              Text('Routine Schedule', style: TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 16),
          _timePickerTile('Bedtime', '10:30 PM', Icons.nights_stay),
          const SizedBox(height: 12),
          _timePickerTile('Tahajjud Wakeup', '04:00 AM', Icons.alarm),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryDark,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Save Routine', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _timePickerTile(String title, String time, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 12, color: AppColors.textLight)),
              const SizedBox(height: 4),
              Text(time, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(icon, color: AppColors.textDark),
        ],
      ),
    );
  }
}