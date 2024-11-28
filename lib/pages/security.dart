import 'package:go_amigo/export.dart';

import 'package:intl/intl.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    String dummy_text = lorem(paragraphs: 1, words: 20);
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: Container(
        padding: EdgeInsets.only(right: 5.h, left: 5.h, top: 5.h, bottom: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              style: IconButton.styleFrom(
                side: BorderSide(color: AppColor.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              icon: Icon(
                size: 20.sp,
                Icons.arrow_back_ios,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'Nearly Done',
              style: TextStyle(fontSize: 20.sp, color: AppColor.black),
            ),
            SizedBox(height: 3.h),
            Text(
              dummy_text,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 3.h),
            Text(
              'Date of birth',
              style: TextStyle(color: AppColor.black, fontSize: 15.sp),
            ),
            SizedBox(height: 2.h),
            FormBuilderDateTimePicker(
              name: 'birth_date',
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              inputType: InputType.date,
              format: DateFormat('dd-MM-yyyy'),
              decoration: InputDecoration(
                hintText: 'JJ-MM-YYYY',
                hintStyle: TextStyle(color: AppColor.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              'Phone Number',
              style: TextStyle(color: AppColor.black, fontSize: 15.sp),
            ),
            SizedBox(height: 3.h),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(90.w, 8.h),
                    backgroundColor: AppColor.secondarycolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.sp))),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => CardUpload()));
                },
                child: Text(
                  'Complete',
                  style: TextStyle(
                      color: AppColor.primarycolor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 3.h),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(90.w, 8.h),
                    backgroundColor: AppColor.primarycolor,
                    side: BorderSide(
                      color: AppColor.secondarycolor,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.sp))),
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(
                      color: AppColor.secondarycolor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
