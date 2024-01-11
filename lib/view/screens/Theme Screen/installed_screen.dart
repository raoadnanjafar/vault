import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InstalledScreen extends StatefulWidget {
  const InstalledScreen({Key? key}) : super(key: key);

  @override
  State<InstalledScreen> createState() => _InstalledScreenState();
}

class _InstalledScreenState extends State<InstalledScreen> {
  List<Widget> gridChild = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(2.w),
      child: Row(
        children: [
          GridView.count(
            crossAxisCount: 3,
            children: List.generate(gridChild.length, (index) => gridChild[index]),
          ),
          Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.white,width: 3)
            ),
          )
        ],
      ),
    );
  }
}
