import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главное меню'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildMenuButton(
              context,
              'Книга рецептов',
              Icons.menu_book,
              Colors.blue,
              '/recipes',
            ),
            SizedBox(height: 30),
            _buildMenuButton(
              context,
              'Голосовой помощник',
              Icons.mic,
              Colors.green,
              '/voice-mode',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(
    BuildContext context,
    String text,
    IconData icon,
    Color color,
    String route,
  ) {
    return SizedBox(
      width: 280,
      height: 80,
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 30),
        label: Text(text, style: TextStyle(fontSize: 20)),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
        onPressed: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}