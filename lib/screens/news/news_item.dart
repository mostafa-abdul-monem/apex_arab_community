import 'package:apex/constants/constants.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  NewsItem({Key? key, this.tapped, required this.title, required this.imageURL})
      : super(key: key);
  void tapped;
  final String title;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        margin: EdgeInsets.all(13),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageURL,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 180,
                    alignment: Alignment.bottomRight,
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            mainColor.withOpacity(0),
                            mainColor.withOpacity(0.8)
                          ],
                          stops: const [
                            0.6,
                            1
                          ]),
                    ),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
