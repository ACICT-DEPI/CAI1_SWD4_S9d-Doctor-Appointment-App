import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class verifycode extends StatelessWidget {
  bool first;
  bool last;
  verifycode({
    required this.first,
    required this.last,
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: TextField(
        onChanged: ((value) {
          if (value.isEmpty && last == false) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        }),
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide:
                BorderSide(color: const Color.fromARGB(255, 199, 199, 199)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color.fromARGB(255, 199, 199, 199)),
          ),
          hintText: "-",
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.width / 9,
              maxWidth: MediaQuery.of(context).size.width / 6),
        ),
      ),
    );
  }
}
