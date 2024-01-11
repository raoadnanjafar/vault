import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void customDialogue({String? title,String? buttonText,BuildContext? context, String? content,String? image}){
  showDialog(
    context: context!,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Center(
          child: Image(image: AssetImage(image!),height: 7.h,),
        ),
        content: Container(
          height: 22.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  title!,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp
                  ),
                ),
              ),
              SizedBox(height: 1.h,),
              Text(
                content!,
                style: TextStyle(
                    color: Color(0xffa2a2a2),
                    fontSize: 10.sp
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 6.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2,color: Color(0xffe9eaee))
                      ),
                      child: Center(
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  Container(
                    height: 6.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                      color: Color(0xff00b7a5),
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(width: 2,color: Color(0xffe9eaee))
                    ),
                    child: Center(
                      child: Text(
                        buttonText!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),

        ),

      );
    },);
}