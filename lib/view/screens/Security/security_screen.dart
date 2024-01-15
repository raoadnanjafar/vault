import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
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
        title: const Text('Security', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20)),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            SizedBox(height: 3.h,),
            ListTile(
              leading: Image.asset('assets/shield.png',fit: BoxFit.fill,height: 3.h,width: 6.w),
              title: const Text('Advanced Protection',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
              subtitle: const Text('Activate now.Perfect protection and more secure!',style: TextStyle(fontSize: 12)),
              trailing: Container(
                width: 16.w,
                height: 4.h,
                decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(4)),
                child: const Center(child: Text('Enable',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/shield.png',fit: BoxFit.fill,height: 3.h,width: 6.w),
              title: Text('Advanced Protection',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
              subtitle: Text('Activate now.Perfect protection and more secure!',style: TextStyle(fontSize: 12)),
              trailing: Container(
                width: 16.w,
                height: 4.h,
                decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text('Enable',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/shield.png',fit: BoxFit.fill,height: 3.h,width: 6.w),
              title: Text('Advanced Protection',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
              subtitle: Text('Activate now.Perfect protection and more secure!',style: TextStyle(fontSize: 12)),
              trailing: Container(
                width: 16.w,
                height: 4.h,
                decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text('Enable',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/shield.png',fit: BoxFit.fill,height: 3.h,width: 6.w),
              title: Text('Advanced Protection',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
              subtitle: Text('Activate now.Perfect protection and more secure!',style: TextStyle(fontSize: 12)),
              trailing: Container(
                width: 16.w,
                height: 4.h,
                decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text('Enable',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/shield.png',fit: BoxFit.fill,height: 3.h,width: 6.w),
              title: Text('Advanced Protection',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
              subtitle: Text('Activate now.Perfect protection and more secure!',style: TextStyle(fontSize: 12)),
              trailing: Container(
                width: 16.w,
                height: 4.h,
                decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text('Enable',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
