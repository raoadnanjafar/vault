import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vault/view/screens/Home%20Screen/privacy_screens/privacy_recommended_screens.dart';

import '../../../global_widget/app_color.dart';
import '../../../global_widget/global_widget.dart';
import '../Profile Screen/profile_screen.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 2.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyRecommendedScreen(),));
            },
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                height: 6.h,
                width: 40.w,
                decoration: BoxDecoration(
                   color: appColor,
                   //Color(0xff005e56).withAlpha(450),
                    borderRadius: BorderRadius.circular(5)
                    ),
                child: Center(
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 1.h),
            child: Container(
              //height: 12.h,
              //color: Colors.grey.shade200,
              child: Column(
                children: [
                  SizedBox(height: 2.h,),
                  Row(
                    children: [
                      privacyContainer(color: Color(0xffff7767),text: 'Vault',image: 'assets/cameraabg.png'),
                      privacyContainer(color: Color(0xff09b7ee),text: 'Browser',image: 'assets/browbg.png'),
                    ],
                  ),
                  SizedBox(height: 1.5.h,),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                          },
                          child: privacyContainer(color: Color(0xff17a1fc),text: 'Profiles',image: 'assets/starsbg.png')),
                      privacyContainer(color: Color(0xff12c875),text: 'Security',image: 'assets/secbg.png'),
                    ],
                  ),
                  SizedBox(height: 1.5.h,),
                  Row(
                    children: [

                      privacyContainer(color: Color(0xff3be37d),text: 'Clean',image: 'assets/fanbg.png'),
                      privacyContainer(color: Color(0xffff6d19),text: 'Games',image: 'assets/gambg.png'),
                    ],
                  ),
                  SizedBox(height: 1.5.h,),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 5.w),
          //   child: Divider(
          //     thickness: 1,
          //     color: Colors.grey.shade300,
          //   ),
          // ),
          // SizedBox(height: 1.h,),
          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: 5.w),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           Text(
          //             'Recommended',
          //             style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 11.sp
          //             ),
          //           ),
          //           SizedBox(width: 2.w,),
          //           Container(
          //             // height: 4.h,
          //             //width: 20.w,
          //             decoration: BoxDecoration(
          //               color: Color(0xffccf0ee),
          //               borderRadius: BorderRadius.circular(6),
          //             ),
          //             child: Column(
          //               children: [
          //                 SizedBox(height: 0.3.h,),
          //                 Row(
          //                   children: [
          //                     SizedBox(width: 1.w,),
          //                     Icon(Icons.perm_identity,color: Color(0xff00b7a5),size: 2.3.h,),
          //                     SizedBox(width: 1.w,),
          //                     Text(
          //                       '> 80%',
          //                       style: TextStyle(
          //                           color: Color(0xff00b7a5),
          //                           fontSize: 9.sp
          //                       ),
          //                     ),
          //                     SizedBox(width: 1.w,),
          //                   ],
          //                 ),
          //                 SizedBox(height: 0.3.h,),
          //               ],
          //             ),
          //           )
          //         ],
          //       ),
          //       Icon(Icons.search,color: Color(0xffa9a9a9),),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
    //   Stack(
    //   children: [
    //     Column(
    //       children: [
    //         // Container(
    //         //   height: 3.h,
    //         //   color: Color(0xff009688),
    //         //   //Color(0xff283a68),
    //         // ),
    //         Padding(
    //           padding:  EdgeInsets.symmetric(horizontal: 1.h),
    //           child: Container(
    //             //height: 12.h,
    //             //color: Colors.grey.shade200,
    //             child: Column(
    //               children: [
    //                 SizedBox(height: 2.h,),
    //                 Row(
    //                   children: [
    //                     privacyContainer(color: Color(0xffff7767),text: 'Vault',image: 'assets/cameraabg.png'),
    //                     privacyContainer(color: Color(0xff09b7ee),text: 'Browser',image: 'assets/browbg.png'),
    //                     GestureDetector(
    //                         onTap: () {
    //                           Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
    //                         },
    //                         child: privacyContainer(color: Color(0xff17a1fc),text: 'Profiles',image: 'assets/starsbg.png')),
    //
    //                   ],
    //                 ),
    //                 SizedBox(height: 2.h,),
    //                 Row(
    //                   children: [
    //                     privacyContainer(color: Color(0xff12c875),text: 'Security',image: 'assets/secbg.png'),
    //                     privacyContainer(color: Color(0xff3be37d),text: 'Clean',image: 'assets/fanbg.png'),
    //                     privacyContainer(color: Color(0xffff6d19),text: 'Games',image: 'assets/gambg.png'),
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         SizedBox(height: 2.h,),
    //         Expanded(
    //             child: Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 0.5.h),
    //               child: Container(
    //                 child: SingleChildScrollView(
    //                   child: Padding(
    //                     padding:  EdgeInsets.symmetric(horizontal: 4.w),
    //                     child: Column(
    //                       children: [
    //                         SizedBox(height: 1.h,),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                           children: [
    //                             Row(
    //                               children: [
    //                                 Text(
    //                                   'Recommended',
    //                                   style: TextStyle(
    //                                     color: Colors.black,
    //                                     fontSize: 11.sp
    //                                   ),
    //                                 ),
    //                                 SizedBox(width: 2.w,),
    //                                 Container(
    //                                  // height: 4.h,
    //                                   //width: 20.w,
    //                                   decoration: BoxDecoration(
    //                                     color: Color(0xffccf0ee),
    //                                     borderRadius: BorderRadius.circular(6),
    //                                   ),
    //                                   child: Column(
    //                                     children: [
    //                                       SizedBox(height: 0.3.h,),
    //                                       Row(
    //                                         children: [
    //                                           SizedBox(width: 1.w,),
    //                                           Icon(Icons.perm_identity,color: Color(0xff00b7a5),size: 2.3.h,),
    //                                           SizedBox(width: 1.w,),
    //                                           Text(
    //                                             '> 80%',
    //                                             style: TextStyle(
    //                                                 color: Color(0xff00b7a5),
    //                                                 fontSize: 9.sp
    //                                             ),
    //                                           ),
    //                                           SizedBox(width: 1.w,),
    //                                         ],
    //                                       ),
    //                                       SizedBox(height: 0.3.h,),
    //                                     ],
    //                                   ),
    //                                 )
    //                               ],
    //                             ),
    //                             Icon(Icons.search,color: Color(0xffa9a9a9),),
    //                           ],
    //                         ),
    //                         GestureDetector(
    //                             onTap: () {
    //                               showDialog(
    //                                 context: context!,
    //                                 builder: (context) {
    //                                   return StatefulBuilder(
    //                                     builder: (context, setState) => AlertDialog(
    //                                     backgroundColor: Colors.white,
    //                                     surfaceTintColor: Colors.white,
    //                                       contentPadding: EdgeInsets.zero,
    //                                       insetPadding: const EdgeInsets.all(10),
    //                                       shape: RoundedRectangleBorder(
    //                                           borderRadius: BorderRadius.all(Radius.circular(5))),
    //                                     title: Center(
    //                                       child: Text(
    //                                         'Permission Required',
    //                                         style: TextStyle(
    //                                           fontSize: 12.sp,
    //                                           color: appColor,
    //                                           //Colors.black,
    //                                           fontWeight: FontWeight.bold
    //                                         ),
    //                                       ),
    //                                     ),
    //                                     content: Container(
    //                                       height: 44.h,
    //                                       //width: 95.w,
    //                                       child: Padding(
    //                                         padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
    //                                         child: Column(
    //                                           children: [
    //                                             Container(
    //                                               decoration: BoxDecoration(
    //                                                 borderRadius: BorderRadius.circular(5),
    //                                                 border: Border.all(width: 1,color: Colors.grey.shade300)
    //                                               ),
    //                                               child: Padding(
    //                                                 padding:  EdgeInsets.symmetric(horizontal: 2.w),
    //                                                 child: Column(
    //                                                   crossAxisAlignment: CrossAxisAlignment.end,
    //                                                   children: [
    //                                                     SizedBox(height: 1.h,),
    //                                                     Container(
    //                                                       height: 12.h,
    //                                                       child: Row(
    //                                                         crossAxisAlignment: CrossAxisAlignment.start,
    //                                                         children: [
    //                                                           Image(
    //                                                             image: AssetImage('assets/securityy.png'),
    //                                                             height: 10.h,
    //                                                             //color: appColor,
    //                                                           ),
    //                                                           //SizedBox(width: 2.w,),
    //                                                           Expanded(
    //                                                             child: Text(
    //                                                               'In android 5.0 or above,you must permit usage access for AppLock so that you can use AppLock features.',
    //                                                               maxLines: 4,
    //                                                               overflow: TextOverflow.ellipsis,
    //                                                               style: TextStyle(
    //                                                                   overflow: TextOverflow.ellipsis,
    //                                                                 color: Color(0xff434343),
    //                                                                 fontSize: 11.sp
    //                                                               ),
    //                                                             ),
    //                                                           )
    //                                                         ],
    //                                                       ),
    //                                                     ),
    //                                                     //SizedBox(height: 1.h,),
    //                                                     GestureDetector(
    //                                                       onTap: () {
    //                                                         Navigator.pop(context);
    //                                                         showDialog(
    //                                                           context: context!,
    //                                                           builder: (context) {
    //                                                             return StatefulBuilder(
    //                                                               builder: (context, setState) => AlertDialog(
    //                                                                 contentPadding: EdgeInsets.zero,
    //                                                                 insetPadding: const EdgeInsets.all(10),
    //                                                                 shape: RoundedRectangleBorder(
    //                                                                     borderRadius: BorderRadius.all(Radius.circular(5))),
    //                                                                 backgroundColor: Colors.white,
    //                                                                 surfaceTintColor: Colors.white,
    //                                                                 content: Container(
    //                                                                   height: 36.h,
    //                                                                   child: Column(
    //                                                                     children: [
    //                                                                       Container(
    //                                                                         height: 11.h,
    //                                                                         width: double.infinity,
    //                                                                         decoration: BoxDecoration(
    //                                                                             color: appColor,
    //                                                                             //Color(0xff283a68),
    //                                                                             borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
    //                                                                         ),
    //                                                                         child: Column(
    //                                                                           mainAxisAlignment: MainAxisAlignment.center,
    //                                                                           children: [
    //                                                                             Image(image: AssetImage('assets/vaultbg.png'),height: 4.5.h,),
    //                                                                             Text(
    //                                                                               'Notice',
    //                                                                               style: TextStyle(
    //                                                                                 color: Colors.white,
    //                                                                                 fontSize: 14.sp
    //                                                                               ),
    //                                                                             )
    //                                                                           ],
    //                                                                         ),
    //                                                                       ),
    //                                                                       SizedBox(height: 1.h,),
    //                                                                       Padding(
    //                                                                         padding:  EdgeInsets.symmetric(horizontal: 4.w),
    //                                                                         child: RichText(
    //                                                                           maxLines: 2,
    //                                                                           text: TextSpan(
    //                                                                             text: 'Have you enabled the',
    //                                                                               style: TextStyle(
    //                                                                                   color: Colors.black,
    //                                                                                   fontSize: 12.sp
    //                                                                               ),
    //                                                                             children: [
    //                                                                               TextSpan(
    //                                                                                 text: ' Allow AppLock to autostart.',
    //                                                                                 style: TextStyle(
    //                                                                                     color: appColor,
    //                                                                                     //Color(0xff4693e2),
    //                                                                                     fontSize: 12.sp,
    //                                                                                     fontWeight: FontWeight.bold
    //                                                                                 ),
    //                                                                               )
    //                                                                             ]
    //                                                                           ),
    //                                                                         ),
    //                                                                       ),
    //                                                                       SizedBox(height: 2.h,),
    //                                                                       Padding(
    //                                                                         padding: EdgeInsets.symmetric(horizontal: 4.w),
    //                                                                         child: Text(
    //                                                                           'The function light not be work properly if the required permission are not enabled.',
    //                                                                           style: TextStyle(
    //                                                                             fontSize: 12.sp,
    //                                                                             color: Colors.black
    //                                                                           ),
    //                                                                         ),
    //                                                                       ),
    //                                                                       SizedBox(height: 3.h,),
    //                                                                       Padding(
    //                                                                         padding:  EdgeInsets.symmetric(horizontal: 4.w),
    //                                                                         child: Row(
    //                                                                           children: [
    //                                                                             Container(
    //                                                                               height: 7.h,
    //                                                                               width: 41.w,
    //                                                                               decoration: BoxDecoration(
    //                                                                                 borderRadius: BorderRadius.circular(5),
    //                                                                                 color: Color(0xfffba631)
    //                                                                               ),
    //                                                                               child: Center(
    //                                                                                 child: Text(
    //                                                                                   'Disabled',
    //                                                                                   style: TextStyle(
    //                                                                                     fontSize: 13.sp,
    //                                                                                     color: Colors.white,
    //                                                                                     fontWeight: FontWeight.bold
    //                                                                                   ),
    //                                                                                 ),
    //                                                                               ),
    //                                                                             ),
    //                                                                             SizedBox(width: 4.w,),
    //                                                                             Container(
    //                                                                               height: 7.h,
    //                                                                               width: 41.w,
    //                                                                               decoration: BoxDecoration(
    //                                                                                   borderRadius: BorderRadius.circular(5),
    //                                                                                   color: Color(0xfffba631)
    //                                                                               ),
    //                                                                               child: Center(
    //                                                                                 child: Text(
    //                                                                                   'Enabled',
    //                                                                                   style: TextStyle(
    //                                                                                       fontSize: 13.sp,
    //                                                                                       color: Colors.white,
    //                                                                                       fontWeight: FontWeight.bold
    //                                                                                   ),
    //                                                                                 ),
    //                                                                               ),
    //                                                                             )
    //                                                                           ],
    //                                                                         ),
    //                                                                       ),
    //                                                                       SizedBox(height: 1.h,)
    //
    //                                                                     ],
    //                                                                   ),
    //
    //                                                                 ),
    //
    //                                                               ),);
    //                                                           },);
    //                                                       },
    //                                                       child: Container(
    //                                                         height: 5.h,
    //                                                         width: 25.w,
    //                                                         decoration: BoxDecoration(
    //                                                           color: Color(0xff00b6a7),
    //                                                           borderRadius: BorderRadius.circular(5)
    //                                                         ),
    //                                                         child: Center(
    //                                                           child: Text(
    //                                                             'PERMIT',
    //                                                             style: TextStyle(
    //                                                               fontSize: 12.sp,
    //                                                               color: Colors.white,
    //                                                               fontWeight: FontWeight.bold
    //                                                             ),
    //                                                           ),
    //                                                         ),
    //                                                       ),
    //                                                     ),
    //                                                     SizedBox(height: 1.h,),
    //                                                   ],
    //                                                 ),
    //                                               ),
    //                                             ),
    //                                             SizedBox(height: 2.h,),
    //                                             Container(
    //                                               decoration: BoxDecoration(
    //                                                   borderRadius: BorderRadius.circular(5),
    //                                                   border: Border.all(width: 1,color: Colors.grey.shade300)
    //                                               ),
    //                                               child: Padding(
    //                                                 padding:  EdgeInsets.symmetric(horizontal: 2.w),
    //                                                 child: Column(
    //                                                   crossAxisAlignment: CrossAxisAlignment.end,
    //                                                   children: [
    //                                                     SizedBox(height: 1.h,),
    //                                                     Container(
    //                                                       height: 12.h,
    //                                                       child: Row(
    //                                                         crossAxisAlignment: CrossAxisAlignment.start,
    //                                                         children: [
    //                                                           Image(
    //                                                             image: AssetImage('assets/securityy.png'),
    //                                                             height: 10.h,
    //                                                             //color: appColor,
    //                                                           ),
    //                                                           //SizedBox(width: 2.w,),
    //                                                           Expanded(
    //                                                             child: Text(
    //                                                               'In android 5.0 or above,you must permit usage access for AppLock so that you can use AppLock features.',
    //                                                               maxLines: 4,
    //                                                               overflow: TextOverflow.ellipsis,
    //                                                               style: TextStyle(
    //                                                                   overflow: TextOverflow.ellipsis,
    //                                                                   color: Color(0xff434343),
    //                                                                   fontSize: 11.sp
    //                                                               ),
    //                                                             ),
    //                                                           )
    //                                                         ],
    //                                                       ),
    //                                                     ),
    //                                                     //SizedBox(height: 1.h,),
    //                                                     Container(
    //                                                       height: 5.h,
    //                                                       width: 25.w,
    //                                                       decoration: BoxDecoration(
    //                                                           color: Color(0xff00b6a7),
    //                                                           borderRadius: BorderRadius.circular(5)
    //                                                       ),
    //                                                       child: Center(
    //                                                         child: Text(
    //                                                           'PERMIT',
    //                                                           style: TextStyle(
    //                                                               fontSize: 12.sp,
    //                                                               color: Colors.white,
    //                                                               fontWeight: FontWeight.bold
    //                                                           ),
    //                                                         ),
    //                                                       ),
    //                                                     ),
    //                                                     SizedBox(height: 1.h,),
    //                                                   ],
    //                                                 ),
    //                                               ),
    //                                             )
    //                                           ],
    //                                         ),
    //                                       ),
    //
    //                                     ),
    //
    //                                   ),);
    //                                 },);
    //                             },
    //                             child: settingContainer(image: 'assets/settings.png',title: 'Settings',subTitle: 'Prevent uninstalling force-stop application' )),
    //                         settingContainer(image: 'assets/notibg.png',title: 'Private Notification',subTitle: 'Protect notification of locked apps' ),
    //                         settingContainer(image: 'assets/uibg.png',title: 'System UI',subTitle: 'Prevent watch recent apps' ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //         )
    //       ],
    //     ),
    //     // Positioned(
    //     //   child: Padding(
    //     //     padding:  EdgeInsets.symmetric(horizontal: 4.w),
    //     //     child: Container(
    //     //       height: 13.h,
    //     //       decoration: BoxDecoration(
    //     //         color: Colors.white,
    //     //         borderRadius: BorderRadius.circular(5),
    //     //         border: Border.all(width: 0.5,color: Colors.grey.shade300)
    //     //       ),
    //     //       child: Center(
    //     //         child:  ListView(
    //     //           scrollDirection: Axis.horizontal,
    //     //           children: [
    //     //            rowContainer(color: Color(0xffff7767),text: 'Vault',image: 'assets/cameraabg.png'),
    //     //             rowContainer(color: Color(0xff09b7ee),text: 'Browser',image: 'assets/browbg.png'),
    //     //             GestureDetector(
    //     //                 onTap: () {
    //     //                   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
    //     //                 },
    //     //                 child: rowContainer(color: Color(0xff17a1fc),text: 'Profiles',image: 'assets/starsbg.png')),
    //     //             rowContainer(color: Color(0xff12c875),text: 'Security',image: 'assets/secbg.png'),
    //     //             rowContainer(color: Color(0xff3be37d),text: 'Clean',image: 'assets/fanbg.png'),
    //     //             rowContainer(color: Color(0xffff6d19),text: 'Games',image: 'assets/gambg.png'),
    //     //           ],
    //     //         ),
    //     //       ),
    //     //     ),
    //     //   ),
    //     // )
    //   ],
    // );
  }

  Widget rowContainer({String? image, Color? color, String? text}){
    return Row(
      children: [
        SizedBox(width: 5.w,),
        Padding(
          padding:  EdgeInsets.only(top: 10.0),
          child: Container(
            height: 12.h,
            width: 16.w,
            child: Column(
              children: [
                Container(
                  height: 5.5.h,
                  width: 17.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      //color,
                      //Color(0xffff7767),
                      border: Border.all(width: 1,color: Colors.grey.shade200,),
                      shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Image(image: AssetImage(image!),height: 4.h,color: appColor,),
                  ),
                ),

                Text(
                  text!,
                  style: TextStyle(
                      color: appColor,
                      //Colors.black,
                      fontSize: 11.sp
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget settingContainer({String? image,String? title, String? subTitle}){
    return Column(
      children: [
        SizedBox(height: 2.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(image: AssetImage(image!),height: 3.5.h),
                SizedBox(width: 4.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.sp
                      ),
                    ),
                    SizedBox(height: 0.5.h,),
                    Text(
                      subTitle!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.grey,
                          fontSize: 9.sp
                      ),
                    ),
                  ],
                )
              ],
            ),
            Icon(Icons.lock_open_outlined,color: Color(0xffe1e1e1),),
          ],
        ),
        SizedBox(height: 1.h,),
        Padding(
          padding:  EdgeInsets.only(left: 11.w),
          child: Divider(
            color: Color(0xffe6e6e6),
            thickness: 1,
          ),
        )
      ],
    );
  }

  Widget privacyContainer({String? image, Color? color, String? text}){
    return Row(
      children: [
        SizedBox(width: 2.5.w,),
        Padding(
          padding:  EdgeInsets.all(1.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Material(
              elevation: 1,
              child: Container(
                height: 22.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //color,
                  //Color(0xffff7767),
                  border: Border.all(width: 1,color: Colors.grey.shade200,),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(color: appColor,offset: Offset(1, 1),spreadRadius: 9,blurRadius: 5)
                  ]
                  //shape: BoxShape.circle
                ),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.h,),
                      Container(
                        height: 13.h,
                        width: 23.w,
                        color: appColor,
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     //color,
                        //     //Color(0xffff7767),
                        //     border: Border.all(width: 1,color: Colors.grey.shade200,),
                        //     //shape: BoxShape.circle
                        // ),
                        child: Center(
                          child: Image(image: AssetImage(image!),height: 6.h,color: Colors.white,),
                        ),
                      ),
                      SizedBox(height: 1.2.h,),
                      Expanded(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal:3.w),
                          child: Text(
                            text!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color:
                                //appColor,
                                Colors.black,
                                fontSize: 12.sp
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ),
            ),
          ),
        )
      ],
    );
  }

}
