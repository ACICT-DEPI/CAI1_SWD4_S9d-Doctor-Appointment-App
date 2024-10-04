

import 'package:doc_appointment/jana/lib/select_package.dart';
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/jana/lib/widgets/date_widget.dart';
import 'package:doc_appointment/jana/lib/widgets/doctor_profile.dart';
import 'package:doc_appointment/jana/lib/widgets/nav_button.dart';
import 'package:doc_appointment/jana/lib/widgets/static_icons.dart';
import 'package:doc_appointment/jana/lib/widgets/time_widget.dart';
import 'package:flutter/material.dart';



class BookDoctor extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  BookDoctor({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  CustomAppBar(title: "Book Appointment",
      onpressed:  (){
        Navigator.pop(context);
      },),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const DoctorProfile(),
            const StaticIcons(),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(left: 28,right: 20,top: 20),
              child: Text("BOOK APPOINTMENT",style:TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Color(0xffB4B4B4),
              )
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 28,right: 20,top: 15),
              child: Text("Day", style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                child:  Row(
                 children: const  [
                   DateBox(weekDay: "Today",
                     day: 1,
                     month: "Sep"),
                   DateBox(weekDay: "Today",
                       day: 2,
                       month: "Sep"),
                   DateBox(weekDay: "Today",
                       day: 3,
                       month: "Sep"),
                   DateBox(weekDay: "Today",
                       day: 4,
                       month: "Sep"),
                   DateBox(weekDay: "Today",
                       day: 5,
                       month: "Sep"),
                   DateBox(weekDay: "Today",
                       day: 6,
                       month: "Sep"),

                 ],

                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 28,right: 20,top: 15),
              child: Text("Time", style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
             Padding(
              padding:const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    TimeBox(time: "7:00  PM"),
                    TimeBox(time: "7:30  PM"),
                    TimeBox(time: "8:00  PM"),
                    TimeBox(time: "8:30  PM"),
                    TimeBox(time: "9:00  PM")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Want a custom schedule?',

                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding inside the text field
                    suffixIcon: GestureDetector(
                      onTap: () {
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15), // Right padding to match overall style
                        child: Text(
                          "Request Schedule",
                          style: TextStyle(
                            color: Colors.blue,  // Blue text color
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          NavButton(title: "Book Appointment",
           onPressed:() {
           Navigator.push(context, MaterialPageRoute(
               builder: (context) => const package()));
         },)










          ],


        ),
      )
    );
    }
  }

