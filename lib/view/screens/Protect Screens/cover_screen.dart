import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../../global_widget/app_color.dart';
import 'cover_screens/cover_applock_screen.dart';
import 'cover_screens/scanner_screen.dart';


class CoverScreen extends StatefulWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  State<CoverScreen> createState() => _CoverScreenState();
}

class _CoverScreenState extends State<CoverScreen> {
  final _controller = ValueNotifier<bool>(false);
  final PageController _pageController = PageController(initialPage: 0);
  int activePage = 0;
  final List<Widget> pages = [
    ScannerScreen(),
    CoverAppLockScreen(),
  ];

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
          'Cover',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300,width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                          image: AssetImage('assets/eyesbg.png'),
                          width: 6.w,
                          color: appColor,
                          //Color(0xff48568d),
                        ),
                        title: Text(
                          'Cover',
                          style: TextStyle(
                            color: appColor,
                            //Colors.black,
                            fontSize: 12.sp,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text(
                          'Apply cover to improve security.',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.sp
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 70.3.h,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      activePage = value;
                    });
                  },
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return pages[index% pages.length];
                  },),
              ),
              SizedBox(height: 1.h,),
            ],
          ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              height: 5.h,
              child: Container(
                color: Color(0xffe9eaef),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(pages.length, (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: InkWell(
                    onTap: () {
                      _pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                    },
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor:activePage == index?
                      appColor
                      //Colors.green
                          :Colors.grey,
                    ),
                  ),
                  ),),
                ),
              )
          )
          // Center(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //         height: 3.h,
          //         width: 3.w,
          //         decoration: BoxDecoration(
          //           color:index==1?Colors.green: Colors.grey,
          //           shape: BoxShape.circle
          //         ),
          //       ),
          //       SizedBox(width: 4.w,),
          //       Container(
          //         height: 3.h,
          //         width: 3.w,
          //         decoration: BoxDecoration(
          //             color: index==2?Colors.green: Colors.grey,
          //             shape: BoxShape.circle
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
