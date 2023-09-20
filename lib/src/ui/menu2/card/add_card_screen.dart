import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grandpharm/src/ui/menu2/card/card_second_screen.dart';
import 'package:grandpharm/src/widget/button_widget/button_widget.dart';

import '../../../widget/appbar/appbar_widget.dart';
import '../profile_screen.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextEditingController controll = TextEditingController();
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        SizedBox(height: 30,),
        AppbarWidget(write: "Karta qo'shish", writing: "", onTap: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context){
            return ProfileScreen();
          }));
        }),
        SizedBox(height: 24,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300]
          ),
          child: Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              controller: controller,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                  labelText: "Karta nomeri"
              ),
            ),
          ),),
        ),
        SizedBox(height: 12,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: 52,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300]
          ),
          child: Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              controller: controll,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Amal qilish muddati"
              ),
            ),
          ),),
        ),
        Spacer(),
        ButtonWidget(text: "Qo'shish", height: 52, circle: 8, horizontal: 15, width: MediaQuery.of(context).size.width,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CardSecondScreen();
              }));
            }, vertical: 20)
      ],),
    );
  }
}
