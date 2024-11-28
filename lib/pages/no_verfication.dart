import 'package:go_amigo/export.dart';

class NoVerfication extends StatefulWidget {
  const NoVerfication({super.key});

  @override
  State<NoVerfication> createState() => _NoVerficationState();
}

class _NoVerficationState extends State<NoVerfication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primarycolor,
        body: Container(
            padding: EdgeInsets.only(right: 5.h, left: 5.h, top: 5.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                  style: IconButton.styleFrom(
                      side: BorderSide(
                        color: AppColor.black,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20.sp,
                  )),
              SizedBox(
                height: 7.h,
              ),
              Text(
                'Enter Code',
                style: TextStyle(
                  fontSize: 25.sp,
                  color: AppColor.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              const Text(
                  'We have sent a op to code\n to this number +33 123456986'),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                    5,
                    (index) => Padding(
                        padding: EdgeInsets.only(right: index < 4 ? 10.sp : 0),
                        child: SizedBox(
                            width: 10.w,
                            height: 7.h,
                            child: FormBuilderTextField(
                              name: 'box_$index',
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.sp),
                                ),
                              ),
                            )))),
              )
            ])));
  }
}
