import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/textstyle/textstyle_widget.dart';

class ArticleDialog{
  static void articleskeletdialog(BuildContext context){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(100)
          )
      ),
      context: context,
      builder: (context) => Container(
        width: 375,
        height: 800,
        child: Column(
          children: [
            Container(
              width: 375,
              height: 270,
              child: Image.asset("assets/images/skelet.png",fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Container(
              width: 343,
              height: 86,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text("10 iyul",style: GoogleFonts.roboto(
                      textStyle: Appstyle.twelve(Colors.grey)
                  ),),
                ),
                SizedBox(height: 8,),
                Text("Недержание у взрослых: как сохранить здоровье",
                  style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),)
              ],),
            ),
            SizedBox(height: 15,),
            Container(
              width: 343,
              height: 417,
              child: Text("Вы когда-нибудь говорили о недержании с родными или друзьями? А с доктором? Эта тема кажется неудобной, и потому люди стесняются говорить о неприятных симптомах, столкнувшись с недержанием.Инконтиненция бывает не только у прикованных к постели людей с серьезными заболеваниями: подвижные женщины и мужчины тоже сталкиваются с недержанием мочи. Чтобы не бояться протекания или появления неприятного запаха в общественных местах, они используют специальные абсорбирующие изделия – урологические прокладки, вкладыши и подгузники-трусы.Если прокладки или вкладыши впитывают недостаточно, некоторые приобретают классические подгузники. Но классические подгузники из-за особенностей конструкции создают дискомфорт при ходьбе – сползают, расстегиваются, – а также выделяются под одеждой. Поэтому для подвижных женщин и мужчин созданы подгузники-трусы, которые похожи на обычное белье, незаметны под одеждой и не сковывают движений.",
                style: GoogleFonts.roboto(
                    textStyle: Appstyle.twelve(Colors.black)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  static void articlewomendialog(BuildContext context){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(100)
          )
      ),
      context: context,
      builder: (context) => Container(
        width: 375,
        height: 800,
        child: Column(
          children: [
            Container(
              width: 375,
              height: 270,
              child: Image.asset("assets/images/imagewomen.png",fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Container(
              width: 343,
              height: 86,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text("10 iyul",style: GoogleFonts.roboto(
                      textStyle: Appstyle.twelve(Colors.grey)
                  ),),
                ),
                SizedBox(height: 8,),
                Text("Недержание у взрослых: как сохранить здоровье",
                  style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),)
              ],),
            ),
            SizedBox(height: 15,),
            Container(
              width: 343,
              height: 417,
              child: Text("Вы когда-нибудь говорили о недержании с родными или друзьями? А с доктором? Эта тема кажется неудобной, и потому люди стесняются говорить о неприятных симптомах, столкнувшись с недержанием.Инконтиненция бывает не только у прикованных к постели людей с серьезными заболеваниями: подвижные женщины и мужчины тоже сталкиваются с недержанием мочи. Чтобы не бояться протекания или появления неприятного запаха в общественных местах, они используют специальные абсорбирующие изделия – урологические прокладки, вкладыши и подгузники-трусы.Если прокладки или вкладыши впитывают недостаточно, некоторые приобретают классические подгузники. Но классические подгузники из-за особенностей конструкции создают дискомфорт при ходьбе – сползают, расстегиваются, – а также выделяются под одеждой. Поэтому для подвижных женщин и мужчин созданы подгузники-трусы, которые похожи на обычное белье, незаметны под одеждой и не сковывают движений.",
                style: GoogleFonts.roboto(
                    textStyle: Appstyle.twelve(Colors.black)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}