import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vault/view/screens/Home%20Screen/privacy_screen.dart';
import 'package:vault/view/screens/Home%20Screen/protect_screen.dart';

import '../../../global_widget/app_color.dart';
import '../Account Center/account_screen.dart';
import '../Setting Screen/setting_screen.dart';
import '../Theme Screen/theme_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //TabController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = TabController(length: 2, vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          width: 85.w,
          child: Column(
            children: [
              Container(
                height: 22.h,
                color: appColor,
                //Color(0xff283a68),
                child: Column(
                  children: [
                    SizedBox(height: 3.h,),
                    Row(
                     // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 4.w,),
                        Container(
                          height: 17.h,
                          width: 17.w,
                          decoration: BoxDecoration(
                            color: Color(0xff005e56),
                            //Color(0xff404c88),
                            shape: BoxShape.circle,
                            //border: Border.all(width: 2,color: Color(0xff8794c8))
                          ),
                          child: Align(
                            alignment: Alignment.center,
                              child: Icon(Icons.person,size: 7.8.h,color: Colors.white,)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountScreen(),));
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(top: 5.h,left: 4.w),
                            child: Text(
                              'Account Center',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 3.w,top: 4.3.h),
                          child: Icon(Icons.arrow_right,color: Color(0xff959db4),size: 4.5.h,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                },
                child: Padding(
                  padding:  EdgeInsets.only(left: 4.w),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/setbg.png'),
                        color: appColor,
                        //Color(0xff49568d),
                        height: 3.h,
                      ),
                      SizedBox(width: 2.w,),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: appColor,
                          //Color(0xff4b5683),
                          fontSize: 13.sp
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.only(left: 6.w),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up,
                      color: appColor,
                      //Color(0xff49568d),
                      size: 3.h,
                    ),
                    // Image(
                    //   image: AssetImage('assets/setbg.png'),
                    //   color: Color(0xff49568d),
                    //   height: 3.h,
                    // ),
                    SizedBox(width: 3.w,),
                    Text(
                      'Support us',
                      style: TextStyle(
                          color: appColor,
                          //Color(0xff4b5683),
                          fontSize: 13.sp
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.only(left: 5.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      color: appColor,
                      //Color(0xff49568d),
                      size: 3.3.h,
                    ),
                    // Image(
                    //   image: AssetImage('assets/setbg.png'),
                    //   color: Color(0xff49568d),
                    //   height: 3.h,
                    // ),
                    SizedBox(width: 3.5.w,),
                    Text(
                      'Share',
                      style: TextStyle(
                          color: appColor,
                          //Color(0xff4b5683),
                          fontSize: 13.sp
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.only(left: 6.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: appColor,
                      //Color(0xff49568d),
                      size: 3.h,
                    ),
                    // Image(
                    //   image: AssetImage('assets/setbg.png'),
                    //   color: Color(0xff49568d),
                    //   height: 3.h,
                    // ),
                    SizedBox(width: 3.5.w,),
                    Text(
                      'Contact us',
                      style: TextStyle(
                          color: appColor,
                          //Color(0xff4b5683),
                          fontSize: 13.sp
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 22.h,
                  color: Color(0xff009688),
                  //Color(0xff283a68),
                  child: Column(
                    children: [
                      SizedBox(height: 7.h,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _scaffoldKey.currentState!.openDrawer();
                                  },
                                    child: Icon(Icons.dehaze_rounded,color: Colors.white,size: 3.h,)),
                                SizedBox(width: 5.w,),
                                Text(
                                  'AppLock',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),


                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountScreen(),));
                                  },
                                  child: Container(
                                    height: 3.h,
                                    width: 5.w,
                                    //color: Color(0xff283a68),
                                    child: Image(
                                      image: AssetImage('assets/tajjjj.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6.w,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThemeScreen(),));
                                  },
                                  child: Container(
                                    height: 3.h,
                                    width: 5.w,
                                    //color: Color(0xff283a68),
                                    child: Image(
                                      image: AssetImage('assets/roborte.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Container(
                         // height: 5.h,
                         // width: 80.w,
                        //color: Color(0xff283a68),
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.white,
                          labelColor: Colors.white,
                          //isScrollable: true,
                          //indicatorWeight: 0.5.h,
                          //indicatorColor: Colors.white,
                          //controller: _controller,
                          dividerColor: Color(0xff009688),
                          //Color(0xff283a68),
                          //unselectedLabelColor: Colors.grey.shade200,
                         // labelPadding: EdgeInsets.only(right: 24.w,left: 18.w),
                          //padding: EdgeInsets.only(left: 10.w),
                          tabs: [
                            Text(
                              'Privacy',
                              style: TextStyle(color: Colors.white,fontSize: 12.sp ),
                            ),
                            // Tab(
                            //   text: 'Privacy',
                            // ),
                            // Tab(
                            //   text: 'Protect',
                            // ),
                            Text(
                              'Protect',
                              style: TextStyle(color: Colors.white,fontSize: 12.sp ),
                            )
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      //controller: _controller,
                      children: [
                        PrivacyScreen(),
                        ProtectScreen(),
                      ],
                    )
                )
                // Container(
                //   height: 15.h,
                //   color: Colors.grey.shade200,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
