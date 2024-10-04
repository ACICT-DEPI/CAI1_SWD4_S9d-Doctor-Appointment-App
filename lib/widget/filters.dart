import 'package:doc_appointment/data/specialities.dart';
import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  const Filters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 5),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding:const EdgeInsets.symmetric(horizontal: 15),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                  side: const BorderSide(
                    color: Color.fromARGB(101, 169, 170, 169),
                  ),
                ),
              ),
              child: const Text(
                'All',
              ),
            ),
          ),
          ...specialities.entries.map(
            (speciality) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side:const BorderSide(
                      color: Color.fromARGB(101, 169, 170, 169),
                    ),
                  ),
                ),
                child: Text(
                  speciality.value.name,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
