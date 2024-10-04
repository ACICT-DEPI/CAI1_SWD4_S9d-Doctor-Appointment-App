import 'package:doc_appointment/jana/lib/payment_method.dart';
import 'package:doc_appointment/jana/lib/payment_successful.dart';
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/jana/lib/widgets/booking_info.dart';
import 'package:doc_appointment/jana/lib/widgets/doctor_profile.dart';
import 'package:doc_appointment/jana/lib/widgets/nav_button.dart';
import 'package:dotted_line/dotted_line.dart';

import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Review Summary',
        onpressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                const DoctorProfile(),
                BookingInfoWidget(
                  booking: BookingInfo(
                    title1: 'Date & Hour',
                    subtitle1: '2024-09-20 14:00 AM',
                    title2: 'Package',
                    subtitle2: 'Messaging',
                    title3: 'Duration',
                    subtitle3: '60 minutes',
                    title4: 'Booking for',
                    subtitle4: 'Self',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 0.3,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                BookingInfoWidget(
                  booking: BookingInfo(
                    title1: 'Amount',
                    subtitle1: '\$20',
                    title2: 'Duration (30 mins)', // Fixed the parentheses
                    subtitle2: '1 X \$20',
                    title3: 'Duration',
                    subtitle3: '30 minutes',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: DottedLine(
                    dashLength: 10.0, // length of each dash
                    dashGapLength: 4.0, // gap between dashes
                    lineThickness: 0.8, // thickness of the line
                    dashColor: Colors.grey, // color of the dashes
                  ),
                ),
                BookingInfoWidget(
                  booking: BookingInfo(
                    title1: 'Total',
                    subtitle1: '\$20',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 0.3,
                    color: Colors.grey,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.money_sharp, color: Color(0xff0165fc)),
                          SizedBox(width: 8),
                          Text(
                            'Cash',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Change',
                          style: TextStyle(color: Color(0xff0165fc)),
                        ),
                      ),
                    ],
                  ),
                ),

                //Spacer(), // Ensures space is flexible here
                NavButton(
                  title: 'Pay Now',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Successful(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
