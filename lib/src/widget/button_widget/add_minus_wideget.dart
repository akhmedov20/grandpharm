import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textstyle/textstyle_widget.dart';

class AddPlusWidget extends StatefulWidget {
  const AddPlusWidget({Key? key}) : super(key: key);

  @override
  State<AddPlusWidget> createState() => _AddPlusWidgetState();
}

class _AddPlusWidgetState extends State<AddPlusWidget> {
  void addq() {
    setState(() {
      _no++;
    });
  }
  void minusq() {
    setState(() {
      if (_no != 0)
        _no--;
    });
  }
  int _no = 0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(children: [
        GestureDetector(
          onTap: (){
            minusq();
          },
          child: Container(width: 34,height: 34,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue[700]
          ),child: Center(child: Icon(CupertinoIcons.minus,color: Colors.white,size: 24,),),),
        ),
        SizedBox(width: 120,),
        Text("$_no",style: Appstyle.seventeen(Colors.blue),),SizedBox(width: 5,), Text("dona",style: Appstyle.seventeen(Colors.blue),),
        Spacer(),
        GestureDetector(
          onTap: (){
            addq();
          },
          child: Container(width: 34,height: 34,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue[700]
          ),child: Center(child: Icon(CupertinoIcons.plus,color: Colors.white,size: 24,),),),
        ),
      ],),
    );
  }
}
