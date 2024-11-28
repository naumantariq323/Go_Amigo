import 'package:go_amigo/export.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String language_dropdownvalue = 'English';
  String country_dropdownvalue = 'Canada';
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: SingleChildScrollView(
        child: Container(
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
                      MaterialPageRoute(builder: (context) => Welcome()));
                },
                icon: Icon(
                  size: 20.sp,
                  Icons.arrow_back_ios,
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.sp),
                    width: 30.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.black,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.language),
                        SizedBox(width: 2.w),
                        DropdownButton<String>(
                          value: language_dropdownvalue,
                          icon: Icon(Icons.arrow_drop_down),
                          style: TextStyle(color: AppColor.black),
                          onChanged: (String? newValue) {
                            setState(() {
                              language_dropdownvalue = newValue!;
                            });
                          },
                          dropdownColor: AppColor.primarycolor,
                          items: [
                            DropdownMenuItem<String>(
                              value: 'English',
                              child: Text('English'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Spanish',
                              child: Text('Spanish'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'French',
                              child: Text('French'),
                            ),
                          ],
                          underline: SizedBox.shrink(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              const Text('First Name'),
              SizedBox(height: 2.h),
              FormBuilderTextField(
                name: 'first name',
                decoration: InputDecoration(
                  hintText: 'John',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              const Text('Last Name'),
              SizedBox(height: 2.h),
              FormBuilderTextField(
                name: 'last name',
                decoration: InputDecoration(
                  hintText: 'Wick',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              const Text('Country'),
              SizedBox(height: 2.h),
              DropdownButtonFormField<String>(
                value: country_dropdownvalue,
                onChanged: (String? newvalue) {
                  setState(() {
                    country_dropdownvalue = newvalue!;
                  });
                },
                icon: SizedBox.shrink(),
                dropdownColor: AppColor.primarycolor,
                decoration: InputDecoration(border: OutlineInputBorder()),
                items: [
                  DropdownMenuItem<String>(
                      value: 'Canada', child: Text('Canada')),
                  DropdownMenuItem<String>(child: Text('Algeria')),
                ],
              ),
              SizedBox(height: 3.h),
              const Text('Email'),
              SizedBox(height: 2.h),
              FormBuilderTextField(
                name: 'Email',
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              const Text('Create a password'),
              SizedBox(height: 2.h),
              FormBuilderTextField(
                name: 'Password',
                decoration: InputDecoration(
                  hintText: 'Must be 8 characters',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              const Text('Confirm Password'),
              SizedBox(height: 2.h),
              FormBuilderTextField(
                name: 'Password confirm',
                decoration: InputDecoration(
                  hintText: 'Repeat Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp)),
                    value: ischecked,
                    onChanged: (bool? newvalue) {
                      setState(() {
                        ischecked = newvalue!;
                      });
                    },
                    activeColor: AppColor.secondarycolor,
                  ),
                  SizedBox(width: 1.w),
                  Text('I accept the terms and privacy policy'),
                ],
              ),
              SizedBox(height: 3.h),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.secondarycolor,
                    minimumSize: Size(90.w, 8.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Security()));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.primarycolor,
                        fontSize: 18.sp),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
