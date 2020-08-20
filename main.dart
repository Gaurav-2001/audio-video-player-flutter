import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'internal/music_pages.dart';
import 'internal/offlinevideo.dart';
import 'internal/onlinevideo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(
      Colors.redAccent.shade100,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: GradientAppBar(
            title: Text(
              "SanGeet",
              style: GoogleFonts.dancingScript(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.redAccent.shade100,
                Colors.lightBlueAccent.shade100,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.queue_music),
                  text: "Play\nMusic",
                ),
                Tab(
                  icon: Icon(Icons.video_library),
                  text: "Play Offline\nVideo",
                ),
                Tab(
                  icon: Icon(Icons.video_library),
                  text: "Play Online\nVideo",
                )
              ],
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: TabBarView(
              children: [
                offline_m(),
                offline_v(),
                online_v(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
