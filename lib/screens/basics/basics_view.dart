import 'package:apex/screens/basics/basics_item.dart';
import 'package:apex/screens/details_screen.dart';
import 'package:flutter/material.dart';

class BasicsView extends StatelessWidget {
  const BasicsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BasicsItem(
                tapped: () => goToDetail(context),
                imageURL: "assets/images/pathfinder.jpg",
                title: 'أساسيات شخصية Pathfinder'),
            BasicsItem(
                imageURL: 'assets/images/octane.jpg',
                title: 'أساسيات شخصية Octane')
          ],
        ),
      ),
    );
  }
}

void goToDetail(context) => Navigator.of(context)
    .pushReplacement(MaterialPageRoute(builder: (_) => const DetailScreen()));
