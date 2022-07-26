import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';
import 'package:google_clone/widgets/web/translation_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
              )),

              title: SizedBox(
                width: size.width*0.34,
                child: const DefaultTabController(
                  length: 2, 

                 
                  child:TabBar(
                    labelColor: blueColor,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: blueColor,
                    tabs: [
                    Tab(text: "All",),
                    Tab(text: "Images",)
                  ]) ,),
              ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/more-apps.svg',
                    color: primaryColor)),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0).copyWith(
                right: 10,
              ),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xff1A73Eb),
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Search(),
                      SizedBox(
                        height: 20,
                      ),
                      
                    ],
                  ),

                  if(KeyboardVisibilityProvider.isKeyboardVisible(context))
                  const MobileFooter(),
                ],
              ))
            ],
          ),
        ));
  }
}
