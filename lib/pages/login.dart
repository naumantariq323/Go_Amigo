import 'package:flutter/services.dart';
import 'package:go_amigo/export.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primarycolor,
        body: Container(
          padding: EdgeInsets.only(right: 5.h, left: 5.h, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Welcome!👋",
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Phone number',
                        style: TextStyle(
                            color: AppColor.black, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      FormBuilderTextField(
                        name: 'phone ',
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            hintText: 'Your Phone',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp))),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.sp)),
                                backgroundColor: AppColor.secondarycolor,
                                minimumSize: Size(90.w, 8.h)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NoVerfication()));
                            },
                            child: Text(
                              'Verify Number',
                              style: TextStyle(
                                  color: AppColor.primarycolor,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ]),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text('Do not have an account?'),
                SizedBox(
                  width: 2.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: AppColor.black, fontWeight: FontWeight.bold),
                  ),
                )
              ]),
              SizedBox(
                height: 3.h,
              )
            ],
          ),
        ));
  }
}
