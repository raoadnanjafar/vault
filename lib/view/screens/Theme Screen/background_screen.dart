import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  State<BackgroundScreen> createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
      return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 1.w),
        child: Column(
          children: [
            SizedBox(height: 1.h,),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Image(image: AssetImage('assets/n11.png'),fit: BoxFit.cover,),
              ),
            )
          ],
        ),
      );
    },);
  }
}
