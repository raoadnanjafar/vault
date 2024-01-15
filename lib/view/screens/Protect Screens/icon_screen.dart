import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/custom_icon_dialogue.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({Key? key}) : super(key: key);

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
  final _controller = ValueNotifier<bool>(false);
  final compassController = ValueNotifier<bool>(false);
  final levelController = ValueNotifier<bool>(false);

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
          'Icon Camouflage',
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
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 1.h,),
                  Container(
                    // height: 10.h,
                    child: Row(
                      children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Image(image: AssetImage('assets/maskbg.png'),color: Color(0xff49568d),height: 3.h,),
                              ),
                            ),
                          ),

                        Expanded(
                          flex: 10,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                SizedBox(height: 1.h,),

                                  Text(
                                   'Icon Camouflage',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11.sp
                                    ),
                                  ),
                                SizedBox(height: 0.5.h,),
                                  Text(
                                    'Disguise the AppLock icon as another icon',
                                    style: TextStyle(
                                        color: Color(0xffc1c1c1),
                                        fontSize: 11.sp
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h,),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 1.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text(
                      'Options',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.sp
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  GestureDetector(
                    onTap: () {
                      customIconDialog(
                        context: context,
                        image: 'assets/calculator.png',
                        text: 'Calculator',
                      );
                    },
                    child: iconListTile(
                      image: 'assets/calculator.png',
                      title: 'Disguise as Calculator',
                      controller: _controller
                    ),
                  ),
                  //SizedBox(height: 1.h,),
                  Divider(thickness: 1,color: Colors.grey.shade300,),
                  SizedBox(height: 1.h,),
                  GestureDetector(
                    onTap: () {
                      customIconDialog(
                        context: context,
                        image: 'assets/compass.png',
                        text: 'Compass',
                      );
                    },
                    child: iconListTile(
                      image: 'assets/compass.png',
                      title: 'Disguise as Compass',
                      controller: compassController
                    ),
                  ),
                  Divider(thickness: 1,color: Colors.grey.shade300,),
                  SizedBox(height: 1.h,),
                  GestureDetector(
                    onTap: () {
                      customIconDialog(
                        context: context,
                        image: 'assets/level.png',
                        text: 'Spirit level',
                      );
                    },
                    child: iconListTile(
                        image: 'assets/level.png',
                        title: 'Disguise as Spirit level',
                        controller: levelController
                    ),
                  ),
                  SizedBox(height: 2.h,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget iconListTile({String? image,String? title, ValueNotifier<bool>? controller}){
    return ListTile(
      leading: Image(image: AssetImage(image!),width: 12.w,),
      title: Text(
        title!,
        style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold
        ),
      ),
      trailing: AdvancedSwitch(
        controller: controller,
        activeColor: Colors.green,
        inactiveColor: Colors.grey,
        width: 9.w,
        height: 2.h,
        enabled: true,
        disabledOpacity: 0.5,

      ),
    );
  }
}
