import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/korzina/order/courier/courier_detail_screen.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/cupertino.dart';
import '../choose pharmacy/karta_screen.dart';


class WithOutCourierScreen extends StatefulWidget {
  const WithOutCourierScreen({Key? key}) : super(key: key);

  @override
  State<WithOutCourierScreen> createState() => _WithOutCourierScreenState();
}

class _WithOutCourierScreenState extends State<WithOutCourierScreen> {
  int _valu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Buyurtmani olish usullari",style: Appstyle.twenty(Colors.black),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 16),
              width: 344,
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1
                    )
                  ]
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Kuryersiz",style: Appstyle.eighteen(Colors.black),),
                  ),
                  SizedBox(height: 5,),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    SizedBox(width: 16,),
                    Text("3",style: Appstyle.twelve(Colors.grey),),
                    SizedBox(width: 5,),
                    Text("tovar",style: Appstyle.twelve(Colors.grey),),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("Tahrirlash",style: Appstyle.twelve(Colors.blue),),
                    ),
                  ],),
                  Row(children: [
                    SizedBox(width: 10,),
                    Container(
                      width: 80,
                      height: 90,
                      child: Column(children: [
                        Container(width: 16,height: 16,margin: EdgeInsets.only(left: 50,top: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16)
                          ),child: Center(child: Text("x3",style: Appstyle.eleven(Colors.white),),),
                        ),
                        SizedBox(height: 66,width: 66,
                            child: Image.asset('assets/images/ayflox.png',fit: BoxFit.cover,))
                      ],),
                    ),
                    Container(
                      width: 80,
                      height: 90,
                      child: Column(children: [
                        Container(width: 16,height: 16,margin: EdgeInsets.only(left: 50,top: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16)
                          ),child: Center(child: Text("x2",style: Appstyle.eleven(Colors.white),),),
                        ),
                        SizedBox(height: 66,width: 66,
                            child: Image.asset('assets/images/bifiform.png',fit: BoxFit.cover,))
                      ],),
                    ),
                  ],),
                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child:  GestureDetector(onTap: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.scale,
                          alignment: Alignment.bottomCenter, child: KartaScreen()));

                    },
                      child: Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue
                        ),child: Center(child: Text("Aptekani tanlang",style: Appstyle.twelve(Colors.white),),),
                      ),
                    ),
                  )
                ],),
            ),
            SizedBox(height: 20,),
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
            SizedBox(height: 10,),
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
                  width: 310,
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
              ],),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("To'lash usuli",style: Appstyle.twenty(Colors.black),),
            ),
            SizedBox(height: 10,),
            Row(children: [
              Radio(
                  value: 0,
                  groupValue: _valu,
                  onChanged: (valu){
                    setState(() {
                      _valu = valu!;
                    });
                  }),
              Text('Naqd',style: Appstyle.fifteen(Colors.black),)
            ],),
            Row(children: [
              Radio(
                  value: 1,
                  groupValue: _valu,
                  onChanged: (valu){
                    setState(() {
                      _valu = valu!;
                    });
                  }),
              Text('8600 ****  **** 3285',style: Appstyle.fifteen(Colors.black),)
            ],),
            Row(children: [
              Radio(
                  value: 2,
                  groupValue: _valu,
                  onChanged: (valu){
                    setState(() {
                      _valu = valu!;
                    });
                  }),
              Text("Karta qo'shing",style: Appstyle.fifteen(Colors.black),),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.right_chevron,color: Colors.grey,))
            ],),
            SizedBox(height: 10,),
            Row(children: [
              SizedBox(width: 15,),
              Text("Tovarlarni soni,donasi",style: Appstyle.thirteen(Colors.grey),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("3",style: Appstyle.thirteen(Colors.grey),),
              ),
            ],),
            SizedBox(height: 15,),
            Row(children: [
              SizedBox(width: 15,),
              Text("Tovarlar narxi",style: Appstyle.thirteen(Colors.grey),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("50 000 so'm",style: Appstyle.thirteen(Colors.grey),),
              ),
            ],),
            SizedBox(height: 15,),
            Row(children: [
              SizedBox(width: 15,),
              Text("Dostavka",style: Appstyle.thirteen(Colors.grey),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("0 so'm",style: Appstyle.twelve(Colors.grey),),
              ),
            ],),
            SizedBox(height: 25,),
            Row(children: [
              SizedBox(width: 15,),
              Text("Jami",style: Appstyle.sixteen(Colors.black),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("50 000 so'm",style: Appstyle.sixteen(Colors.black),),
              ),
            ],),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("*При заказе более 150 000 сум доставка бесплатно",style: Appstyle.eleven(Colors.blue),),
            ),
            SizedBox(height: 48,),
            GestureDetector(onTap: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: CourierDetailScreen(),alignment: Alignment.bottomCenter));
            },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                ),child: Center(child: Text("Davom etish",style: Appstyle.sixteen(Colors.white),),),
              ),
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
