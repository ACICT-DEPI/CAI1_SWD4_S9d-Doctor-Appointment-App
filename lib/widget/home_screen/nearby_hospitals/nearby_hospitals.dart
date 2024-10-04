import 'package:doc_appointment/data/hospitals.dart';
import 'package:doc_appointment/widget/home_screen/headers_text.dart';
import 'package:doc_appointment/widget/home_screen/nearby_hospitals/hospital_card.dart';
import 'package:doc_appointment/widget/home_screen/see_all.dart';
import 'package:flutter/widgets.dart';

class NearbyHospitals extends StatelessWidget {
  const NearbyHospitals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            HeadersText('Nearby Hospitals'),
            Spacer(),
            SeeAll('nearby'),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...hospitals.map(
                (hospital) => HospitalCard(hospital, true),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
