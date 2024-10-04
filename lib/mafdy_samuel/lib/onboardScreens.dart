import 'package:flutter/material.dart';

import 'data/get_start_data.dart';
import 'getstart.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.lightBlue, fontSize: 19),
            ),
            onPressed: () => OpenGetstart(context),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: imgs.length,
                    itemBuilder: (context, i) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            imgs[i],
                            width: 1300,
                            height: 400,
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '${blacktitles[i]}',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '${bluetitles[i]}',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            '${subtitles[i]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Spacer(),
                          const SizedBox(height: 40),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Center(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: (i == 0)
                                            ? Colors.blue.shade500
                                            : Colors.blue.shade100,
                                      ),
                                      const SizedBox(width: 6),
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: (i == 1)
                                            ? Colors.blue.shade500
                                            : Colors.blue.shade100,
                                      ),
                                      const SizedBox(width: 6),
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: (i == 2)
                                            ? Colors.blue.shade500
                                            : Colors.blue.shade100,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const SizedBox(width: 6),
                                FloatingActionButton(
                                  onPressed: () {
                                    if (i == 2) {
                                      OpenGetstart(context);
                                    } else {
                                      _pageController.nextPage(
                                          duration:
                                              const Duration(milliseconds: 250),
                                          curve: Curves.ease);
                                    }
                                  },
                                  backgroundColor: Colors.blue,
                                  shape: CircleBorder(),
                                  child: const Icon(Icons.arrow_forward,
                                      color: Colors.white),
                                ),
                              ]),
                          Spacer(),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void OpenGetstart(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) =>
              const GetStart()), // Navigate to GetStart screen
    );
  }
}

