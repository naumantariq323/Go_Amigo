import 'package:go_amigo/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    config();
  }

  config() async {
    await Future.delayed(const Duration(milliseconds: 1600));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primarycolor,
        body: Padding(
            padding:
                EdgeInsets.only(left: 3.h, right: 5.h, top: 7.h, bottom: 3.h),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: SizedBox(
                            width: 50.w,
                            height: 50.h,
                            child: Image.asset(ImageAssets.logo))),
                    SpinKitCircle(
                      size: 5.h,
                      color: Colors.black,
                    )
                  ]),
            )));
  }
}
