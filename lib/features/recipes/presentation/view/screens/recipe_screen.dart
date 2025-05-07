import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  final bool isNew;
  const RecipeScreen({super.key, required this.isNew});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isNew ? 'Новый рецепт' : 'Редактирование'),
        actions: [
          if (!isNew)
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Название рецепта')),
            const SizedBox(height: 20),
            _buildStepField(1),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Добавить шаг'), 
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Сохранить рецепт'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepField(int stepNumber) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(labelText: 'Описание шага'),
          maxLines: 3,
        ),
        Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: 'Время'),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(width: 10),
            DropdownButton<String>(
              value: 'мин',
              items: ['с', 'мин', 'ч', 'дн'].map((unit) {
                return DropdownMenuItem<String>(
                  value: unit,
                  child: Text(unit),
                );
              }).toList(),
              onChanged: (unit) {},
            ),
          ],
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: stepNumber > 1 ? () {} : null,
          ),
        ),
        const Divider(),
      ],
    );
  }
}