import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vault/view/screens/Home%20Screen/proect_screens/magic_screen.dart';
import 'package:vault/view/screens/Home%20Screen/proect_screens/recommanded_screen.dart';
import 'package:vault/view/screens/Home%20Screen/proect_screens/security_screen.dart';

import '../../../global_widget/custom_dialoge.dart';
import '../../../global_widget/global_widget.dart';
import '../Protect Screens/cover_screen.dart';
import '../Protect Screens/icon_screen.dart';
import '../Protect Screens/keyword_screen.dart';
import '../Protect Screens/security_setting.dart';
import '../Protect Screens/selfie_screen.dart';
import '../Protect Screens/unlock_setting.dart';


class ProtectScreen extends StatefulWidget {
  const ProtectScreen({Key? key}) : super(key: key);

  @override
  State<ProtectScreen> createState() => _ProtectScreenState();
}

class _ProtectScreenState extends State<ProtectScreen> {
  int index = 0;
  bool isSelected = false;



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 2.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendedScreen(),));
            },
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                height: 8.h,
                //index == 1 &&  isSelected==true? 55.h : 8.h,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade300,width: 0.5)
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 2.5.h,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
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
                           Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffb8bac7),size: 5.5.w,)
                          ],
                        ),
                      ),
                      // if(index == 1 &&  isSelected==true)
                      //   Column(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           customDialogue(
                      //               image: 'assets/security.png',
                      //               title: 'Advance Protection',
                      //               context: context,
                      //               buttonText: 'ACTIVATE',
                      //               content: 'The environmental protection essay is a great way to assist the little ones in understanding how to protect the environment.'
                      //           );
                      //         },
                      //         child: recommendContainer(
                      //             image: 'assets/roborte.png',
                      //             title: 'Advance Protection',
                      //             subtitle: 'Activate now, perfect protection and\nmore secure',
                      //             controller: _controller
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           customDialogue(
                      //               image: 'assets/security.png',
                      //               title: 'Keep Live',
                      //               context: context,
                      //               buttonText: 'ENABLE',
                      //               content: 'There is a famous proverb stating, “Health is Wealth,” which is self-explanatory.When we fall sick, it makes us irritated and unstable.'
                      //           );
                      //         },
                      //         child: recommendContainer(
                      //             image: 'assets/locbg.png',
                      //             title: 'Keep Live',
                      //             subtitle: 'Enable this feature can keep\nAppLock running stably and protect\nyour privacy continuously, highly\nrecommended!',
                      //             controller: _controllerKeep
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           customDialogue(
                      //               image: 'assets/battbg.png',
                      //               title: 'Power saving mode',
                      //               context: context,
                      //               buttonText: 'ACTIVATE',
                      //               content: 'Power saving mode is a tool that helps you extend the battery life of your Galaxy device by disabling certain functions, features or even apps, if you wish.'
                      //           );
                      //         },
                      //         child: recommendContainer(
                      //             image: 'assets/battery.png',
                      //             title: 'Power Saving Mode',
                      //             subtitle: 'Enable this service can decrease\n50% power usage and protect\nenvironment, highly recommended!',
                      //             controller: _controllerBattery
                      //         ),
                      //       )
                      //     ],
                      //   )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityScreens(),));
            },
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                height: 8.h,
                //index == 2&& isSelected==true ? 48.h : 8.h,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade300,width: 0.5)
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 2.5.h,),
                      Padding(
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
                            Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffb8bac7),size: 5.5.w,)
                          ],
                        ),
                      ),
                      // if(index == 2 &&  isSelected==true)
                      //   Column(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => UnlockSetting(),));
                      //         },
                      //         child: securityContainer(
                      //             image: 'assets/unlockbg.png',
                      //             title: 'Unlock Settings',
                      //             subtitle: 'Unlock mode: Pattern Lock'
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => SecuritySettingScreen(),));
                      //         },
                      //         child: securityContainer(
                      //             image: 'assets/locbg.png',
                      //             title: 'Security Settings',
                      //             subtitle: 'Update security email and question'
                      //         ),
                      //       ),
                      //       recommendContainer(
                      //           image: 'assets/fingerbg.png',
                      //           title: 'Use fingerprint',
                      //           controller: _controllerFinger
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => SelfieScreen(),));
                      //         },
                      //         child: securityContainer(
                      //             image: 'assets/perrbg.png',
                      //             title: 'Intruder Selfie',
                      //             subtitle: 'Take a photo of intruders'
                      //         ),
                      //       ),
                      //     ],
                      //   )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MagicScreen(),));
            },
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                height: 8.h,
                //index == 3&& isSelected==true ? 62.h : 8.h,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade300,width: 0.5)
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 2.5.h,),
                      Padding(
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
                            Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffb8bac7),size: 5.5.w,)
                          ],
                        ),
                      ),
                      // if(index == 3 &&  isSelected==true)
                      //   Column(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => IconScreen(),));
                      //         },
                      //         child: recommendContainer(
                      //             image: 'assets/maskbg.png',
                      //             title: 'Icon Camouflage',
                      //             subtitle: 'Disguise the AppLock icon as another icon',
                      //             controller: _controllerIcon
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => KeywordScreen(),));
                      //         },
                      //         child: recommendContainer(
                      //             image: 'assets/kbbg.png',
                      //             title: 'Random Keyboard',
                      //             subtitle: 'Numeric keyboard is randomly\narrange to prevent others form\npeeping to ensure password security ',
                      //             controller: _controllerKey
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => CoverScreen(),));
                      //         },
                      //         child: recommendContainer(
                      //             image: 'assets/eyesbg.png',
                      //             title: 'Cover',
                      //             subtitle: 'Apply cover to improve security',
                      //             controller: _controllerCover
                      //         ),
                      //       ),
                      //       recommendContainer(
                      //           image: 'assets/booksbg.png',
                      //           title: 'Animation',
                      //           subtitle: 'Show random animations when unlocking apps',
                      //           controller: _controllerAnim
                      //       )
                      //     ],
                      //   )

                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
        ],
      ),
    );
  }





}
