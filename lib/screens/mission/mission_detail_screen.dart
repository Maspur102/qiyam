import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'focus_mode_screen.dart';

class MissionDetailScreen extends StatelessWidget {
  const MissionDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Tahajjud', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
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
                Text('1250 XP', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryDark, fontSize: 12)),
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
            _buildHeroImage(),
            const SizedBox(height: 24),
            _buildRewardBox(),
            const SizedBox(height: 32),
            const Text('Keutamaan Misi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _buildVirtueSection(),
            const SizedBox(height: 32),
            const Text('Panduan Pelaksanaan (2 Rakaat)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _buildStep(1, 'Niat & Takbiratul Ihram', 'Membulatkan tekad dalam hati untuk melaksanakan shalat sunnah Tahajjud 2 rakaat karena Allah Ta\'ala.'),
            _buildStep(2, 'Bacaan Rakaat Pertama', 'Membaca Al-Fatihah dan disunnahkan membaca surah yang agak panjang jika mampu, atau surah Al-Kafirun.'),
            _buildStep(3, 'Bacaan Rakaat Kedua', 'Membaca Al-Fatihah dan surah Al-Ikhlas, kemudian melanjutkan gerakan shalat hingga salam.'),
            _buildStep(4, 'Doa & Refleksi', 'Menutup dengan doa pribadi, memohon ampunan, dan merenungkan tujuan hidup di keheningan malam.'),
            const SizedBox(height: 32),
            _buildQuoteBox(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FocusModeScreen()),
            );
          },
          icon: const Icon(Icons.play_arrow),
          label: const Text('Mulai Misi Sekarang', style: TextStyle(fontSize: 16)),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryDark,
            foregroundColor: AppColors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }

  Widget _buildHeroImage() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryDark,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1591461996556-3c0f16790901?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(color: AppColors.accentPeach, borderRadius: BorderRadius.circular(12)),
            child: const Text('MISI SPIRITUAL', style: TextStyle(color: AppColors.white, fontSize: 10, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),
          const Text('Shalat Malam (Tahajjud)', style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildRewardBox() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reward Misi', style: TextStyle(fontSize: 12, color: AppColors.textLight)),
              SizedBox(height: 4),
              Text('+50 XP', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryDark)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Durasi', style: TextStyle(fontSize: 12, color: AppColors.textLight)),
              SizedBox(height: 4),
              Text('15-20 Menit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVirtueSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16),
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: AppColors.primaryDark, width: 3)),
            ),
            child: const Text(
              '"Dan pada sebagian malam hari shalat Tahajjudlah kamu sebagai suatu ibadah tambahan bagimu; mudah-mudahan Tuhan-mu mengangkat kamu ke tempat yang terpuji." (QS. Al-Isra: 79)',
              style: TextStyle(fontStyle: FontStyle.italic, height: 1.5),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Tahajjud adalah disiplin spiritual tertinggi yang membedakan para pencari kedamaian sejati. Dilakukan di sepertiga malam terakhir, saat dunia terlelap, misi ini bertujuan untuk membangun koneksi vertikal yang paling intim antara hamba dan Penciptanya.',
            style: TextStyle(color: AppColors.textLight, height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildStep(int number, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.primaryDark,
            child: Text(number.toString(), style: const TextStyle(color: AppColors.white, fontSize: 12)),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 6),
                Text(desc, style: const TextStyle(color: AppColors.textLight, height: 1.4)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuoteBox() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: AppColors.primaryDark, borderRadius: BorderRadius.circular(16)),
      child: const Center(
        child: Text(
          '"Ketenangan yang kau cari di dunia, sebenarnya sedang menunggumu di sepertiga malam."',
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.white, fontStyle: FontStyle.italic, fontSize: 16, height: 1.5),
        ),
      ),
    );
  }
}