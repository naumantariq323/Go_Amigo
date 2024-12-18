import 'package:go_amigo/export.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.h,
              child: Image.asset(ImageAssets.anywhere_you_are),
            ),
            SizedBox(height: 5.h),
            Text(
              'Anywhere you are',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 1.h),
            Text(
              'Need a ride-share? No matter where you are,\nwe are here for you!',
              style: TextStyle(
                color: AppColor.grey,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
