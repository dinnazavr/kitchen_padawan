import 'package:flutter/material.dart';

class RecipesListScreen extends StatelessWidget {
  const RecipesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Книга рецептов'),
        actions: [
          IconButton(
            icon: const Icon(Icons.record_voice_over),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (ctx, index) => ListTile(
          title: Text('Рецепт ${index + 1}'),
          onTap: () {},
        ),
      ),
    );
  }
}