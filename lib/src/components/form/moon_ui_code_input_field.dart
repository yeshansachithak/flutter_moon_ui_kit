import 'package:flutter/material.dart';
import '../../theme/moon_colors.dart';
import '../../theme/moon_text_styles.dart';

class MoonCodeInputField extends StatefulWidget {
  final int length;
  final ValueChanged<String> onCompleted;

  const MoonCodeInputField({
    super.key,
    this.length = 6,
    required this.onCompleted,
  });

  @override
  State<MoonCodeInputField> createState() => _MoonCodeInputFieldState();
}

class _MoonCodeInputFieldState extends State<MoonCodeInputField> {
  late List<FocusNode> _nodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _nodes = List.generate(widget.length, (_) => FocusNode());
    _controllers = List.generate(widget.length, (_) => TextEditingController());
  }

  void _onChanged() {
    final code = _controllers.map((c) => c.text).join();
    if (code.length == widget.length) widget.onCompleted(code);
  }

  Widget _buildBox(int i) {
    return SizedBox(
      width: 40,
      child: TextField(
        focusNode: _nodes[i],
        controller: _controllers[i],
        textAlign: TextAlign.center,
        style: MoonTextStyles.bodyMedium,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MoonColors.border),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: MoonColors.primary),
          ),
        ),
        keyboardType: TextInputType.number,
        onChanged: (_) {
          if (_controllers[i].text.isNotEmpty && i < widget.length - 1) {
            _nodes[i + 1].requestFocus();
          }
          _onChanged();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.length, _buildBox),
    );
  }
}
