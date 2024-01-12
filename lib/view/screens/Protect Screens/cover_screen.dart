import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';


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
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        height: 70.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300,width: 1)
        ),
        child: Column(
          children: [
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: Color(0xff11192c),
                borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
              ),
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Fingerprint',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                      ),
                    ),
                    trailing: Padding(
                      padding:  EdgeInsets.only(top: 4.h),
                      child: AdvancedSwitch(
                        //controller: _controller,
                        activeColor: Colors.green,
                        inactiveColor: Colors.grey,
                        width: 9.w,
                        height: 2.h,
                        enabled: true,
                        disabledOpacity: 0.5,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        height: 70.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300,width: 1)
        ),
        child: Column(
          children: [
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
              ),
              child: Center(
                child: Container(
                  height: 13.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1,color: Colors.grey.shade300)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height:2.h),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            'Unfortunately, AppLock has stopped.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp
                            ),
                          ),
                        ),
                        SizedBox(height: 4.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Text(
                        'Ok',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 12.sp
                        ),),
                    )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'FC',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                      ),
                    ),
                    trailing: Padding(
                      padding:  EdgeInsets.only(top: 4.h),
                      child: AdvancedSwitch(
                        //controller: _controller,
                        activeColor: Colors.green,
                        inactiveColor: Colors.grey,
                        width: 9.w,
                        height: 2.h,
                        enabled: true,
                        disabledOpacity: 0.5,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9eaef),
      appBar: AppBar(
        backgroundColor: Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
        title: Text(
          'Cover',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/eyesbg.png'),width: 6.w,color: Color(0xff48568d),),
                      title: Text(
                        'Cover',
                        style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor:activePage == index? Colors.green:Colors.grey,
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
