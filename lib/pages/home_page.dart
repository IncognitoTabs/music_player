import 'package:flutter/material.dart';
import 'package:music_player/utils/app_util.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
            .size(context.screenWidth, context.screenHeight)
            .withGradient(LinearGradient(
              colors: [
                AIColors.primaryColor1,
                AIColors.primaryColor2
              ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
        ))
        .make(),
          AppBar(
            title: "My Player".text.xl2.bold.white.make(),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ).h(100.0).p16()
      ],
      ),
    );
  }
}

