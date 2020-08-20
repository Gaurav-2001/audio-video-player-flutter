import 'package:flutter/material.dart';
import 'package:task01_flutter/internal/songs.dart';

tf() {
  print("hi");
}

class offline_m extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 150,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.redAccent.shade100,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: Image.asset(
                    "assets/Yeh_jawani_hai_deewani.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => song1(),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 150,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.redAccent.shade100,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: Image.asset(
                    "assets/Safar.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => song2(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 150,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.redAccent.shade100,
                    width: 2,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: Image.asset(
                    "assets/thandi_hava.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => song3(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
