import 'package:flutter/material.dart';

class CustomDropdownField extends StatelessWidget {
  final String? selectedValue;
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;
  final Widget? prefixIcon;

  const CustomDropdownField({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    this.hintText = 'Select an option',
    this.prefixIcon,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),

        ),

        prefixIcon: prefixIcon,

        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        filled: true,
        fillColor: Colors.white,
      ),
      hint: Text(hintText),
      icon: const Icon(
        Icons.keyboard_arrow_down,color: Color(0xff0165fc),
        size: 30,


      ),
    );
  }
}
