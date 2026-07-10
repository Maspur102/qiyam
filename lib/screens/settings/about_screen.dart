import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('About', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textDark),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Icon(Icons.help_outline, color: AppColors.textDark),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            _buildLogo(),
            const SizedBox(height: 24),
            const Text(
              'A digital companion for intentional living and spiritual mindfulness. We believe that true focus begins with a disciplined heart.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textLight, height: 1.5),
            ),
            const SizedBox(height: 32),
            _buildInfoCard(Icons.visibility, 'Our Vision', 'To cultivate a world where technology serves as a bridge to spiritual depth, fostering a community of focused practitioners who live with profound intentionality and inner peace.'),
            const SizedBox(height: 16),
            _buildInfoCard(Icons.rocket_launch, 'Our Mission', 'To provide elegant, science-backed tools that reduce cognitive friction and empower users to master their daily spiritual routines through disciplined focus and consistent practice.', isAccent: true),
            const SizedBox(height: 32),
            _buildArchitectsSection(),
            const SizedBox(height: 32),
            _buildConnectSection(),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 32),
            const Text(
              '"Verily, in the remembrance of God do hearts find rest."',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic, color: AppColors.primaryDark, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text('THE HOLY QUR\'AN, 13:28', style: TextStyle(letterSpacing: 2, fontSize: 10, color: AppColors.textLight)),
            const SizedBox(height: 40),
            const Text('© 2024 Qiyam Labs. All Rights Reserved.', style: TextStyle(fontSize: 10, color: AppColors.textLight)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.primaryDark,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(Icons.nightlight_round, color: Colors.white, size: 40),
        ),
        Positioned(
          bottom: -10,
          right: -10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.accentPeach,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text('v1.0.0', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }

  Widget _buildInfoCard(IconData icon, String title, String desc, {bool isAccent = false}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isAccent ? AppColors.accentPeach : AppColors.primaryDark,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(desc, style: const TextStyle(color: AppColors.textLight, height: 1.5)),
        ],
      ),
    );
  }

  Widget _buildArchitectsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('The Architects', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(color: Colors.teal.withOpacity(0.1), borderRadius: BorderRadius.circular(20)),
              child: const Text('MEET THE TEAM', style: TextStyle(fontSize: 10, color: Colors.teal, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _teamMember('Zayn Al-Abidin', 'Lead Designer & Founder'),
        _teamMember('Sarah Hanifa', 'Backend Engineer'),
        _teamMember('Malik Yusuf', 'Community Lead'),
      ],
    );
  }

  Widget _teamMember(String name, String role) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          const CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11')),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(role, style: const TextStyle(fontSize: 12, color: AppColors.textLight)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildConnectSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Text('Connect with us', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Stay updated with our journey and join the community.', textAlign: TextAlign.center, style: TextStyle(color: AppColors.textLight)),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.language),
            label: const Text('Website'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryDark,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}