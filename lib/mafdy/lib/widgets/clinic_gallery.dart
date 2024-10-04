import '../data/clinic_gallery_data.dart';
import 'package:flutter/material.dart';

Widget clinicGallery() {
  return Column(
    children: <Widget>[
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15),
          const Text(
            'Gallery',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Text(
            '(${imagelst.length})',
            style: const TextStyle(fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(width: 140),
          IconButton(
            icon: Icon(Icons.image, color: Colors.blue),
            onPressed: () {},
          ),
          const Text(
            'add photo',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500 , color: Colors.blue),
          ),
        ],
      ),
      const SizedBox(height: 5),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 8.0, // Horizontal space between items
              mainAxisSpacing: 8.0, // Vertical space between items
              childAspectRatio: 1.0, // Aspect ratio of each grid item
            ),
            itemCount: imagelst.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagelst[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      )
    ],
  );
}