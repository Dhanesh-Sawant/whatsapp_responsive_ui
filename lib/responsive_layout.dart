import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/web_screen_layout.dart';
import 'mobile_screen_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth >= 600){
            return WebScreenLayout();
          }
          else{
            return MobileScreenLayout();
          }
        }
    );
  }
}
