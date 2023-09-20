import 'package:flutter/material.dart';
import 'package:grandpharm/src/model/city_model.dart';
import 'package:grandpharm/src/ui/menu2/profile_screen.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';

class CityScreen extends StatelessWidget {
   CityScreen({Key? key}) : super(key: key);

  @override
  List <CityModel> data = [
    CityModel(city: 'Andijon viloyati', text: "Andijon",),
    CityModel(city: "Toshkent viloyati",text: "Toshkent",),
    CityModel(city: "Los Angeles shahri", text: "Los Angeles",),
    CityModel(city: "Mumbai shahri", text:  "Mumbai",),
    CityModel(city: "Parij shahri", text: "Parij",),
    CityModel(city:  "Milan shahri", text: "Milan",),
    CityModel(city:  "Berlin shahri",text: "Berlin",),
    CityModel(city:  "Madrid shahri",text: "Madrid",),
    CityModel(city:  "Rio-de Janeiro shahri", text: "Rio-de Janeiro"),
  ];
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        SizedBox(height: 40,),
        AppbarWidget(write: "Shahar", writing: "", onTap: (){
          Navigator.push(context, PageTransition(type: PageTransitionType.scale,alignment: Alignment.bottomCenter,child: ProfileScreen()));
        },),
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300]
          ),
          child: Row(children: [
            SizedBox(width: 12,),
            Icon(Icons.search,color: Colors.grey,),
            SizedBox(width: 20,),
            Expanded(child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Istash",
                hintStyle: Appstyle.sixteen(Colors.grey)
              ),
            ))
          ],),
        ),
        SizedBox(width: 375,
          height: 620,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(data[index].text,style: Appstyle.sixteen(Colors.black),),
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(data[index].city,style: Appstyle.fourteen(Colors.grey),),
                      ),
                      Spacer(),
                      Icon(Icons.location_on_outlined,color: Colors.blue,)
                    ],)
                  ],),
                );
              }),
        )
      ],),
    );
  }
}
