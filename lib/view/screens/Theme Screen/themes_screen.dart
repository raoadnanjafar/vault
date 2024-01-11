import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ThemesScreen extends StatefulWidget {
  const ThemesScreen({Key? key}) : super(key: key);

  @override
  State<ThemesScreen> createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 2.w),
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          childAspectRatio: 0.67,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0
        ),
        itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(height: 2.h,),
            Container(
              height: 32.h,
              width: 47.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.white,width: 3)
              ),
              child: Stack(
                children: [
                  Image(image: AssetImage('assets/n11.png'),fit: BoxFit.cover,),
                  Positioned(
                    top: 5.h,
                      left: 20.w,
                      child: Image(image: AssetImage('assets/vaultbg.png'),fit: BoxFit.cover,height: 5.h,width: 5.w,)),
                ],
              ),
            )
          ],
        );
      },),
    );
  }
}
