import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/catalog/for%20men/for_men_screen.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class ProducterScreen extends StatefulWidget {
  const ProducterScreen({Key? key}) : super(key: key);

  @override
  State<ProducterScreen> createState() => _ProducterScreenState();
}

class _ProducterScreenState extends State<ProducterScreen> {
  bool firstvalue = false;
  bool secondvalue = false;
  bool thirdvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ishlab chiqaruvchilar",style: Appstyle.sixteen(Colors.black),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context){
            return MenScreen();
          }));
        },icon: Icon(CupertinoIcons.left_chevron),),
      ),
      body: Column(
        children: [
       Container(
         width: MediaQuery.of(context).size.width,
         height: 44,
         child: Row(children: [
           SizedBox(width: 20,),
           Text("Polisorb",style: Appstyle.fourteen(Colors.black),),
           Spacer(),
           Checkbox(
             value: firstvalue,
               checkColor: Colors.white,
               activeColor: Colors.blue,
               onChanged: (value){
             setState(() {
               firstvalue = value!;
             });
               },
           )
         ],),
       ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 44,
            child: Row(children: [
              SizedBox(width: 20,),
              Text("Farmstandart",style: Appstyle.fourteen(Colors.black),),
              Spacer(),
              Checkbox(
                value: secondvalue,
                checkColor: Colors.white,
                activeColor: Colors.blue,
                onChanged: (valu){
                  setState(() {
                    secondvalue = valu!;
                  });
                },
              )
            ],),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 44,
            child: Row(children: [
              SizedBox(width: 20,),
              Text("Silma",style: Appstyle.fourteen(Colors.black),),
              Spacer(),
              Checkbox(
                value: thirdvalue,
                checkColor: Colors.white,
                activeColor: Colors.blue,
                onChanged: (val){
                  setState(() {
                    thirdvalue = val!;
                  });
                },
              )
            ],),
          ),
        ],
      ),
    );
  }
}
