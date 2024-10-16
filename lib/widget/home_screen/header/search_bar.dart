import 'package:doc_appointment/screens/search_screen.dart';
import 'package:flutter/material.dart';

class SearchBarT extends StatelessWidget {
  const SearchBarT({super.key});

  @override
  Widget build(BuildContext context) {
    //final TextEditingController _textController = TextEditingController();
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 1, 101, 252),
              ),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SearchScreen(),
              ),
            );
          },
          child: Container(
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              //color: const Color.fromARGB(255, 1, 101, 252),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/home_icons/apply_search.png',
                ),
              ),
              // child:
              // IconButton(
              //   onPressed: () {},
              //   //iconSize: 20,
              //   icon: Image.asset(
              //     'assets/home_icons/apply_search.png',
              //     height: 1500,
              //     width: 1500,
              //     //color: Colors.amber,
              //   ),
              //   // icon: const Icon(
              //   //   Icons.display_settings,
              //   //   color: Colors.white,
              //   // ),
              // ),
            ),
          ),
        ),
      ],
    );
  }
}
