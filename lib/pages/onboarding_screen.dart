import 'package:go_amigo/export.dart';
import 'package:go_amigo/screens/onboardingscreens/screen1.dart';
import 'package:go_amigo/screens/onboardingscreens/screen2.dart';
import 'package:go_amigo/screens/onboardingscreens/screen3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primarycolor,
        body: Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Stack(children: [
              PageView(
                controller: _controller,
                children: const [
                  Screen1(),
                  Screen2(),
                  Screen3(),
                ],
              ),
              Align(
                  alignment: Alignment(0, 0.75),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.secondarycolor,
                                minimumSize: Size(40.w, 7.h)),
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: AppColor.primarycolor,
                                  fontWeight: FontWeight.w700),
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                        ),
                      ]))
            ])));
  }
}
