import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset("images/onboard.jpg", 
            height: MediaQuery.of(context).size.height/1.7,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.8),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                SizedBox(height: 20.0,),
                Text(
                  "Get The Latest And Updated\nNews Easily With Us",
                  textAlign: TextAlign.center,
                  style: TextStyle( color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20.0,),
                Image.asset("images/newspaper.png", height: 100, width: 100, fit: BoxFit.cover,),
                SizedBox(height: 20.0,),
                Container(
                  margin: EdgeInsets.only(left: 60.0, right: 60.0,),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration:BoxDecoration(color: Color(0xff32BBef), borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle( color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                      )
                    ),
                  ),
                )
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
