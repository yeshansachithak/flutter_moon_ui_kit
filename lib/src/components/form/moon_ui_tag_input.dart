import 'package:flutter/material.dart';
import '../../theme/moon_text_styles.dart';

class MoonTagInput extends StatefulWidget {
  final List<String> initialTags;
  final ValueChanged<List<String>> onTagsChanged;

  const MoonTagInput({
    super.key,
    this.initialTags = const [],
    required this.onTagsChanged,
  });

  @override
  State<MoonTagInput> createState() => _MoonTagInputState();
}

class _MoonTagInputState extends State<MoonTagInput> {
  late List<String> _tags;
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tags = [...widget.initialTags];
  }

  void _addTag(String tag) {
    if (tag.isEmpty) return;
    setState(() {
      _tags.add(tag);
      _controller.clear();
    });
    widget.onTagsChanged(_tags);
  }

  void _removeTag(String tag) {
    setState(() => _tags.remove(tag));
    widget.onTagsChanged(_tags);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: [
        ..._tags.map((t) => Chip(
              label: Text(t, style: MoonTextStyles.bodySmall),
              onDeleted: () => _removeTag(t),
            )),
        SizedBox(
          width: 120,
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: 'Add'),
            onSubmitted: _addTag,
          ),
        )
      ],
    );
  }
}
