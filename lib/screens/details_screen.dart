import 'package:apex/constants/constants.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.headUrl, required this.title})
      : super(key: key);
  final String headUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              headUrl,
              fit: BoxFit.cover,
              height: 180,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 24,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            const Text('Details here')
          ],
        ),
      ),
    );
  }
}
