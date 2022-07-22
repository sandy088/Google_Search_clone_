import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 25),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 15, top: 4),
          child: Image.asset(
            "assets/images/google-logo.png",
            height: 30,
            width: 92,
          ),
        ),

        const SizedBox(
          width: 27,
        ),

        Container(
          width: size.width* 0.45,
          height: 44,
          decoration: BoxDecoration(
            color: searchColor,
            borderRadius: BorderRadius.circular(22),
            border:  Border.all(
              color: searchColor,
            )

          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
              onFieldSubmitted: (query){
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      SearchScreen(start: "0", searchQuery: query),
                ),
              );
              },

              style: const TextStyle(fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset("assets/images/mic-icon.svg", height: 20, width: 20),
                        const SizedBox(width:20),
                        const Icon(Icons.search, color: blueColor,),
                      ],
                    ),
                  ),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
             
            ),
          ),
        )
      ]),
    );
  }
}
