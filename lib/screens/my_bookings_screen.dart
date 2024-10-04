import 'package:doc_appointment/data/upcomming_schedule.dart';
import 'package:doc_appointment/widget/app_bar.dart';
import 'package:doc_appointment/widget/my_booking_screen.dart/booking_card.dart';
import 'package:flutter/material.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'My Bookings',
          disableLeading: true,
          actions: [
            Icons.search,
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: const TabBar(
                labelColor: Color.fromARGB(255, 1, 101, 252),
                unselectedLabelColor: Colors.black,
                indicatorColor: Color.fromARGB(255, 1, 101, 252),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                //indicatorWeight: 5,
                // indicator: UnderlineTabIndicator(
                //   // color: Color.fromARGB(255, 1, 101, 252),
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(16),
                //     topRight: Radius.circular(16),
                //   ),
                // ),
                tabs: [
                  Tab(text: 'Upcomming'),
                  Tab(text: 'Completed'),
                  Tab(text: 'Cancelled'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      ...upcommingSchedule.map(
                        (book) => BookingCard(book, 'upcomming'),
                      ),
                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      ...upcommingSchedule.map(
                        (book) => BookingCard(book, 'completed'),
                      ),
                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      ...upcommingSchedule.map(
                        (book) => BookingCard(book, 'cancelled'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
