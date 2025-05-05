import 'package:flutter/material.dart';

class StepEditor extends StatefulWidget {
  final String initialDescription;
  final int? initialTimer;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<int?> onTimerChanged;
  final VoidCallback onDelete;

  const StepEditor({
    this.initialDescription = '',
    this.initialTimer,
    required this.onDescriptionChanged,
    required this.onTimerChanged,
    required this.onDelete,
  });

  @override
  _StepEditorState createState() => _StepEditorState();
}

class _StepEditorState extends State<StepEditor> {
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController(text: widget.initialDescription);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Шаг', style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.timer),
                  onPressed: _setTimer,
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: widget.onDelete,
                ),
              ],
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(hintText: 'Описание шага'),
              onChanged: widget.onDescriptionChanged,
            ),
            if (widget.initialTimer != null)
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('Таймер: ${widget.initialTimer} мин'),
              ),
          ],
        ),
      ),
    );
  }

  void _setTimer() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Установите таймер'),
        content: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: 'Время в минутах'),
          onChanged: (value) {
            widget.onTimerChanged(int.tryParse(value));
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
}