import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/menu2/profile_screen.dart';

import '../../widget/textfield/textfield_widget.dart';
import '../../widget/textstyle/textstyle_widget.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(children: [
            IconButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return ProfileScreen();
              }));
            }, icon: Icon(CupertinoIcons.left_chevron,color: Colors.blue,)),
            SizedBox(width: 80,),
            Text("Meni ma'lumotlarim",style: Appstyle.sixteen(Colors.black),),
            SizedBox(width: 33,),
            TextButton(onPressed: (){}, child: Text("Saqlash",style: Appstyle.sixteen(Colors.blue),),)
          ],),
          SizedBox(height: 15,),
          TextFieldWidget(text: "Ism",),
          SizedBox(height: 10,),
          TextFieldWidget(text: "Familiya",),
          SizedBox(height: 10,),
          TextFieldWidget(text: "Tug'ilgan sanangiz",),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 15,),
            Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = value!;
                  });
                }),
            Text("Erkak",style: Appstyle.twentyfour(Colors.black),),
            SizedBox(width: 130,),
            Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = value!;
                  });
                }),
            Text("Ayol",style: Appstyle.twentyfour(Colors.black),),
          ],),


        ],
      ),
    );
  }
}
