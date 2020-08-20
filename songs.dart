import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class song1 extends StatelessWidget {
  AudioPlayer advancedplayer1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/bg.jpg",
              ),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.blueAccent.shade100,
                BlendMode.plus,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ILLAHI",
                style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent.shade100,
                  fontSize: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.pinkAccent.shade400,
                    width: 4,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/Yeh_jawani_hai_deewani.jpg',
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Play',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer1 = await AudioCache().loop('illahi.mp3');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Pause',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer1.pause();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Resume',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer1.resume();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'stop',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer1.stop();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class song2 extends StatelessWidget {
  AudioPlayer advancedplayer2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/bg.jpg",
              ),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.blueAccent.shade100,
                BlendMode.plus,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SAFAR",
                style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent.shade100,
                  fontSize: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.pinkAccent.shade400,
                    width: 4,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/Safar.jpg',
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Play',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer2 = await AudioCache().loop('Safar.mp3');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Pause',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer2.pause();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Resume',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer2.resume();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'stop',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer2.stop();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class song3 extends StatelessWidget {
  AudioPlayer advancedplayer3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/bg.jpg",
              ),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.blueAccent.shade100,
                BlendMode.plus,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "THANDI HAWA",
                style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent.shade100,
                  fontSize: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.pinkAccent.shade400,
                    width: 4,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/thandi_hava.jpg',
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Play',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer3 =
                            await AudioCache().loop('ThandiHava.mp3');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Pause',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer3.pause();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'Resume',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer3.resume();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Card(
                        child: Text(
                          'stop',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        advancedplayer3.stop();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
