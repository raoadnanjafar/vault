import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vault/view/screens/Profile%20Screen/time_lock_screen.dart';

import '../../../global_widget/app_color.dart';
import 'add_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


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
        title: Text(
          'Profiles',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimeLockScreen(),));
            },
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: Image(image: AssetImage('assets/watch.png'),color: Colors.white,height: 2.5.h,),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              GestureDetector(
                onTap: () {
                  customDialogue(text: 'Unlock All');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300,width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage('assets/unlock.png'),
                      color: appColor,
                      //Color(0xff49568d),
                      height: 2.5.h,
                    ),
                    title: Text(
                      'Unlock All',
                      style: TextStyle(
                        color:
                        //appColor,
                        Colors.black,
                        fontSize: 12.sp
                      ),
                    ),
                    subtitle: Text(
                      'Click to unlock all apps.',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12.sp
                      ),
                    ),
                    trailing: Padding(
                      padding:  EdgeInsets.only(left: 4.w),
                      child: PopupMenuButton(
                        color: Colors.grey.shade400,

                        itemBuilder: (context) => [
                          PopupMenuItem(
                              child: Text(
                                'Shortcut',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black
                                ),
                              ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.h,),
              GestureDetector(
                onTap: () {
                  customDialogue(text: 'Guest');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300,width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage('assets/user.png'),
                      color: appColor,
                      //Color(0xff49568d),
                      height: 2.5.h,
                    ),
                    title: Text(
                      'Guest',
                      style: TextStyle(
                          color:
                          //appColor,
                          Colors.black,
                          fontSize: 12.sp
                      ),
                    ),
                    subtitle: Padding(
                      padding:  EdgeInsets.only(top: 0.5.h),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/playstore.png'),height: 1.7.h,),
                          SizedBox(width: 2.w,),
                          Image(image: AssetImage('assets/maps.png'),height: 1.7.h,),
                        ],
                      ),
                    ),
                    trailing: Padding(
                      padding:  EdgeInsets.only(left: 8.w),
                      child: PopupMenuButton(
                        color: Colors.grey.shade400,
                        //shadowColor: Colors.grey.shade200,
                        surfaceTintColor: Colors.white,
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text(
                              'Shortcut',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddProfileScreen(),));
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

  void customDialogue({String? text}){
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
            height: 20.h,
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Center(
                  child: Image(
                    image: AssetImage('assets/info.png'),
                    color: appColor,
                    //Color(0xff31d4ff),
                    height: 3.h,
                  ),
                ),
                SizedBox(height: 2.h,),
                Text(
                  'Do you want to activate $text ?',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,

                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 6.h,
                          width: 41.w,
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
                      SizedBox(width: 4.w,),
                      Container(
                        height: 6.h,
                        width: 41.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff00b7a5)
                        ),
                        child: Center(
                          child: Text(
                            'OK',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 1.h,)

              ],
            ),

          ),

        );
      },);
  }

}
