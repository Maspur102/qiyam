import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Syarat & Ketentuan', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textDark),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Icon(Icons.print, color: AppColors.textDark),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(color: AppColors.primaryDark, borderRadius: BorderRadius.circular(20)),
              child: const Text('PEMBARUAN TERAKHIR: 24 MEI 2024', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            const Text('Panduan Disiplin &\nEtika Pengguna Qiyam', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: AppColors.primaryDark, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Text(
              'Selamat datang di Qiyam. Dengan menggunakan aplikasi ini, Anda setuju untuk mengikuti standar praktik yang kami tetapkan untuk membangun disiplin spiritual yang berkelanjutan.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textLight, height: 1.5),
            ),
            const SizedBox(height: 32),
            _buildSection('1. Pendahuluan', 'Aplikasi Qiyam dirancang sebagai alat pendukung fokus dan pertumbuhan spiritual. "Ketentuan Layanan" ini mengatur akses Anda ke fitur-fitur kami. Dengan mengunduh, Anda berkomitmen pada perjalanan peningkatan diri yang jujur.', Icons.info_outline),
            const SizedBox(height: 24),
            _buildSection('2. Ekosistem XP & Hadiah Spiritual', 'Qiyam menggunakan sistem Experience Points (XP) untuk melacak konsistensi Anda. Harap diperhatikan:\n\n• XP diperoleh melalui penyelesaian misi harian.\n• Dilarang melakukan manipulasi sistem untuk mendapatkan XP secara ilegal.\n• XP murni merupakan representasi visual dari kedisiplinan Anda.', Icons.stars),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: AppColors.primaryDark, borderRadius: BorderRadius.circular(16)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lock, color: Colors.white, size: 20),
                      SizedBox(width: 12),
                      Text('Fitur Focus', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text('Mode "Deep Focus" kami dirancang untuk membatasi gangguan.', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 16),
                  Text('Tanggung Jawab:', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text('Pengguna bertanggung jawab penuh atas keadaan darurat. Pastikan Anda mengatur whitelist sebelum memulai.', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildSection('4. Privasi Data Spiritual', 'Kami memahami sensitivitas rutinitas ibadah Anda. Data pribadi Anda dienkripsi (End-to-End) dan data statistik selalu bersifat anonim.', Icons.privacy_tip_outlined),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16)),
                    child: const Text('Unduh PDF', style: TextStyle(color: AppColors.textDark)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryDark, padding: const EdgeInsets.symmetric(vertical: 16)),
                    child: const Text('Saya Mengerti', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.redAccent, size: 20),
              const SizedBox(width: 12),
              Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            ],
          ),
          const SizedBox(height: 12),
          Text(content, style: const TextStyle(color: AppColors.textLight, height: 1.5)),
        ],
      ),
    );
  }
}