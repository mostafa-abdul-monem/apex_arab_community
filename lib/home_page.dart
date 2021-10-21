import 'package:apex/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            // construct the profile details widget here
            Container(
              color: mainColor,
              height: 120,
              child: Center(
                child: Text(
                  'الشعار',
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: mainColor,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: 'اخر الأخبار',
                    ),
                    Tab(
                      text: 'أساسيات',
                    ),
                    Tab(
                      text: 'المحتوى',
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'news',
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        'basics',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'content',
                      ),
                    ),
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
