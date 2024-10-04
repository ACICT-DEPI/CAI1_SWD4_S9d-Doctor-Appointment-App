import 'package:doc_appointment/mafdy/lib/clinic_detail.dart';
import 'package:doc_appointment/models/hospital.dart';
import 'package:flutter/material.dart';

class HospitalCard extends StatelessWidget {
  const HospitalCard(this.hospital, this.reSize, {super.key});

  final Hospital hospital;
  final bool reSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: (reSize) ? 400 : null,
      width: (reSize) ? 250 : null,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ClinicPage(),
            ));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    hospital.image,
                    //height: 100,
                    //width: 200,
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(101, 169, 170, 169),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Text(
                            hospital.rate,
                          ),
                          Text(' (${hospital.numOfReviews} Review)'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hospital.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      hospital.specialities
                          .map((speciality) => speciality.name)
                          .toList()
                          .join(', '),
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 136, 139, 136),
                      ),
                    ),
                    const Divider(
                      //color: Colors.amber,
                      color: Color.fromARGB(255, 116, 119, 116),
                      //endIndent: 15,
                      //indent: 15,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 1, 101, 252),
                          size: 20,
                        ),
                        SizedBox(
                          width: (reSize) ? 190 : null,
                          child: Text(
                            hospital.address,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 136, 139, 136),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_filled,
                          color: Color.fromARGB(255, 1, 101, 252),
                          size: 18,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          hospital.time,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 136, 139, 136),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
