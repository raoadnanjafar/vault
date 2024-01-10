import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff283a68),
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                //height: 27.h,
                color: Color(0xff283a68),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(
                        children: [
                          Container(
                            height: 17.h,
                            width: 17.w,
                            decoration: BoxDecoration(
                                color: Color(0xff404c88),
                                shape: BoxShape.circle,
                                border: Border.all(width: 2,color: Color(0xff8794c8))
                            ),
                            child: Icon(Icons.person,size: 8.h,color: Colors.white,),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
                            height: 4.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              color: Color(0xff6c78b3),
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 28.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Row(
                            children: [
                              Container(
                                height: 20.h,
                                width: 28.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: Colors.grey.shade300)
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
                                            color: Color(0xff7b7b7b),
                                            fontSize: 12.sp
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Container(
                                height: 20.h,
                                width: 28.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: Colors.grey.shade300)
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
                                            color: Color(0xff7b7b7b),
                                            fontSize: 9.sp
                                        ),
                                      ),
                                      SizedBox(height: 1.h,),
                                      Text(
                                        'Quarterly',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff7b7b7b),
                                            fontSize: 12.sp
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Container(
                                height: 20.h,
                                width: 28.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: Colors.grey.shade300)
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
                                            color: Color(0xff7b7b7b),
                                            fontSize: 9.sp
                                        ),
                                      ),
                                      SizedBox(height: 1.h,),
                                      Text(
                                        'Yearly',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff7b7b7b),
                                            fontSize: 12.sp
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h,),
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
                                  SizedBox(height: 0.5.h,),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              )

            ],
          ),
          Positioned(
            top: 44.h,
              left: 23.w,
              child: Image(image: AssetImage('assets/recbg.png'),height: 3.h,color: Color(0xfff97a2a),),),
          Positioned(
            top: 44.5.h,
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
            top: 44.5.h,
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
          Positioned(
            top: 14.h,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                //height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.shade300,width: 1)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 1.h,),
                    Center(
                      child: Text(
                        'premium features',
                        style: TextStyle(
                          color: Color(0xffaab9de),
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
            ),
          )
        ],
      ),
    );
  }
  Widget adsContainer({String? image, String? text}){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
          Container(
            height: 17.h,
            width: 17.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffeff1fc),
            ),
            child: Center(
              child: Image(image: AssetImage(image!),height: 5.h,),
            ),
          ),
          //SizedBox(height: 1.h,),
          Padding(
            padding:  EdgeInsets.only(bottom: 5.h),
            child: Text(
              text!,
              style: TextStyle(
                  color: Color(0xffadb4c5),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
