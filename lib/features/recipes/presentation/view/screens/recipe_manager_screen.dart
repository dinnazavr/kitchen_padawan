import 'package:flutter/material.dart';

class RecipeManagerScreen extends StatefulWidget {
  const RecipeManagerScreen({super.key});

  @override
  _RecipeManagerScreenState createState() => _RecipeManagerScreenState();
}

class _RecipeManagerScreenState extends State<RecipeManagerScreen> {
  final List<Map<String, dynamic>> _recipes = [
    {'id': '1', 'name': 'Паста Карбонара', 'steps': []},
    {'id': '2', 'name': 'Омлет с сыром', 'steps': []},
    {'id': '3', 'name': 'Салат Цезарь', 'steps': []},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мои рецепты'),
      ),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (ctx, index) => _buildRecipeCard(_recipes[index]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showRecipeEditor(null),
      ),
    );
  }

  Widget _buildRecipeCard(Map<String, dynamic> recipe) {
    return Dismissible(
      key: Key(recipe['id']),
      background: Container(color: Colors.red),
      onDismissed: (direction) {
        setState(() {
          _recipes.removeWhere((item) => item['id'] == recipe['id']);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Рецепт удалён')),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text(recipe['name']),
          trailing: Icon(Icons.edit),
          onTap: () => _showRecipeEditor(recipe['id']),
        ),
      ),
    );
  }

  void _showRecipeEditor(String? recipeId) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
        ),
        child: RecipeEditor(
          recipeId: recipeId,
          onSave: (name, steps) {
            if (recipeId == null) {
              // Добавление нового рецепта
              setState(() {
                _recipes.add({
                  'id': DateTime.now().toString(),
                  'name': name,
                  'steps': steps,
                });
              });
            } else {
              // Редактирование существующего
              setState(() {
                final index = _recipes.indexWhere((r) => r['id'] == recipeId);
                if (index != -1) {
                  _recipes[index]['name'] = name;
                  _recipes[index]['steps'] = steps;
                }
              });
            }
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}

class RecipeEditor extends StatefulWidget {
  final String? recipeId;
  final Function(String name, List<Map<String, dynamic>> steps) onSave;

  const RecipeEditor({super.key, this.recipeId, required this.onSave});

  @override
  _RecipeEditorState createState() => _RecipeEditorState();
}

class _RecipeEditorState extends State<RecipeEditor> {
  final _nameController = TextEditingController();
  final List<Map<String, dynamic>> _steps = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.recipeId == null ? 'Новый рецепт' : 'Редактирование',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Название рецепта',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ..._steps.map((step) => _buildStepItem(step)).toList(),
          ElevatedButton.icon(
            icon: Icon(Icons.add),
            label: Text('Добавить шаг'),
            onPressed: _addStep,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: Text('Отмена'),
                onPressed: () => Navigator.pop(context),
              ),
              ElevatedButton(
                onPressed: _saveRecipe,
                child: Text('Сохранить'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStepItem(Map<String, dynamic> step) {
    final index = _steps.indexOf(step);
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Шаг ${index + 1}', style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.timer),
                  onPressed: () => _setTimerForStep(index),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _removeStep(index),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Описание шага'),
              onChanged: (value) => step['description'] = value,
            ),
            if (step['timer'] != null)
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('Таймер: ${step['timer']} мин'),
              ),
          ],
        ),
      ),
    );
  }

  void _addStep() {
    setState(() {
      _steps.add({'description': '', 'timer': null});
    });
  }

  void _removeStep(int index) {
    setState(() {
      _steps.removeAt(index);
    });
  }

  void _setTimerForStep(int index) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Установите таймер'),
        content: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Время в минутах',
          ),
          onChanged: (value) {
            setState(() {
              _steps[index]['timer'] = int.tryParse(value);
            });
          },
        ),
        actions: [
          TextButton(
            child: Text('Готово'),
            onPressed: () => Navigator.pop(ctx),
          ),
        ],
      ),
    );
  }

  void _saveRecipe() {
    if (_nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Введите название рецепта')),
      );
      return;
    }
    widget.onSave(_nameController.text, _steps);
  }
}