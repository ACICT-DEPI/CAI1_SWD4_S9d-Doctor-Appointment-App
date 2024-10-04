import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'doctor.dart';

class DocCard extends StatefulWidget {
  const DocCard(this.doc, {super.key});

  final Doctor doc;

  @override
  State<DocCard> createState() => _DocCardState();
}

class _DocCardState extends State<DocCard> {
  @override
  Widget build(BuildContext context) {
    double rate = widget.doc.rate;
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.doc.image,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100, // Fixed width for image
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 230, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.verified,
                                  color: Colors.blue, size: 15),
                              const SizedBox(width: 7),
                              const Text(
                                'Professional Doctor',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 1, 101, 252),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Dr. ${widget.doc.name}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          widget.doc.speciality.name,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 136, 139, 136),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            RatingBar(
                              initialRating: widget.doc.rate,
                              //minRating: 1,
                              direction: Axis.horizontal,
                              isHalfAllowed: true,
                              filledIcon: Icons.star,
                              halfFilledIcon: Icons.star_half_outlined,
                              emptyIcon: Icons.star_border,
                              //itemCount: 5,
                              size: 20,
                              //itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                              // itemBuilder: (context, _) => Icon(
                              //   Icons.star,
                              //   color: Colors.amber,
                              // ),
                              onRatingChanged: (rating) {
                                setState(() {
                                  widget.doc.rate = rating;
                                  print(rating);
                                  print(widget.doc.rate);
                                });
                              },
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.doc.rate.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                '${widget.doc.reviewsNumber} Reviews',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 136, 139, 136),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 350, // Ensures button takes full width
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    foregroundColor: const Color.fromARGB(255, 1, 101, 252),
                    backgroundColor: const Color.fromARGB(255, 211, 230, 255),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15), // Adjust padding as needed
                  ),
                  child: const Text(
                    'Make Appointment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
