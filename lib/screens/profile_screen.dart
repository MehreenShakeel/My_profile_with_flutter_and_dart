import 'package:flutter/material.dart';
import '../widgets/contact_card.dart';
import 'about_me_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            const SizedBox(height: 16),
            const Text('Mehreen', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Text('Flutter Developer', style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 12),
            const Text(
              'Passionate about building beautiful, responsive mobile apps with Flutter. '
              'Love clean code, UI/UX, and learning new tech.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const ContactCard(),
            const SizedBox(height: 24),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    _socialButton(Icons.link, 'www.linkedin.com/in/mehreen-shakeel'),           // LinkedIn
                    _socialButton(Icons.code, 'https://github.com/MehreenShakeel'),              // GitHub
                    _socialButton(Icons.alternate_email, 'mailto:mehreen@example.com'),    // Email
                ],
                ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutMeScreen())),
        child: const Icon(Icons.info_outline),
      ),
    );
  }

  Widget _socialButton(IconData icon, String url) {
    return IconButton(
      icon: Icon(icon, size: 32),
      color: Colors.blueAccent,
      onPressed: () {
        // In real app, use url_launcher
        debugPrint('Opening $url');
      },
    );
  }
}