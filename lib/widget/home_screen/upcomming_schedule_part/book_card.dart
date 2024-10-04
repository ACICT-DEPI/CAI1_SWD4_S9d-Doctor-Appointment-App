import 'package:doc_appointment/models/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard(this.book, this.color, {super.key});

  final Book book;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (color == 'blue')
            ? const Color.fromARGB(255, 1, 101, 252)
            : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      book.doc.image,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. ${book.doc.name}',
                    style: TextStyle(
                        color: (color == 'blue')
                            ? Colors.white
                            : const Color.fromARGB(255, 1, 101, 252),
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${book.doc.speciality.name} Consultation',
                    style: TextStyle(
                        color: (color == 'blue')
                            ? Colors.white
                            : const Color.fromARGB(255, 1, 101, 252),
                        fontSize: 17),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (color == 'blue')
                      ? Colors.white
                      : const Color.fromARGB(189, 40, 94, 176),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: (color == 'blue')
                        ? const Color.fromARGB(255, 1, 101, 252)
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color.fromARGB(189, 40, 94, 176),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  book.formattedDate,
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
                const Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  book.formattedStartTime,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 2,
                ),
                const Icon(
                  Icons.horizontal_rule_rounded,
                  size: 5,
                  color: Colors.white,
                ),
                Text(
                  book.formattedEndTime,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
