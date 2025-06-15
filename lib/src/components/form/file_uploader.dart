import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../../theme/moon_colors.dart';
import '../../theme/moon_text_styles.dart';

class MoonFileUploader extends StatefulWidget {
  final ValueChanged<PlatformFile?> onFilePicked;
  final String buttonLabel;

  const MoonFileUploader({
    super.key,
    required this.onFilePicked,
    this.buttonLabel = 'Upload File',
  });

  @override
  State<MoonFileUploader> createState() => _MoonFileUploaderState();
}

class _MoonFileUploaderState extends State<MoonFileUploader> {
  PlatformFile? _file;

  Future<void> _pick() async {
    final result = await FilePicker.platform.pickFiles(withReadStream: true);
    if (result != null && result.files.isNotEmpty) {
      setState(() => _file = result.files.first);
      widget.onFilePicked(_file);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: _pick,
          style: ElevatedButton.styleFrom(backgroundColor: MoonColors.primary),
          child: Text(widget.buttonLabel),
        ),
        if (_file != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(_file!.name, style: MoonTextStyles.bodySmall),
          ),
      ],
    );
  }
}
