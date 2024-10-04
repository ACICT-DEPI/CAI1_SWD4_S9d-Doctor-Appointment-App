import 'package:flutter/material.dart';

import '../data/clinic_tratment_data.dart';


Widget TerminatesFn() {
  return Column(
    children: <Widget>[
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15),
          const Text(
            'Treatments',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Text(
            '(${services.length})',
            style: const TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
      const SizedBox(height: 5),
      Expanded(
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListTile(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                title: Text(
                  services[index],
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Colors.blue, size: 20),
                onTap: () {
                  // Handle the tap event
                },
              ),
            );
          },
        ),
      ),
    ],
  );
}