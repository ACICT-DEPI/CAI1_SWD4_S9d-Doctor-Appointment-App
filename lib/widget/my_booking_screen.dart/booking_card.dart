import 'package:doc_appointment/models/book.dart';
import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  const BookingCard(this.book, this.status, {super.key});

  final Book book;
  final String status;

  @override
  Widget build(BuildContext context) {
    String button1 = 'Cancel';
    if (status == 'completed') button1 = 'Re-Book';
    String button2 = 'Reschedule';
    if (status == 'completed') button2 = 'Add Review';
    double height = 157;
    if (status == 'cancelled') height = 335;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  book.completeFormattedtime,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                if (status == 'upcomming')
                  Expanded(
                    child: Row(
                      children: [
                        const Text(
                          'Remind me',
                          style: TextStyle(
                            color: Color.fromARGB(255, 169, 170, 169),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 1, 101, 252),
                            value: book.isRemind,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    book.doc.image,
                    height: 80,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. ${book.doc.name}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/booking_screen/location.png',
                            height: 15,
                            //width: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 230,
                            child: Text(
                              book.doc.address,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 169, 170, 169),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/booking_screen/id.png',
                            height: 15,
                            //width: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Booking ID : ',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color.fromARGB(255, 169, 170, 169),
                            ),
                          ),
                          Text(
                            book.id,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 1, 101, 252),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                if (status != 'cancelled')
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: const Color.fromARGB(255, 1, 101, 252),
                      backgroundColor: const Color.fromARGB(255, 211, 230, 255),
                      fixedSize: const Size(157, 40),
                    ),
                    child: Text(
                      button1,
                    ),
                  ),
                if (status != 'cancelled')
                  const SizedBox(
                    width: 20,
                  ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 1, 101, 252),
                    fixedSize: Size(height, 40),
                  ),
                  child: Text(
                    button2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
