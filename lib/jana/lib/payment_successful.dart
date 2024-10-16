import 'package:doc_appointment/jana/lib/patient_details.dart';
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/jana/lib/widgets/nav_button.dart';
import 'package:doc_appointment/jana/lib/widgets/row_info.dart';

import 'package:flutter/material.dart';

import '../../screens/tabs_screen.dart';

class Successful extends StatelessWidget {
  Successful({super.key});

  String doctorName = 'Dr.Jonny Wilson';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Payment',
        onpressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Image (10).png',
                  scale: 1.2,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Payment Successful!',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "You have successfully booked appointment with",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xffB4B4B4),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  doctorName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 19),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 0.3,
                    color: const Color(0xFFE4E0E0),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const InfoRow(
                  leadingIcon: Icons.person,
                  trailingIcon: Icons.monetization_on,
                  caption: 'Esther Howard',
                  price: '\$20',
                  fontSize: 19.0,
                  iconSize: 29.0,
                  leadingIconColor: Color(0xff0165fc),
                  trailingIconColor: Color(0xff0165fc),
                ),
                const SizedBox(height: 20),
                const InfoRow(
                  leadingIcon: Icons.calendar_month,
                  trailingIcon: Icons.timer,
                  caption: ' 16 Aug, 2023  ',
                  price: '10:00 AM',
                  fontSize: 19.0,
                  iconSize: 29.0,
                  leadingIconColor: Color(0xff0165fc),
                  trailingIconColor: Color(0xff0165fc),
                ),
                const Spacer(),
                NavButton(
                  title: 'View Appointment',
                  optional: 'Go to Home',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TabsScreen()));
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
