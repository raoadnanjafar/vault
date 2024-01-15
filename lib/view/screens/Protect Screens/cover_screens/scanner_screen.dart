import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
