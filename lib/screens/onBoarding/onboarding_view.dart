import 'package:apex/constants/constants.dart';
import 'package:apex/home_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: (IntroductionScreen(
          done: const Text(
            'إبدأ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onDone: () => goToHome(context),
          pages: [
            PageViewModel(
                title: 'سعداء بإنضمامك الى مجتمع أبيكس العربى',
                body: 'تعرف على اخر أخبار لعبتك المفضلة',
                image: buildImage('assets/images/onboard1.png'),
                decoration: getPageDecoration()),
            PageViewModel(
              title: 'لا يهم إذا كنت مبتدئ أم محترف',
              body: 'يمكنك تعلم أساسيات اللعبة معنا!',
              image: buildImage('assets/images/onboard2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'اللحظات الإستثنائية لا تتكرر',
              body: 'يمكنك مشاركة محتواك لجميع اللاعبين',
              image: buildImage('assets/images/onboard3.png'),
              decoration: getPageDecoration(),
            ),
          ],
          showSkipButton: true,
          skip: Text(
            'تخطى',
            style: TextStyle(color: Colors.white),
          ),
          next: Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
          ),
          dotsDecorator: getDotsDecoration(),
          globalBackgroundColor: mainColor,
          isProgressTap: false,
          animationDuration: 650,
          onSkip: () => goToHome(context),
        )),
      );

  void goToHome(context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
  Widget buildImage(String path) => Container(
        margin: EdgeInsets.only(top: 25),
        child: Center(
            child: Image.asset(
          path,
          width: 250,
          height: 250,
        )),
      );

  PageDecoration getPageDecoration() => PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
      descriptionPadding: EdgeInsets.all(10).copyWith(bottom: 0),
      imagePadding: EdgeInsets.all(10),
      pageColor: mainColor);

  DotsDecorator getDotsDecoration() => const DotsDecorator(
        color: Color(0xFFFFFFFF),
        activeColor: Color(0xFF931a1a),
        size: Size(12, 12),
        activeSize: Size(14, 14),
      );
}
