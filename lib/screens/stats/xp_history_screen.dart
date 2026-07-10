import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class XpHistoryScreen extends StatelessWidget {
  const XpHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Riwayat XP', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textDark),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16, top: 12, bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primaryDark.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Icon(Icons.stars, color: AppColors.primaryDark, size: 14),
                SizedBox(width: 4),
                Text('1.250 XP', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryDark, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTotalBalanceCard(),
            const SizedBox(height: 24),
            _buildFilterChips(),
            const SizedBox(height: 32),
            const Text('HARI INI', style: TextStyle(color: AppColors.textLight, letterSpacing: 1.5, fontSize: 12)),
            const SizedBox(height: 16),
            _buildHistoryTile('Shalat Tahajjud Tepat Waktu', '04:15 • Misi Harian', '+50 XP', true, Icons.check_circle_outline),
            _buildHistoryTile('Mode Fokus Darurat', '10:30 • Penggunaan Fitur', '-20 XP', false, Icons.bolt),
            const SizedBox(height: 24),
            const Text('KEMARIN, 23 OKT', style: TextStyle(color: AppColors.textLight, letterSpacing: 1.5, fontSize: 12)),
            const SizedBox(height: 16),
            _buildHistoryTile('Bonus Beruntun 7 Hari', '21:00 • Achievement', '+150 XP', true, Icons.emoji_events),
            _buildHistoryTile('Membaca Al-Waqi\'ah', '19:30 • Misi Rutin', '+30 XP', true, Icons.menu_book),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalBalanceCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primaryDark,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Total Tabungan Kebajikan', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 8),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('1.250', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold, height: 1)),
              SizedBox(width: 8),
              Text('XP', style: TextStyle(color: Colors.white70, fontSize: 16, padding: EdgeInsets.only(bottom: 6))),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Pemasukan Bulan Ini', style: TextStyle(color: Colors.white54, fontSize: 12)),
                  const SizedBox(height: 4),
                  Text('+450 XP', style: TextStyle(color: Colors.greenAccent.shade200, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Pengeluaran Bulan Ini', style: TextStyle(color: Colors.white54, fontSize: 12)),
                  const SizedBox(height: 4),
                  const Text('-50 XP', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _chip('Semua', true),
          const SizedBox(width: 12),
          _chip('Misi Selesai', false),
          const SizedBox(width: 12),
          _chip('Fitur Darurat', false),
        ],
      ),
    );
  }

  Widget _chip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryDark : AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: isSelected ? null : Border.all(color: Colors.grey.withOpacity(0.3)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : AppColors.textDark,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildHistoryTile(String title, String subtitle, String xp, bool isIncome, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isIncome ? AppColors.primaryDark.withOpacity(0.05) : Colors.red.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: isIncome ? AppColors.primaryDark : Colors.red),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: AppColors.textLight, fontSize: 12)),
              ],
            ),
          ),
          Text(
            xp,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: isIncome ? AppColors.primaryDark : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}