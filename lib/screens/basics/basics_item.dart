import 'package:apex/constants/constants.dart';
import 'package:flutter/material.dart';

class BasicsItem extends StatelessWidget {
  const BasicsItem(
      {Key? key, this.tapped, required this.imageURL, required this.title})
      : super(key: key);
  final VoidCallback? tapped;
  final String title;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapped,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: const EdgeInsets.all(13),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    imageURL,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
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
                        fontSize: 22,
                        overflow: TextOverflow.fade),
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              child: Container(
                color: darkerColor,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'إعجاب',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.textsms,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'تعليق',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
