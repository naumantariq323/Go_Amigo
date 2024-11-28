import 'package:go_amigo/export.dart';

class CardUpload extends StatefulWidget {
  const CardUpload({super.key});

  @override
  State<CardUpload> createState() => _CardUploadState();
}

class _CardUploadState extends State<CardUpload> {
  @override
  Widget build(BuildContext context) {
    String dummy_text = lorem(paragraphs: 1, words: 20);
    return Scaffold(
        backgroundColor: AppColor.primarycolor,
        body: Container(
          padding:
              EdgeInsets.only(right: 5.h, left: 5.h, top: 5.h, bottom: 5.h),
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Security()));
                },
                icon: Icon(
                  size: 20.sp,
                  Icons.arrow_back_ios,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Upload ID Card',
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                dummy_text,
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(90.w, 8.h),
                      backgroundColor: AppColor.secondarycolor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp))),
                  onPressed: () {},
                  child: Text(
                    'Upload',
                    style: TextStyle(
                        color: AppColor.primarycolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));
  }
}
