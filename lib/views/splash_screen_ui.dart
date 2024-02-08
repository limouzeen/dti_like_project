import 'package:dti_like_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 5
      ),
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_welcome.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'DTI Cake Shop',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                   shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 231, 65, 209), // Fluorescent Green Color
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              CircularProgressIndicator(
                color: Colors.pink,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              Text(
                'รวมร้านเค้กในตำนาน',
                  style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[300],
                ),
              ),
              Text(
                'Created by: Amarat DTI-SAU',
                  style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[300],
                ),
              ),
          ]
          ),
        ),
      ),
    );
  }
}