import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/catalog/catalog_screen.dart';
import 'package:grandpharm/src/ui/favourite/favourite_screen.dart';
import 'package:grandpharm/src/ui/korzina/korzina_screen.dart';
import 'package:grandpharm/src/ui/menu2/menu_screen.dart';
import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
  int selectedIndex=0;
class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle:  GoogleFonts.abel(textStyle:
        TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
        fixedColor: Colors.blue,
        currentIndex: selectedIndex,
        onTap: (i){
          setState(() {
          });
          selectedIndex = i;
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/home.svg"),label: 'Asosiy'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/medical2.svg"),label: 'Katalog'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/cart.svg"),label: 'Korzina'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/heart.svg"),label: 'Sevimlilar'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/grid.svg"),label: 'Menu'),
        ],
      ),
    );
  }
  List<Widget> screen = [
    HomeScreen(),
    CatalogScreen(),
    KorzinaScreen(),
    FavouritePage(),
    MenuScreen()

  ];
}
