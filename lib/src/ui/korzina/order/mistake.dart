import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/korzina/choose%20pharmacy/karta_screen.dart';
import 'package:grandpharm/src/ui/korzina/courier%202/without_courier_screen.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../courier 2/with_courier_screen.dart';

class Mistake extends StatefulWidget {
  const Mistake({Key? key}) : super(key: key);

  @override
  State<Mistake> createState() => _MistakeState();
}

class _MistakeState extends State<Mistake> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Buyurtma",style: Appstyle.eighteen(Colors.black),),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: "Kuryer",),
            Tab(text: "Kuryersiz",),
          ],),
        ),
          body: TabBarView(
            children: [
              WithCourierScreen(),
              WithOutCourierScreen(),
            ],
          )
      ),
    );
  }
}
