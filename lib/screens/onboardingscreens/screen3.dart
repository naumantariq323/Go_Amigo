import 'package:go_amigo/export.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
                child: Image.asset(ImageAssets.book_your_car),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Book your car",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 1.h),
              Text(
                'Save time and book your car in just a few clicks',
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
