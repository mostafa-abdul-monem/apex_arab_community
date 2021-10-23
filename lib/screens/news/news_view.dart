import 'package:apex/constants/constants.dart';
import 'package:apex/screens/news/news_item.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: mainColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            NewsItem(
              imageURL: 'assets/images/season11.jpg',
              title: 'رسمياً إنطلاق الموسم 11 فى أول نوفمبر القادم',
            ),
            NewsItem(
              imageURL: 'assets/images/season11-2.jpg',
              title: 'جميع أسرار الموسم الجديد',
            ),
          ],
        ),
      ),
    );
  }
}
