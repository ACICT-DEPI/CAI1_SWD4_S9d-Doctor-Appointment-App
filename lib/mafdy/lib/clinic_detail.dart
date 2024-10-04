import 'package:doc_appointment/jana/lib/widgets/nav_button.dart';
import 'package:doc_appointment/mafdy/lib/doctor.dart';
import 'package:doc_appointment/mafdy/lib/widgets/clinic_about.dart';
import 'package:doc_appointment/mafdy/lib/widgets/clinic_gallery.dart';
import 'package:doc_appointment/mafdy/lib/widgets/clinic_review.dart';
import 'package:doc_appointment/mafdy/lib/widgets/clinic_tratment.dart';
import 'package:flutter/material.dart';

import 'doc_card.dart';
import 'doctors.dart';
import 'widgets/overlaped_btns.dart';

class ClinicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/clinic/Medical-Clinic.jpg',
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    PositionBtns(
                      Top: 35,
                      Left: 20,
                      ico: Icons.keyboard_backspace,
                      onpressFn: () {
                        Navigator.pop(context);
                      },
                    ),
                    PositionBtns(
                      Top: 35,
                      Left: 290,
                      ico: Icons.favorite_border,
                      onpressFn: () {},
                    ),
                    PositionBtns(
                      Top: 35,
                      Left: 350,
                      ico: Icons.share,
                      onpressFn: () {},
                    ),
                  ],
                ),
              ],
            ),

            Positioned(
              top: 230,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), // Rounded top corners
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Serenity Wellness Clinic',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Dental, Skin Care, Eye Care'),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 4),
                          Text('8502 Preston Rd, Inglewood, Maine 98380'),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 4),
                          Text('15 min • 1.5km • Mon Sun 11 am - 11 pm'),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.language,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.message, color: Colors.blue),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.call, color: Colors.blue),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.directions, color: Colors.blue),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.share, color: Colors.blue),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Website'),
                          Text('Message'),
                          Text('Call'),
                          Text('Direction'),
                          Text('Share'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // **********Tab Bar**********
            DefaultTabController(
              length: 5, // The number of tabs
              child: Stack(
                children: [
                  Positioned(
                    top: 450,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.white,
                      child: TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.blue,
                        indicatorWeight: 5,
                        isScrollable: true,
                        tabs: [
                          Tab(text: 'Treatments'),
                          Tab(text: 'Specialist'),
                          Tab(text: 'Gallery'),
                          Tab(text: 'Review'),
                          Tab(text: 'About'),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 490,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: TabBarView(
                      children: [
                        Center(child: TerminatesFn()),
                        SingleChildScrollView(
                          child: Column(
                            children: doctors
                                .map((doc) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0,
                                          horizontal:
                                              16.0), // Add horizontal padding
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxWidth: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              32, // Ensure the card fits within the screen width
                                        ),
                                        child: DocCard(doc),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                        Center(child: clinicGallery()),
                        Center(child: Review(context, doctors.cast<Doctor>())),
                        Center(child: ClinicAbout()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,

                  child: NavButton(
                    onPressed: () {
                      print('pressed');
                    },

                    title: 'Book Appointment',

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
