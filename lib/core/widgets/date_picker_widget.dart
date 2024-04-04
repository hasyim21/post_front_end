import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/app_colors.dart';
import 'spaces.dart';

class MyDatePicker extends StatefulWidget {
  final String label;
  final DateTime? value;
  final String? hint;
  final String? Function(String?)? validator;
  final Function(DateTime) onChanged;

  const MyDatePicker({
    super.key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    required this.onChanged,
  });

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime? selectedValue;
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    selectedValue = widget.value;
    controller = TextEditingController(
      text: getInitialValue(),
    );
  }

  getInitialValue() {
    if (widget.value != null) {
      return DateFormat("d MMM y").format(widget.value!);
    }
    return "-";
  }

  getFormattedValue() {
    if (selectedValue != null) {
      return DateFormat("d MMM y").format(selectedValue!);
    }
    return "-";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SpaceHeight(),
        InkWell(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            selectedValue = pickedDate;
            controller.text = getFormattedValue();
            setState(() {});

            if (selectedValue == null) return;
            widget.onChanged(selectedValue!);
          },
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: AbsorbPointer(
              child: TextFormField(
                controller: controller,
                validator: (value) {
                  if (widget.validator != null) {
                    return widget.validator!(selectedValue.toString());
                  }
                  return null;
                },
                readOnly: true,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.date_range,
                  ),
                  hintText: widget.hint,
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
