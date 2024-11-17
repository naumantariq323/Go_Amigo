import 'package:go_amigo/export.dart';
import 'package:go_amigo/pages/onboarding_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primarycolor,
        body: Padding(
          padding: EdgeInsets.only(bottom: 1.h),
          child: Column(children: [
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageAssets.welcomeimage,
                  ),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.primarycolor.withOpacity(0.9),
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: const Offset(2, 6),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Discover The World With Us\nYour Top Travel Companion',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Have a better sharing experience',
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColor.grey,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardingScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.secondarycolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: Size(90.w, 8.h)),
              child: Text(
                'Login',
                style: TextStyle(
                    color: AppColor.primarycolor, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardingScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primarycolor,
                  side: BorderSide(color: AppColor.secondarycolor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: Size(90.w, 8.h)),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: AppColor.secondarycolor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ));
  }
}
