import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textstyle/textstyle_widget.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 340,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
              SizedBox(width: 16,),
              Text("Sizni ma'lumotlaringiz",style: Appstyle.twenty(Colors.black),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10,top: 5),
                child: Text("O'zartirish",style: Appstyle.fourteen(Colors.blue),),
              ),
            ],),
            SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Aziza Umarova",style: Appstyle.sixteen(Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Ism",style: Appstyle.twelve(Colors.grey),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("+998 77 777 77 77",style: Appstyle.sixteen(Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("telefon raqami",style: Appstyle.twelve(Colors.grey),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Promokod",style: Appstyle.twenty(Colors.black),),
            ),
            SizedBox(height: 24,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Row(children: [
                  Container(
                    width: 312,
                    height: 60,
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5),
                        child: Text("Promokod",style: Appstyle.fifteen(Colors.black),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Faqat 1 promokodni ishlating",style: Appstyle.thirteen(Colors.black45),),
                      ),

                    ],),
                  ),
                  GestureDetector(onTap: (){},
                    child: Container(
                      margin: EdgeInsets.only(right: 14),
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)
                      ),
                      child: Center(child: Icon(CupertinoIcons.plus,color: Colors.blue,),),
                    ),
                  )
                ],)
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("To'lash usuli",style: Appstyle.twenty(Colors.black),),
            ),
        ],),
      );
  }
}
