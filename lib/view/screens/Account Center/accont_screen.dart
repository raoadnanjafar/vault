import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/app_color.dart';

class AccountCenterScreen extends StatefulWidget {
  const AccountCenterScreen({Key? key}) : super(key: key);

  @override
  State<AccountCenterScreen> createState() => _AccountCenterScreenState();
}

class _AccountCenterScreenState extends State<AccountCenterScreen> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appColor,
        //Color(0xff283a68),
        leading:  GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 3.h,)),
        title: Text(
          'Account Center',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: 10.h,
              color: appColor,
              //Color(0xff283a68),
              child: Column(
                children: [
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 4.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1,color: Colors.green.shade200)
                          ),
                          child: CircleAvatar(
                            child: Center(
                              child: Icon(Icons.person,size: 7.5.h,color: Colors.white,),
                            ),
                            radius: 30,
                            backgroundColor: Color(0xff005e56),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Padding(
                          padding:  EdgeInsets.only(top: 2.h),
                          child: Container(
                            height: 4.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              color: Color(0xff005e56).withAlpha(200),
                              //Color(0xff6c78b3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Normal',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h,)
                ],
              ),
            ),
            Container(
              height: 29.h,
              child: Stack(
                children: [
                  Container(
                    height: 4.h,
                    color: appColor,
                  ),
                  Container(
                    height: 14.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 4.w),
                    child: Container(
                      //height: 30.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade300,width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 1.h,),
                          Center(
                            child: Text(
                              'premium features',
                              style: TextStyle(
                                  color: Color(0xff005e56).withAlpha(100),
                                  //Color(0xffaab9de),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          //SizedBox(height: 2.h,),
                          Row(
                            children: [
                              adsContainer(image: 'assets/noadds.png',text: 'No Ads'),
                              adsContainer(image: 'assets/shirtbg.png',text: 'Paid Themes'),
                              adsContainer(image: 'assets/fbbg.png',text: 'VIP Feedback'),

                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              height: 22.h,
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              index= 1;
                              setState(() {

                              });
                            },
                            child: Container(
                              height: 20.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width:index==1?2: 1,color: index==1 ? Color(0xfff97a2a) : Colors.grey.shade300)
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'FREE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfff97a2a),
                                          fontSize: 15.sp
                                      ),
                                    ),
                                    SizedBox(height: 1.h,),
                                    Text(
                                      '3-days trail',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff005e56).withAlpha(200),
                                          //Color(0xff7b7b7b),
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w,),
                          GestureDetector(
                            onTap: () {
                              index= 2;
                              setState(() {

                              });
                            },
                            child: Container(
                              height: 20.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width:index==2?2: 1,color: index==2 ? Color(0xfff97a2a) : Colors.grey.shade300)
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rs 850.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfff97a2a),
                                          fontSize: 15.sp
                                      ),
                                    ),
                                    SizedBox(height: 1.h,),
                                    Text(
                                      '\$5.99',
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          //fontWeight: FontWeight.bold,
                                          color: Color(0xff005e56).withAlpha(130),
                                          //Color(0xff7b7b7b),
                                          fontSize: 9.sp
                                      ),
                                    ),
                                    SizedBox(height: 1.h,),
                                    Text(
                                      'Quarterly',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff005e56).withAlpha(200),
                                          //Color(0xff7b7b7b),
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w,),
                          GestureDetector(
                            onTap: () {
                              index= 3;
                              setState(() {

                              });
                            },
                            child: Container(
                              height: 20.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width:index==3?2: 1,color: index==3 ? Color(0xfff97a2a) : Colors.grey.shade300)
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rs 850.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfff97a2a),
                                          fontSize: 15.sp
                                      ),
                                    ),
                                    SizedBox(height: 1.h,),
                                    Text(
                                      '\$23.99',
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          //fontWeight: FontWeight.bold,
                                          color: Color(0xff005e56).withAlpha(130),
                                          //Color(0xff7b7b7b),
                                          fontSize: 9.sp
                                      ),
                                    ),
                                    SizedBox(height: 1.h,),
                                    Text(
                                      'Yearly',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff005e56).withAlpha(200),
                                          //Color(0xff7b7b7b),
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 23.w,
                    child: Image(image: AssetImage('assets/recbg.png'),height: 3.h,color: Color(0xfff97a2a),),),
                  Positioned(
                    top: 0,
                    left: 51.w,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff97a2a),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 1.w,),
                            Text(
                              '-17%',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 9.sp
                              ),
                            ),
                            SizedBox(width: 1.w,),
                          ],
                        ),
                      ),
                    ),),
                  Positioned(
                    top: 0,
                    left: 83.w,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff97a2a),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 1.w,),
                            Text(
                              '-50%',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 9.sp
                              ),
                            ),
                            SizedBox(width: 1.w,),
                          ],
                        ),
                      ),
                    ),),
                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff97a2a),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 1.h,),
                      Text(
                        'SUBSCRIBE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15.sp
                        ),
                      ),
                      //SizedBox(height: 1.h,),
                      Text(
                        '3 days for free, then Rs 330.00 per month',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                            color: Color(0xfffeedcf),
                            fontSize: 10.sp
                        ),
                      ),
                      SizedBox(height: 1.h,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
              child: Text(
                'Safety starts with understanding how developers collect and share your data. Data privacy and security practices may vary based on your use, region, and age. The developer provided this information and may update it over time.',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  Widget adsContainer({String? image, String? text}){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 17.h,
            width: 17.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffeff1fc),
            ),
            child: Center(
              child: Image(image: AssetImage(image!),height: 5.h,color: appColor,),
            ),
          ),
          //SizedBox(height: 1.h,),
          Text(
            text!,
            style: TextStyle(
                color: Color(0xff005e56).withAlpha(120),
                //Color(0xffadb4c5),
                fontSize: 12.sp,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

}
