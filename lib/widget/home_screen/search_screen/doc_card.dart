import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doc_appointment/jana/lib/doc_details.dart';
import 'package:doc_appointment/models/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DoctorDetails(),
          ),
        );
      },
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    child: Image.asset(
                      widget.doc.image,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 80,
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
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.verified,
                                    color: Colors.blue, size: 15),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  'Proffesional Doctor',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 1, 101, 252),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              RatingBar(
                                filledIcon: Icons.star,
                                emptyIcon: Icons.star_border,
                                halfFilledIcon: Icons.star_half_outlined,
                                initialRating: 3,
                                isHalfAllowed: true,
                                size: 20,
                                onRatingChanged: (rating) {
                                  setState(() {
                                    widget.doc.rate = rating;
                                    print(rating);
                                    print(rate);
                                    print(widget.doc.rate);
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.doc.rate.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '${widget.doc.reviewsNumber} Reviews',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 136, 139, 136),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DoctorDetails(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  foregroundColor: const Color.fromARGB(255, 1, 101, 252),
                  backgroundColor: const Color.fromARGB(255, 211, 230, 255),
                  fixedSize: const Size(360, 50),
                ),
                child: const Text(
                  'Make Apointment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
