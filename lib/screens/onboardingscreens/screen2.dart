import 'package:go_amigo/export.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primarycolor,
        body: Padding(
          padding: EdgeInsets.all(5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
                child: Image.asset(ImageAssets.at_anytime),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "At Anytime",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 1.h),
              Text(
                'Plan ahead or book last minute - your spot is\navialable anytime',
                style: TextStyle(
                  color: AppColor.grey,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
