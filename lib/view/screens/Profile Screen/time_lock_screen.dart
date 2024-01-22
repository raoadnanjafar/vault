import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/app_color.dart';
import '../../../global_widget/global_textfield.dart';
import 'add_profile_screen.dart';

class TimeLockScreen extends StatefulWidget {
  const TimeLockScreen({Key? key}) : super(key: key);

  @override
  State<TimeLockScreen> createState() => _TimeLockScreenState();
}

class _TimeLockScreenState extends State<TimeLockScreen> {
  final _controller = ValueNotifier<bool>(false);
  int index = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9eaef),
      appBar: AppBar(
        backgroundColor: appColor,
        //Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 6.w,)),
        title: Text(
          'Time Lock',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              Container(
                height: index==1 && isSelected==true ? 33.h:14.3.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1,color: Colors.grey.shade300)
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        '13:19',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp
                        ),
                      ),
                      trailing: AdvancedSwitch(
                        controller: _controller,
                        activeColor: appColor,
                        //Colors.green,
                        inactiveColor: Colors.grey,
                        width: 9.w,
                        height: 2.h,
                        enabled: true,
                        disabledOpacity: 0.5,

                      ),
                    ),
                    //SizedBox(height: 2.h,),
                    index==1 && isSelected==true
                    ?Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
                          child: Row(
                            children: [
                              daysContainer(day: 'Sun'),
                              daysContainer(day: 'Mon'),
                              daysContainer(day: 'Tue'),
                              daysContainer(day: 'Wed'),
                              daysContainer(day: 'Thu'),
                              daysContainer(day: 'Fri'),
                              daysContainer(day: 'Sat'),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      insetPadding: const EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(5))),
                                      backgroundColor: Colors.white,
                                      surfaceTintColor: Colors.white,
                                      content: Container(
                                        height: 40.h,
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            SizedBox(height: 2.h,),
                                            Center(
                                              child: Text(
                                                'Enable Profiles',
                                                style: TextStyle(
                                                    color: appColor,
                                                    //Colors.black,
                                                    fontSize: 13.sp,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 2.h,),
                                            Divider(thickness: 1,color: Colors.grey.shade300,),
                                           // SizedBox(height: 2.h,),
                                            ListTile(
                                              leading: Image(
                                                image: AssetImage('assets/unlock.png'),
                                                width: 5.w,
                                                color: appColor,
                                                //Color(0xff283a68),
                                              ),
                                              title: Text(
                                                'Unlock All',
                                                style: TextStyle(
                                                  color: appColor,
                                                  //Colors.black,
                                                  fontSize: 10.sp
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              leading: Image(
                                                image: AssetImage('assets/user.png'),
                                                width: 5.w,
                                                color: appColor,
                                                //Color(0xff283a68),
                                              ),
                                              title: Text(
                                                'Guest',
                                                style: TextStyle(
                                                    color: appColor,
                                                    //Colors.black,
                                                    fontSize: 10.sp
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => AddProfileScreen(),));
                                              },
                                              child: ListTile(
                                                leading: Icon(
                                                  Icons.add,
                                                  color: Colors.grey.shade400,
                                                  size: 3.5.h,),
                                                title: Text(
                                                  'Add New Profile',
                                                  style: TextStyle(
                                                      color: appColor,
                                                      //Colors.black,
                                                      fontSize: 10.sp
                                                  ),
                                                ),
                                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey.shade400,size: 5.w,),
                                              ),
                                            ),
                                            SizedBox(height: 1.h,),
                                            Padding(
                                              padding:  EdgeInsets.symmetric(horizontal: 3.w),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 6.h,
                                                 // width: 41.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      border: Border.all(width: 1,color: Colors.grey.shade300)
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'CANCEL',
                                                      style: TextStyle(
                                                          fontSize: 13.sp,
                                                          color: Colors.grey.shade400,
                                                          fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 1.h,)

                                          ],
                                        ),

                                      ),

                                    );
                                  },);
                              },
                              child: ListTile(
                                leading: Text(
                                  'Unlock All',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: appColor,
                                      //Color(0xff00b7a5)
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffb8bac7),size: 5.w,),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 4.w),
                              child: CustomTextField(hintText: 'Label',),
                            ),
                            ListTile(
                              leading: Icon(Icons.delete,color: Color(0xffb8bac7),size: 8.w,),
                              trailing: GestureDetector(
                                  onTap: () {
                                    isSelected = false;
                                    setState(() {
                                    });
                                  },
                                  child: Icon(Icons.keyboard_arrow_up_sharp,color: Color(0xffb8bac7),size: 8.w,)),
                            )
                          ],
                        )
                      ],
                    )
                    :GestureDetector(
                      onTap: () {
                         index = 1;
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: ListTile(
                        leading: Container(
                          height: 2.5.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            color: Color(0xfff3f4f8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Never Repeat',
                              style: TextStyle(
                                  color: Color(0xff005e56).withAlpha(200),
                                  //Colors.grey,
                                  fontSize: 7.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        trailing:index==1 && isSelected==true ? Icon(Icons.keyboard_arrow_up_sharp,color: Color(0xffb8bac7),size: 8.w,) :Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffb8bac7),size: 8.w,),
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // Navigator.push(context, MaterialPageRoute(builder: (context) => AddProfileScreen(),));
        },
        child: Icon(Icons.add,color: Colors.white,size: 4.h,),
        backgroundColor: appColor,
        //Color(0xff283a68),
        // shape: BeveledRectangleBorder(
        //   //side: BorderSide.none,
        //     borderRadius: BorderRadius.circular(30)
        // ),
      ),
    );
  }

  Widget daysContainer({String? day}){
    return Row(
      children: [
        Container(
          height: 2.5.h,
          width: 8.w,
          decoration: BoxDecoration(
            color: Color(0xfff3f4f8),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              day!,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w,)
      ],
    );
  }

}
