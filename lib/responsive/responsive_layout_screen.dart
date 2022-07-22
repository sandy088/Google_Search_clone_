import 'package:flutter/material.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final Widget mobileScreenLyout;
  final Widget webScreenLayout;

  const ResponsiveLayoutScreen({Key? key, required this.mobileScreenLyout, required this.webScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){

      if(constraints.maxWidth <=768){
        return mobileScreenLyout;
      }
      return webScreenLayout;
    },
    
    );
  }
}