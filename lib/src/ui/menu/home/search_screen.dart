import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../dialog/bottom-dialog/search_dialog.dart';
import '../../../widget/textstyle/textstyle_widget.dart';
import '../../drugs/drugs_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45,),
         Row(children: [
           Container(
             margin: EdgeInsets.only(left: 15),
             width: 239,
             height: 36,
             decoration: BoxDecoration(
                 color: Colors.grey[300],
                 borderRadius: BorderRadius.circular(10),
             ),
             child: Row(
               children: [
                 SizedBox(width: 15,),
                 Icon(Icons.search,color: Colors.grey,),
                 SizedBox(width: 10,),
                 Expanded(
                   child: TextField(
                     controller: _controller,
                     decoration: InputDecoration(
                       suffixIcon: IconButton(
                         onPressed: _controller.clear, icon: Icon(Icons.clear,color: Colors.grey,),
                       ),
                       border: InputBorder.none,
                       hintText: "Izlash",
                       hintStyle: TextStyle(color: Color(0xFF818C99)),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Spacer(),
           TextButton(onPressed: (){}, child: Text("Bekor qilish",style: Appstyle.seventeen(Colors.blue),))
         ],),
          SizedBox(height: 15,),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("So'rovlar tarixi",style: Appstyle.thirteen(Colors.black),),
            ),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.cancel_outlined,color: Colors.grey,))
          ],),
          GestureDetector(onTap: (){
            Navigator.push(context, PageTransition(type: PageTransitionType.fade,alignment: Alignment.bottomCenter,child: DrugsScreen()));
          },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 81,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFFB8C1CC)))
              ),
              child: Row(children: [
                SizedBox(width: 10,),
                Container(
                  width: 64,
                  height: 81,
                  child: SizedBox(height: 48,width: 48,child: Image.asset("assets/images/ayflox.png",fit: BoxFit.cover,),),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 213,
                  height: 81,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    SizedBox(height: 18,),
                    Text("АЙФЛОКС капли глазные 0,3% 5 мл",style: Appstyle.twelve(Colors.black),),
                    Text("Глазные и назальные капли",style: Appstyle.twelve(Colors.grey),),
                  ],),
                ),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.right_chevron,size: 20,))
              ],),
            ),
          ),
          SizedBox(height: 3,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 81,
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFFB8C1CC)))
            ),
            child: Row(children: [
              SizedBox(width: 10,),
              Container(
                width: 64,
                height: 81,
                child: SizedBox(height: 48,width: 48,child: Image.asset("assets/images/bifiform.png",fit: BoxFit.cover,),),
              ),
              SizedBox(width: 20,),
              Container(
                width: 213,
                height: 81,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  SizedBox(height: 18,),
                  Text("АЙФЛОКС капли глазные 0,3% 5 мл",style: Appstyle.twelve(Colors.black),),
                  Text("Глазные и назальные капли",style: Appstyle.twelve(Colors.grey),),
                ],),
              ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.right_chevron,size: 20,))
            ],),
          ),

        ],
      ),
    );
  }
}
