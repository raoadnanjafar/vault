import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

import 'fqa_screen.dart';

class CloudViewScreen extends StatefulWidget {
  const CloudViewScreen({Key? key}) : super(key: key);

  @override
  State<CloudViewScreen> createState() => _CloudViewScreenState();
}

class _CloudViewScreenState extends State<CloudViewScreen> {
  bool isSelected = false;
  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff283a68),
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: const Icon(CupertinoIcons.arrow_left, color: Colors.white)),
        title: const Text('Cloud Sync', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Wrap(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FQAScreen(),));
                  },
                  child: SizedBox(
                    height: 3.h,
                    width: 8.w,
                    child: Center(
                      child: Image.asset('assets/question.png',color: Colors.white),
                    ),
                  ),
                ),
                ],
            ),
          )
        ],
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            recommendContainer(
                image: 'assets/roborte.png',
                title: 'Cloud Sync',
                subtitle: 'Auto-sync is disabled',
                controller: _controller
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 12.h,
              width: 30.w,
              child: Center(
                child: Image.asset('assets/sync.png',fit: BoxFit.cover),
              ),
            ),
            Container(
              width: 100.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/check.png',height: 2.h,width: 6.w,),
                        SizedBox(width: 4.w,),
                        Container(
                            width: 50.w,
                            child: Text('Back up private date to Google Drive',style: TextStyle(fontSize: 12))),
                      ],
                    ),
                  SizedBox(
                    height: 1.h,
                  ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/check.png',height: 2.h,width: 6.w,),
                        SizedBox(width: 4.w,),
                        Container(
                            width: 50.w,
                            child: Text('Completely free',style: TextStyle(fontSize: 12))),
                      ],
                    ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/check.png',height: 2.h,width: 6.w,),
                        SizedBox(width: 4.w,),
                        Container(
                            width: 50.w,
                            child: Text('Automatic sync',style: TextStyle(fontSize: 12))),
                      ],
                    ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/check.png',height: 2.h,width: 6.w,),
                        SizedBox(width: 4.w,),
                        Container(
                            width: 50.w,
                            child: Text('Mass storage',style: TextStyle(fontSize: 12))),
                      ],
                    ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget recommendContainer({
  String? image,
  String? title,
  String? subtitle,
  ValueNotifier<bool>? controller
}){
  return Container(
    height: 12.h,
    width: 100.w,
    color: Colors.white,
    child: Column(
      children: [
        SizedBox(height: 1.h,),
        Padding(
          padding:  EdgeInsets.only(left: 13.w),
          child: Divider(
            thickness: 1,
            color: Colors.grey.shade200,
          ),
        ),
        Container(
          // height: 10.h,
          child: Row(
            children: [
              if(image != null)
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                      child: Image(image: AssetImage(image!),color: Color(0xff49568d),height: 3.5.h,),
                    ),
                  ),
                ),

              Expanded(
                flex: 10,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 1.5.h,),
                      if(title != null)
                        Text(
                          title!,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.sp
                          ),
                        ),
                      SizedBox(height: 0.5.h,),
                      if(subtitle != null)
                        Text(
                          subtitle!,
                          style: TextStyle(
                              color: Color(0xffc1c1c1),
                              fontSize: 11.sp
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if(controller != null)
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Center(
                      child: AdvancedSwitch(
                        controller: controller,
                        activeColor: Colors.green,
                        inactiveColor: Colors.grey,
                        // activeChild: Text('ON'),
                        // inactiveChild: Text('OFF'),
                        // activeImage: AssetImage('assets/images/on.png'),
                        // inactiveImage: AssetImage('assets/images/off.png'),
                        // borderRadius: BorderRadius.all(const Radius.circular(15)),
                        width: 9.w,
                        height: 2.h,
                        enabled: true,
                        disabledOpacity: 0.5,

                      ),
                    ),
                  ),
                )
            ],
          ),
        )
      ],
    ),
  );
}