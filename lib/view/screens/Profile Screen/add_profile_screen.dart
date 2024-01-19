import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/app_color.dart';

class AddProfileScreen extends StatefulWidget {
  const AddProfileScreen({Key? key}) : super(key: key);

  @override
  State<AddProfileScreen> createState() => _AddProfileScreenState();
}

class _AddProfileScreenState extends State<AddProfileScreen> {
  TextEditingController controller = TextEditingController();
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
            child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
        title: Container(
          height: 5.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
          ),
          child: TextField(
            style: TextStyle(fontSize: 12.sp),
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Add new profile',
                //labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey.shade300),
                hintStyle: TextStyle(fontSize: 10.sp,color: Colors.grey.shade400),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(left: 3.w,right: 2.w,bottom: 1.5.h),
                disabledBorder: InputBorder.none,
                //focusedBorder: InputBorder.none,
                //enabledBorder: InputBorder.none
            ),
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Icon(Icons.search,color: Colors.white,size: 6.w,)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 1.5.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Recommended',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp
                        ),
                      ),
                      SizedBox(width: 2.w,),
                      Container(
                        // height: 4.h,
                        //width: 23.w,
                        decoration: BoxDecoration(
                          color: Color(0xffccf0ee),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 0.3.h,),
                            Row(
                              children: [
                                SizedBox(width: 1.w,),
                                Icon(Icons.perm_identity,color: Color(0xff00b7a5),size: 2.5.h,),
                                SizedBox(width: 1.w,),
                                Text(
                                  '> 80%',
                                  style: TextStyle(
                                      color: Color(0xff00b7a5),
                                      fontSize: 9.sp
                                  ),
                                ),
                                SizedBox(width: 1.w,),
                              ],
                            ),
                            SizedBox(height: 0.3.h,),
                          ],
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.search,color: Color(0xffa9a9a9),),
                ],
              ),
            ),
             SizedBox(height: 1.h,),
            // Divider(
            //   thickness: 1,
            //   color: Colors.grey.shade400,
            // ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300,width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: Image(image: AssetImage('assets/settings.png'),height: 3.h,),
                  title: Text(
                    'Setting',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp
                    ),
                  ),
                  subtitle: Text(
                    'Prevent uninstalling or force-stop application.',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 9.sp
                    ),
                  ),
                  trailing: Icon(Icons.lock,color: Colors.grey.shade400,),
                ),
              ),
            ),
            // Padding(
            //   padding:  EdgeInsets.only(left: 15.w),
            //   child: Divider(
            //     thickness: 1,
            //     color: Colors.grey.shade400,
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 8.h,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 1.h,),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 15.w),
                  child: Container(
                    height: 6.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff00b7a5),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                Image(image: AssetImage('assets/unlock.png'), color: Color(0xff00b7a5),height: 3.h,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
