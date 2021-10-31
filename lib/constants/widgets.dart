import 'package:apex/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
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
    );
  }
}
