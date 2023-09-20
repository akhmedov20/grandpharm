import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/menu/home/search_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../dialog/bottom-dialog/search_dialog.dart';
import '../textstyle/textstyle_widget.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}
class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          width: 300,
          height: 52,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3
                )
              ]
          ),
          child: Row(
            children: [
              SizedBox(width: 15,),
              Icon(Icons.search,color: Colors.grey,),
              SizedBox(width: 10,),
              SizedBox(width: 200,
                child: TextField(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.theme,child: SearchScreen(),alignment: Alignment.bottomCenter));
                  },
                  controller: _controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Dori izlash",
                    hintStyle: Appstyle.fourteen(Colors.grey),
                  ),
                ),
              ),
              IconButton(onPressed: (){
                ThirdShowBottomDialog.thirdShowBottomDialog(context);
              }, icon: Icon(
                Icons.keyboard_voice,color: Colors.grey,size: 30,
              ))
            ],
          ),
        ),
        SizedBox(width: 25,),
        IconButton(onPressed: (){}, icon: Icon(
          Icons.print,color: Colors.blue,size: 30,
        ))
      ],
    );
  }
}
