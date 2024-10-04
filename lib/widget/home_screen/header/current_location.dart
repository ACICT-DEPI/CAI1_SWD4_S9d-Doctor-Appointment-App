import 'package:doc_appointment/models/locations.dart';
import 'package:doc_appointment/screens/notifications_screen.dart';
import 'package:flutter/material.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  Locations _selectedLocation = Locations.cairo;

  void openNotifications() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const NotificationsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Location",
              style: TextStyle(
                color: Color.fromARGB(255, 169, 170, 169),
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 1, 101, 252),
                ),
                const SizedBox(
                  width: 10,
                ),
                IntrinsicWidth(
                  child: DropdownButton(
                      value: _selectedLocation,
                      //isDense: true,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      underline: const SizedBox(),
                      items: Locations.values
                          .map(
                            (location) => DropdownMenuItem(
                              value: location,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Row(
                                  children: [
                                    Text(
                                      location.name.toUpperCase(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        if (value == null) {
                          return;
                        }
                        setState(() {
                          _selectedLocation = value;
                        });
                      }),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: openNotifications,
          iconSize: 25,
          icon: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 234, 236, 240),
            ),
            child: const Icon(
              Icons.notifications_none_rounded,
            ),
          ),
        ),
      ],
    );
  }
}
