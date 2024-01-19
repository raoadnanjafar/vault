import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/app_color.dart';

class KeywordScreen extends StatefulWidget {
  const KeywordScreen({Key? key}) : super(key: key);

  @override
  State<KeywordScreen> createState() => _KeywordScreenState();
}

class _KeywordScreenState extends State<KeywordScreen> {
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      //Color(0xff283a68),
      appBar: AppBar(
        backgroundColor: appColor,
        //Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
        title: Text(
          'Random Keyword',
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
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w),
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
                          image: AssetImage('assets/kbbg.png'),
                          width: 8.w,
                          color: appColor,
                          //Color(0xff48568d)
                      ),
                      title: Text(
                        'Random keyword',
                        style: TextStyle(
                            color: appColor,
                            //Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text(
                        'Numeric keyword is randomly arranged to prevent others from peeping to ensure security password.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.sp
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
