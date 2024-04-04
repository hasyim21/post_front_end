import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../assets/assets.gen.dart';
import '../constants/app_colors.dart';
import 'buttons.dart';
import 'spaces.dart';

class ImagePickerWidget extends StatefulWidget {
  final String label;
  final String? currentImage;
  final void Function(XFile? file) onChanged;
  final bool showLabel;

  const ImagePickerWidget({
    super.key,
    required this.label,
    this.currentImage,
    required this.onChanged,
    this.showLabel = true,
  });

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  String? imagePath;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    setState(() {
      if (pickedFile != null) {
        imagePath = pickedFile.path;
        widget.onChanged(pickedFile);
      } else {
        debugPrint('No image selected.');
        widget.onChanged(null);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showLabel) ...[
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SpaceHeight(),
        ],
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: AppColors.grey),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 80.0,
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: imagePath != null
                      ? Image.file(
                          File(imagePath!),
                          fit: BoxFit.cover,
                        )
                      : widget.currentImage != null
                          ? Image.network(
                              widget.currentImage!,
                              fit: BoxFit.cover,
                            )
                          : Container(
                              padding: const EdgeInsets.all(12.0),
                              color: AppColors.border,
                              child: Assets.icons.image.svg(),
                            ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Button.filled(
                  label: 'Pilih',
                  fontSize: 14.0,
                  height: 35.0,
                  width: 100.0,
                  onPressed: _pickImage,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
