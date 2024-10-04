import 'package:doc_appointment/data/doctors.dart';
import 'package:doc_appointment/data/hospitals.dart';
import 'package:doc_appointment/widget/app_bar_button.dart';
import 'package:doc_appointment/widget/home_screen/search_screen/doc_card.dart';
import 'package:doc_appointment/widget/home_screen/nearby_hospitals/hospital_card.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const AppBarButton(
            Icons.arrow_back_outlined,
          ),
          title: Container(
            height: 50,
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 1, 101, 252),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 169, 170, 169),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromARGB(101, 169, 170, 169),
                  ),
                ),
              ),
            ),
          ),
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
                tabs: [
                  Tab(text: 'Doctor'),
                  Tab(text: 'Hospital'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      ...doctors.map(
                        (doc) => DocCard(doc),
                      ),
                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      ...hospitals.map(
                        (hospital) => HospitalCard(hospital, false),
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
