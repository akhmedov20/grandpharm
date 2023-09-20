// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../button_widget/button_second_widget.dart';
// import '../textstyle/textstyle_widget.dart';
//
// class ZakazHistoryWidget extends StatefulWidget {
//   final String nomer;
//   final String data;
//   final String delivery;
//   final String image1;
//   final String image2;
//   final String image3;
//   final String image4;
//   const ZakazHistoryWidget({Key? key, required this.nomer, required this.data, required this.delivery, required this.image1, required this.image2, required this.image3, required this.image4}) : super(key: key);
//
//   @override
//   State<ZakazHistoryWidget> createState() => _ZakazHistoryWidgetState();
// }
//
// class _ZakazHistoryWidgetState extends State<ZakazHistoryWidget> {
//   bool _ontap = false;
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       margin: EdgeInsets.all(15),
//       width: 375,
//       height: 261,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//                 blurRadius: 2
//             )
//           ]
//       ),
//       child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
//         SizedBox(height: 10,),
//         Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: Text(nomer,style: Appstyle.seventeen(Colors.black),),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: Text("2 Iyun",style: Appstyle.thirteen(Colors.grey),),
//         ),
//         SizedBox(height: 16,),
//         Container(
//           margin: EdgeInsets.symmetric(horizontal: 15),
//           width: MediaQuery.of(context).size.width,
//           height: 1,
//           color: Colors.grey[300],
//         ),
//         SizedBox(height: 16,),
//         Row(children: [
//           SizedBox(width: 16,),
//           Text("Kuryer yetkazib berishi",style: Appstyle.seventeen(Colors.black),),
//           Spacer(),
//           ButtonSecondWidget(text: _ontap ? "Yetkazildi" : "Bekor qilindi", height: 22, circle: 5, horizontal: 10, width: 81,
//             onTap: (){
//               setState(() {
//                 _ontap = !_ontap;
//               });
//             }, vertical: 0, fontsize: 11, color: _ontap ? Colors.blue : Colors.grey,),
//         ],),
//         SizedBox(height: 16,),
//         Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: Text("Etkazib berish sanasi: 02-iyun 12:04",style: Appstyle.thirteen(Colors.black),),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: Text("62 000 so'm to'lanadi",style: Appstyle.thirteen(Colors.grey),),
//         ),
//         SizedBox(height: 5,),
//         Row(children: [
//           SizedBox(width: 15,),
//           SizedBox(width:56,height: 56,
//               child: Image.asset("assets/images/ayflox.png",)),
//           SizedBox(width: 15,),
//           SizedBox(width:56,height: 56,
//               child: Image.asset("assets/images/bifiform.png",)),
//         ],)
//       ],),
//     );
//   }
// }
