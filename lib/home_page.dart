import 'package:apex/constants/constants.dart';
import 'package:apex/screens/basics/basics_view.dart';
import 'package:apex/screens/news/news_view.dart';
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
            Container(
              margin: const EdgeInsets.only(top: 3.0),
              color: mainColor,
              height: MediaQuery.of(context).size.height / 3.1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 6.5,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    const Text(
                      'مرحباً بك فى مجتمع أبيكس العربى',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              // child: AppBar(
              //   backgroundColor: mainColor,
              child: Material(
                color: mainColor,
                child: TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: secondColor,
                  indicatorColor: secondColor,
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
            // ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  NewsView(),
                  BasicsView(),
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
