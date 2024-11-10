import 'package:flutter/material.dart';

class PageWithAppBar extends StatelessWidget {
  final String title;
  final Widget child;

  const PageWithAppBar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // 不能在Navigator的本层调用, 因此外面要包一层PageWithAppBar
            Navigator.pop(context);
          },
        ),
      ),
      body: child,
    );
  }
}

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: [
          _buildNavigationCard(
            context,
            title: 'Contacts',
            icon: Icons.contacts,
            onTap: () {
              Navigator.pushNamed(context, '/contacts');
            },
          ),
          _buildNavigationCard(
            context,
            title: 'Groups',
            icon: Icons.group,
            onTap: () {
              Navigator.pushNamed(context, '/groups');
            },
          ),
          _buildNavigationCard(
            context,
            title: 'Messages',
            icon: Icons.message,
            onTap: () {
              // Navigator.pushNamed(context, '/messages');
              Navigator.pushNamed(context, '/groups');
            },
          ),
          _buildNavigationCard(
            context,
            title: 'Settings',
            icon: Icons.settings,
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Theme.of(context).primaryColor),
            const SizedBox(height: 10),
            Text(title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
