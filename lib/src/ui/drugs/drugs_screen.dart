import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/drugs/drugs_decribe_screen.dart';
import 'package:grandpharm/src/ui/drugs/drugs_instruction_screen.dart';
import 'package:grandpharm/src/ui/login/login_screen.dart';
import 'package:grandpharm/src/ui/menu/home/home_screen.dart';

import '../../widget/textstyle/textstyle_widget.dart';

class DrugsScreen extends StatefulWidget {
  const DrugsScreen({Key? key}) : super(key: key);

  @override
  State<DrugsScreen> createState() => _DrugsScreenState();
}

class _DrugsScreenState extends State<DrugsScreen> {
  @override
  bool _onPressed = false;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dorilar haqida ma'lumot",style: Appstyle.twenty(Colors.black),),
          bottom: TabBar(
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            tabs: [
            Tab(text: "Tavsifi",),
            Tab(text: "Instruksiya",),
          ],),
        ),
        body: TabBarView(
          children: [
            DrugsDescribeScreen(),
            DrugsInstructorScreen()
          ],
        )
      ),
    );
  }
}
