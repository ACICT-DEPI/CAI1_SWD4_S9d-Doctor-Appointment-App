import 'package:flutter/material.dart';

class CustomDropdownField extends StatelessWidget {
  final String? selectedValue;
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;

  const CustomDropdownField({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    this.hintText = 'Select',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      //padding: EdgeInsets.all(16),
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
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.black)

        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: const Color.fromARGB(255, 9, 9, 9)),
        ),
        contentPadding:  EdgeInsets.symmetric(horizontal: 16.0, vertical:0.0),
        filled: true,
        fillColor: Color.fromARGB(255, 252, 252, 252),
      ),
      hint: Text(hintText),
      icon:  Icon(
        Icons.keyboard_arrow_down,color: Color(0xff0165fc),
        size: 30,
      ),
    );
  }
}
