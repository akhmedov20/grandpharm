import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../widget/textstyle/textstyle_widget.dart';

class KartaScreen extends StatefulWidget {
  const KartaScreen({Key? key}) : super(key: key);

  @override
  State<KartaScreen> createState() => _KartaScreenState();
}

class _KartaScreenState extends State<KartaScreen> {
  TextEditingController controller = TextEditingController();
  bool _BeenPressed = false;
  bool _BeenPresse = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 35,),
          Center(child: Text("Apteka tanlang",style: Appstyle.eighteen(Colors.black),),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Toshkent",style: Appstyle.thirteen(Colors.grey),),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chevron_down,color: Colors.grey,size: 16,))
            ],),
          SizedBox(height: 18,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(children: [
              SizedBox(width: 5,),
              GestureDetector(onTap: (){
                setState(() {
                  _BeenPresse = !_BeenPresse;
                });
              },
                child: Container(
                  width: 170,
                  height: 32,
                  decoration: BoxDecoration(
                    color: _BeenPresse ? Colors.white : Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Kartada",style: Appstyle.thirteen(
                      _BeenPresse ? Colors.blue : Colors.grey
                  ),),),
                ),
              ),
              SizedBox(width: 10,),
              GestureDetector(onTap: (){
                setState(() {
                  _BeenPressed = !_BeenPressed;
                });
              },
                child: Container(
                  width: 170,
                  height: 32,
                  decoration: BoxDecoration(
                    color: _BeenPressed ? Colors.white : Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Spisok",style: Appstyle.thirteen(
                  _BeenPressed ? Colors.blue : Colors.grey
                  ),),),
                ),
              ),
            ],),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
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
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Izlash",
                      hintStyle: Appstyle.fourteen(Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
            child: YandexMap(),
          )
        ],
      ),
    );
  }
}
