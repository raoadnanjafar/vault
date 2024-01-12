import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

class CoverScreen extends StatefulWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  State<CoverScreen> createState() => _CoverScreenState();
}

class _CoverScreenState extends State<CoverScreen> {
  final _controller = ValueNotifier<bool>(false);

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
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: Container(
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
                                controller: _controller,
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
          ],
        ),
      ),
    );
  }
}
