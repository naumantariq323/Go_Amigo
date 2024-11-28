import 'package:go_amigo/export.dart';

class OnboardingScreen extends StatefulWidget {
  final bool isLogin;
  const OnboardingScreen({Key? key, required this.isLogin}) : super(key: key);

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
                      if (widget.isLogin) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      }
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColor.grey,
                      ),
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
                              if (_controller.page != null &&
                                  _controller.page!.toInt() < 2) {
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                              } else {
                                if (widget.isLogin) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                } else {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()),
                                  );
                                }
                              }
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
                          effect: WormEffect(
                              dotColor: AppColor.lightgrey,
                              activeDotColor: AppColor.secondarycolor,
                              dotWidth: 8.w),
                          controller: _controller,
                          count: 3,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColor.black,
                              borderRadius: BorderRadius.circular(2.sp)),
                          height: 1.h,
                          width: 50.w,
                        )
                      ]))
            ])));
  }
}
