import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:vault/view/screens/Vault%20Screen/audio_screen.dart';
import 'package:vault/view/screens/Vault%20Screen/photo_screen.dart';
import 'package:vault/view/screens/Vault%20Screen/video_screen.dart';

import '../../../global_widget/app_color.dart';

class VaultScreen extends StatefulWidget {
  const VaultScreen({Key? key}) : super(key: key);

  @override
  State<VaultScreen> createState() => _VaultScreenState();
}

class _VaultScreenState extends State<VaultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9eaef),
      appBar: AppBar(
        backgroundColor: appColor,
        //Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 6.w,)),
        title: Text(
          'Vault',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              children: [
                SvgPicture.asset('assets/svgs/nocloud.svg',color: Colors.white,),
                SizedBox(width: 4.w,),
                Icon(Icons.settings,color: Colors.white,),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoScreen(),));
                      },
                      child: Container(
                        height: 14.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300,width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 3.w),
                                child: Icon(Icons.image,color: appColor,size: 6.h,),
                              ),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                                      child: Text(
                                        '0',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    //SizedBox(height: 2.h,),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                                      child: Text(
                                        'Photo',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 11.sp,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  vaultContainer(
                    image: 'assets/video.png',
                    text: 'Video',
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen(),));
                    },
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  vaultContainer(
                      image: 'assets/hphon.png'
                      ,text: 'Audio',
                  ontap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AudioScreen(),));
                  },
                  ),
                  SizedBox(width: 3.w,),
                  vaultContainer(image: 'assets/file.png',text: 'File'),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  vaultContainer(image: 'assets/robote.png',text: 'APK'),
                  SizedBox(width: 3.w,),
                 // vaultContainer(image: 'assets/clean.png',text: 'Clean'),
                  Expanded(
                    child: Container(
                      height: 14.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300,width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 3.w),
                              child: Image(image: AssetImage('assets/clean.png'),height: 5.h,color: Colors.deepPurple,width: 11.w,),
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                                    child: Text(
                                      '83%',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  //SizedBox(height: 2.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                                    child: Text(
                                      'Clean',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget vaultContainer({String? image, String? text,Function()? ontap}){
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 14.h,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300,width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 3.w),
                  child: Image(image: AssetImage(image!),height: 5.h,color: appColor,width: 11.w,),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Text(
                          '0',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      //SizedBox(height: 2.h,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Text(
                          text!,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
