import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class ProtectScreen extends StatefulWidget {
  const ProtectScreen({Key? key}) : super(key: key);

  @override
  State<ProtectScreen> createState() => _ProtectScreenState();
}

class _ProtectScreenState extends State<ProtectScreen> {
  int index = 0;
  bool isSelected = false;
  final _controller = ValueNotifier<bool>(false);
  final _controllerKeep = ValueNotifier<bool>(false);
  final _controllerBattery = ValueNotifier<bool>(false);
  final _controllerFinger = ValueNotifier<bool>(false);
  final _controllerIcon = ValueNotifier<bool>(false);
  final _controllerKey = ValueNotifier<bool>(false);
  final _controllerCover = ValueNotifier<bool>(false);
  final _controllerAnim = ValueNotifier<bool>(false);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Container(
                    height: index == 1 &&  isSelected==true? 55.h : 8.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300,width: 0.5)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 2.h,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: GestureDetector(
                              onTap: () {
                                index = 1;
                                setState(() {
                                  isSelected = !isSelected;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('assets/recbg.png'),height: 3.h,color: Color(0xff00b7a5),),
                                      SizedBox(width: 3.w,),
                                      Text(
                                        'Recommended',
                                        style: TextStyle(
                                            color: Color(0xff00b7a5),
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  index == 1&& isSelected==true?
                                  Icon(Icons.keyboard_arrow_up_sharp,color: Color(0xffb8bac7),size: 8.w,)
                                      :Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffb8bac7),size: 8.w,)
                                ],
                              ),
                            ),
                          ),
                          if(index == 1 &&  isSelected==true)
                            Column(
                              children: [
                               recommendContainer(
                                 image: 'assets/roborte.png',
                                 title: 'Advance Protection',
                                 subtitle: 'Activate now, perfect protection and\nmore secure',
                                 controller: _controller
                               ),
                                recommendContainer(
                                    image: 'assets/locbg.png',
                                    title: 'Keep Live',
                                    subtitle: 'Enable this feature can keep\nAppLock running stably and protect\nyour privacy continuously, highly\nrecommended!',
                                    controller: _controllerKeep
                                ),
                                recommendContainer(
                                    image: 'assets/battery.png',
                                    title: 'Power Saving Mode',
                                    subtitle: 'Enable this service can decrease\n50% power usage and protect\nenvironment, highly recommended!',
                                    controller: _controllerBattery
                                )
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Container(
                    height:index == 2&& isSelected==true ? 48.h : 8.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade300,width: 0.5)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 2.h,),
                          GestureDetector(
                            onTap: () {
                              index = 2;
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('assets/secbg.png'),height: 3.h,color: Color(0xff00b7a5),),
                                      SizedBox(width: 3.w,),
                                      Text(
                                        'Security',
                                        style: TextStyle(
                                            color: Color(0xff00b7a5),
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  index == 2&& isSelected==true?
                                  Icon(Icons.keyboard_arrow_up_sharp,color: Color(0xffb8bac7),size: 8.w,)
                                      :Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffb8bac7),size: 8.w,)
                                ],
                              ),
                            ),
                          ),
                          if(index == 2 &&  isSelected==true)
                            Column(
                              children: [
                                securityContainer(
                                  image: 'assets/unlockbg.png',
                                  title: 'Unlock Settings',
                                  subtitle: 'Unlock mode: Pattern Lock'
                                ),
                                securityContainer(
                                    image: 'assets/locbg.png',
                                    title: 'Security Settings',
                                    subtitle: 'Update security email and question'
                                ),
                                recommendContainer(
                                    image: 'assets/fingerbg.png',
                                    title: 'Use fingerprint',
                                  controller: _controllerFinger
                                ),
                                securityContainer(
                                    image: 'assets/perrbg.png',
                                    title: 'Intruder Selfie',
                                    subtitle: 'Take a photo of intruders'
                                ),
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Container(
                    height: index == 3&& isSelected==true ? 62.h : 8.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade300,width: 0.5)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 2.h,),
                          GestureDetector(
                            onTap: () {
                              index = 3;
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('assets/magic.png'),height: 3.h,color: Color(0xff00b7a5),),
                                      SizedBox(width: 3.w,),
                                      Text(
                                        'Magic',
                                        style: TextStyle(
                                            color: Color(0xff00b7a5),
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  index == 3&& isSelected==true?
                                  Icon(Icons.keyboard_arrow_up_sharp,color: Color(0xffb8bac7),size: 8.w,)
                                      :Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffb8bac7),size: 8.w,)
                                ],
                              ),
                            ),
                          ),
                          if(index == 3 &&  isSelected==true)
                            Column(
                              children: [
                                recommendContainer(
                                  image: 'assets/maskbg.png',
                                  title: 'Icon Camouflage',
                                  subtitle: 'Disguise the AppLock icon as another icon',
                                  controller: _controllerIcon
                                ),
                                recommendContainer(
                                    image: 'assets/kbbg.png',
                                    title: 'Random Keyboard',
                                    subtitle: 'Numeric keyboard is randomly\narrange to prevent others form\npeeping to ensure password security ',
                                    controller: _controllerKey
                                ),
                                recommendContainer(
                                    image: 'assets/eyesbg.png',
                                    title: 'Cover',
                                    subtitle: 'Apply cover to improve security',
                                    controller: _controllerCover
                                ),
                                recommendContainer(
                                    image: 'assets/booksbg.png',
                                    title: 'Animation',
                                    subtitle: 'Show random animations when unlocking apps',
                                    controller: _controllerAnim
                                )
                              ],
                            )

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget recommendContainer({
    String? image,
    String? title,
    String? subtitle,
    ValueNotifier<bool>? controller
}){
    return Column(
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
    );
  }

  Widget securityContainer({
    String? image,
    String? title,
    String? subtitle,

  }){
    return Column(
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
                      Text(
                        title!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.sp
                        ),
                      ),
                      SizedBox(height: 0.5.h,),
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
              Expanded(
                flex: 3,
                child: Container(
                ),
              )
            ],
          ),
        )
      ],
    );
  }

}
