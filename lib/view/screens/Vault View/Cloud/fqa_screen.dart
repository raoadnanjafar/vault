import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FQAScreen extends StatefulWidget {
  const FQAScreen({Key? key}) : super(key: key);

  @override
  State<FQAScreen> createState() => _FQAScreenState();
}

class _FQAScreenState extends State<FQAScreen> {
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
        title: const Text('FQA', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Wrap(
              children: [
                SizedBox(
                  height: 3.h,
                  width: 8.w,
                  child: Center(
                    child: Image.asset('assets/cloud.png',color: Colors.white),
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
        child: const Column(
          children: [
        ExpansionTile(
          childrenPadding: EdgeInsets.zero,
        leading: Text('1.',style: TextStyle(fontSize: 14)),
        title: Text("How do I change my sync account?",style: TextStyle(fontSize: 14)),
        trailing: Icon(Icons.arrow_forward_ios,size: 14),
        children: [
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 18.0),
             child: Text("Please open AppLock-Protect-Security Settings-Security Email, click the edit icon and select ADD Account.",
             style: TextStyle(fontSize: 14,color: Colors.grey),
             ),
           ),
        ],
      ),
            ExpansionTile(
              childrenPadding: EdgeInsets.zero,
              leading: Text('2.',style: TextStyle(fontSize: 14)),
              title: Text("What should i do if cloud sync fails?",style: TextStyle(fontSize: 14)),
              trailing: Icon(Icons.arrow_forward_ios,size: 14),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Please open AppLock-Protect-Security Settings-Security Email, click the edit icon and select ADD Account.",
                    style: TextStyle(fontSize: 14,color: Colors.grey),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              childrenPadding: EdgeInsets.zero,
              leading: Text('3.',style: TextStyle(fontSize: 14)),
              title: Text("Can I select Photos/Videos to sync?",style: TextStyle(fontSize: 14)),
              trailing: Icon(Icons.arrow_forward_ios,size: 14),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Please open AppLock-Protect-Security Settings-Security Email, click the edit icon and select ADD Account.",
                    style: TextStyle(fontSize: 14,color: Colors.grey),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              childrenPadding: EdgeInsets.zero,
              leading: Text('4.',style: TextStyle(fontSize: 14)),
              title: Text("How to stop cloud sync?",style: TextStyle(fontSize: 14)),
              trailing: Icon(Icons.arrow_forward_ios,size: 14),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Please open AppLock-Protect-Security Settings-Security Email, click the edit icon and select ADD Account.",
                    style: TextStyle(fontSize: 14,color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
