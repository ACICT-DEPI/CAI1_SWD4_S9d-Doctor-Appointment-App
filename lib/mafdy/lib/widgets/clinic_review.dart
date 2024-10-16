import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/doctor.dart';
import '../../../widget/home_screen/search_screen/doc_card.dart';
import 'filters.dart';

Widget Review(BuildContext context, List<Doctor> doctors) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15),
          const Text(
            'Review',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Text(
            '(30)',
            style: const TextStyle(fontSize: 18, color: Colors.blue),
          ),
          const Spacer(), // Use Spacer to push the rest to the end
          IconButton(
            icon: Icon(Icons.edit, color: Colors.blue),
            onPressed: () {},
          ),
          const Text(
            'add Review',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.blue),
          ),
        ],
      ),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 3),
        child: CupertinoSearchTextField(
          itemColor: Colors.blue,
          autofocus: true,
          itemSize: 30,
        ),
      ),
      //*********************filter********************
      Filters(),
      const SizedBox(height: 10),
      // Use Expanded to prevent overflow
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: doctors
                .map((doc) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: DocCard(doc),
                    ))
                .toList(),
          ),
        ),
      ),
    ],
  );
}
