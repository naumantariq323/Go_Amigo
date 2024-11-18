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
            padding: EdgeInsets.only(bottom: 4.h),
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
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 5.h),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Screen3()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColor.grey),
                    ),
                  ),
                ),
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColor.black,
                              borderRadius: BorderRadius.circular(2.h)),
                          height: 1.h,
                          width: 50.w,
                        )
                      ]))
            ])));
  }
}
