import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class InsufficientXpScreen extends StatelessWidget {
  const InsufficientXpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: const Row(
          children: [
            SizedBox(width: 16),
            CircleAvatar(radius: 14, backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11')),
            SizedBox(width: 8),
            Text('Qiyam', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
          ],
        ),
        leadingWidth: 100,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16, top: 12, bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Icon(Icons.stars, color: Colors.red, size: 14),
                SizedBox(width: 4),
                Text('1250 XP', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.red.withOpacity(0.1), shape: BoxShape.circle),
              child: const Icon(Icons.warning_amber_rounded, color: Colors.red, size: 32),
            ),
            const SizedBox(height: 24),
            const Text(
              'Tabungan Kebajikan\nInsufficient',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.textDark, height: 1.2),
            ),
            const SizedBox(height: 16),
            const Text(
              'You are attempting to access an emergency feature, but your current spiritual balance (XP) is below the required threshold. Consider this a moment to recharge your intentions.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textLight, height: 1.5),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(child: _buildInfoCard('REQUIRED XP', '2,500', AppColors.primaryDark, Icons.toll)),
                const SizedBox(width: 16),
                Expanded(child: _buildInfoCard('DEFICIT', '-1,250', Colors.red, Icons.trending_down)),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.explore_outlined),
                label: const Text('Mission Catalog'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryDark,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: AppColors.textDark,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('Return to Safety'),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.teal.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
              child: const Text(
                '"The smallest deed consistently done is better than the largest done sporadically."',
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic, color: AppColors.primaryDark, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 10, color: AppColors.textLight, letterSpacing: 1)),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(value, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color)),
              const SizedBox(width: 4),
              Icon(icon, color: color, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}