import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String id;
  final String name;
  final VoidCallback onEdit;
  final VoidCallback onDismissed;

  const RecipeCard({
    required this.id,
    required this.name,
    required this.onEdit,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(id),
      background: Container(color: Colors.red),
      onDismissed: (_) => onDismissed(),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text(name),
          trailing: Icon(Icons.edit),
          onTap: onEdit,
        ),
      ),
    );
  }
}