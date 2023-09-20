import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/korzina/order/courier/courier_detail_screen.dart';
import 'package:grandpharm/src/ui/korzina/order/courier/delivery_screen.dart';
import 'package:grandpharm/src/widget/courier/courier_widget.dart';
import 'package:grandpharm/src/widget/courier/information_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/cupertino.dart';

import '../choose pharmacy/karta_screen.dart';

class WithCourierScreen extends StatefulWidget {
  const WithCourierScreen({Key? key}) : super(key: key);

  @override
  State<WithCourierScreen> createState() => _WithCourierScreenState();
}

class _WithCourierScreenState extends State<WithCourierScreen> {
  int _valu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Buyurtmani olish usullari",
                style: Appstyle.twenty(Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CourierWidget(),
            SizedBox(
              height: 20,
            ),
            InformationWidget(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                    value: 0,
                    groupValue: _valu,
                    onChanged: (valu) {
                      setState(() {
                        _valu = valu!;
                      });
                    }),
                Text(
                  'Naqd',
                  style: Appstyle.fifteen(Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _valu,
                    onChanged: (valu) {
                      setState(() {
                        _valu = valu!;
                      });
                    }),
                Text(
                  '8600 ****  **** 3285',
                  style: Appstyle.fifteen(Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 2,
                    groupValue: _valu,
                    onChanged: (valu) {
                      setState(() {
                        _valu = valu!;
                      });
                    }),
                Text(
                  "Karta qo'shing",
                  style: Appstyle.fifteen(Colors.black),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.grey,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Tovarlarni soni,donasi",
                  style: Appstyle.thirteen(Colors.grey),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    "3",
                    style: Appstyle.thirteen(Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Tovarlar narxi",
                  style: Appstyle.thirteen(Colors.grey),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    "50 000 so'm",
                    style: Appstyle.thirteen(Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Dostavka",
                  style: Appstyle.thirteen(Colors.grey),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    "0 so'm",
                    style: Appstyle.twelve(Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Jami",
                  style: Appstyle.sixteen(Colors.black),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    "50 000 so'm",
                    style: Appstyle.sixteen(Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "*При заказе более 150 000 сум доставка бесплатно",
                style: Appstyle.eleven(Colors.blue),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: CourierDetailScreen(),
                        alignment: Alignment.bottomCenter));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                  child: Text(
                    "Keyinchalik",
                    style: Appstyle.sixteen(Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
