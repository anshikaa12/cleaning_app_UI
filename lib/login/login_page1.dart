import 'package:cleaning_app_ui/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class loginPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.deepPurpleAccent,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.85,
            child: VStack([
              SvgPicture.asset(
                "assets/vaccum.svg",
                fit: BoxFit.cover,
              ).py32(),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  contentPadding: Vx.m2,
                  border: OutlineInputBorder(),
                  labelText: "Email Address",
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  hintText: "abcd@gmail.com",
                ),
              ).p16(),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: Vx.m2,
                  border: OutlineInputBorder(),
                  labelText: "Email Password",
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                ),
              ).p16(),
              "Forgot Password?"
                  .text
                  .textStyle(context.captionStyle)
                  .make()
                  .objectCenterRight()
                  .p8(),
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>onboardingPage1()));
                },
                child: "Log In".text.bold.make(),
                color: Colors.deepPurple,
                textColor: Colors.white,
              ).wh(context.screenWidth, 48).p16(),
            ]),
          ),
          Positioned(
            child: VStack([
              HStack(
                [
                  SvgPicture.asset("assets/fb.svg"),
                  SvgPicture.asset("assets/google.svg"),
                  SvgPicture.asset("assets/twitter.svg"),
                ],
                alignment: MainAxisAlignment.center,
              ).wFull(context),
              5.heightBox,
              "Don't have an account"
                  .richText
                  .white
                  .center
                  .withTextSpanChildren([
                    "Sign up Here!".textSpan.color(Colors.orangeAccent).make()

              ]).makeCentered(),
            ],
            alignment: MainAxisAlignment.center,
            crossAlignment: CrossAxisAlignment.center,),
            bottom: 24,
          )
        ],
      ),
    );
  }
}
