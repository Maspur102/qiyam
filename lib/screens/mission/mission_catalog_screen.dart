import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'mission_detail_screen.dart';

class MissionCatalogScreen extends StatelessWidget {
  const MissionCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Katalog Misi', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
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
            _buildSearchBar(),
            const SizedBox(height: 24),
            _buildCategoriesGrid(),
            const SizedBox(height: 32),
            const Text('Misi Populer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _buildPopularMissionTile(context, 'Tahajjud', 'Lakukan 2 rakaat di sepertiga malam', '+50 XP', Icons.nights_stay),
            _buildPopularMissionTile(context, 'Sedekah Subuh', 'Infaq terbaik di waktu fajar', '+30 XP', Icons.monetization_on),
            _buildPopularMissionTile(context, 'Tilawah Harian', 'Membaca Al-Qur\'an 1 Ruku\'', '+40 XP', Icons.menu_book),
            const SizedBox(height: 32),
            _buildWeeklyChallengeCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: AppColors.textLight),
          hintText: 'Cari misi kebaikan...',
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildCategoriesGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.2,
      children: [
        _categoryBox(Icons.menu_book, 'Al-Qur\'an'),
        _categoryBox(Icons.auto_awesome, 'Dzikir & Doa'),
        _categoryBox(Icons.person, 'Shalat Sunnah'),
        _categoryBox(Icons.favorite, 'Kebaikan Sosial'),
      ],
    );
  }

  Widget _categoryBox(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.textDark, size: 32),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildPopularMissionTile(BuildContext context, String title, String subtitle, String xp, IconData icon) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MissionDetailScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: AppColors.textDark),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(color: AppColors.textLight, fontSize: 12)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.primaryDark,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(xp, style: const TextStyle(color: AppColors.white, fontWeight: FontWeight.bold, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeeklyChallengeCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primaryDark,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text('Misi Pekanan', style: TextStyle(color: AppColors.white, fontSize: 12)),
          ),
          const SizedBox(height: 16),
          const Text('Ramadhan Vibes', style: TextStyle(color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'Selesaikan semua misi pekan ini untuk mendapatkan badge eksklusif "An-Nuur".',
            style: TextStyle(color: AppColors.white, height: 1.5),
          ),
        ],
      ),
    );
  }
}