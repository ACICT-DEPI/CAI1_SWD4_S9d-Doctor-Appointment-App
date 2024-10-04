import 'package:flutter/material.dart';

class BookingInfo {
  final String? title1;
  final String? subtitle1;
  final String? title2;
  final String? subtitle2;
  final String? title3;
  final String? subtitle3;
  final String? title4;
  final String? subtitle4;
  final String? title5;
  final String? subtitle5;

  BookingInfo({
    this.title1,
    this.subtitle1,
    this.title2,
    this.subtitle2,
    this.title3,
    this.subtitle3,
    this.title4,
    this.subtitle4,
    this.title5,
    this.subtitle5,
  });
}

class BookingInfoWidget extends StatelessWidget {
  final BookingInfo booking;

  const BookingInfoWidget({
    Key? key,
    required this.booking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (booking.title1?.isNotEmpty ?? false)
            _buildInfoRow(
                booking.title1 ?? '', booking.subtitle1 ?? 'Subtitle 1'),
          if (booking.title2?.isNotEmpty ?? false)
            _buildInfoRow(
                booking.title2 ?? '', booking.subtitle2 ?? 'Subtitle 2'),
          if (booking.title3?.isNotEmpty ?? false)
            _buildInfoRow(
                booking.title3 ?? '', booking.subtitle3 ?? 'Subtitle 3'),
          if (booking.title4?.isNotEmpty ?? false)
            _buildInfoRow(
                booking.title4 ?? '', booking.subtitle4 ?? 'Subtitle 4'),
          if (booking.title5?.isNotEmpty ?? false)
            _buildInfoRow(
                booking.title5 ?? '', booking.subtitle5 ?? 'Subtitle 5'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black45),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
