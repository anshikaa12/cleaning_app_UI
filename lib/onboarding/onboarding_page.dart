import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';
class onboardingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Material(
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
                "assets/cleaning.svg",
                fit: BoxFit.cover,
              ).pOnly(top: 80,bottom: 32),
                "Cleaning On Demand".text.center.extraBlack.xl3.makeCentered(),
              4.heightBox,
              "Book an appointment in less than 60 seconds and get on schedule as early as tomorrow"
                  .text
              .gray500
              .medium
              .center
              .makeCentered().p16(),
            ]),
          ),
          Positioned(
            child:Container(

              height: context.percentHeight * 12,
              child: VStack([
                HStack(
                  [
                    VxBox().square(5).gray500.roundedFull.make(),
                    10.widthBox,
                    VxBox().square(5).white.roundedFull.make(),
                    10.widthBox,
                    VxBox().square(5).gray500.roundedFull.make(),

                    ],
                  alignment: MainAxisAlignment.center,
                ).wFull(context),
                10.heightBox,
                Spacer(),
                ButtonBar(
                  alignment:MainAxisAlignment.spaceBetween,
                    children: [
                       FlatButton(onPressed: (){

                       }, child: "Skip".text.white.make()),
                  [
                     FlatButton(onPressed: (){

                     }, child: "Next".text.white.make(),).px2(),
                    SvgPicture.asset("assets/next.svg")
                  ].hStack()
                ],),

              ],
                crossAlignment: CrossAxisAlignment.center,
                alignment: MainAxisAlignment.start,
                ).wFull(context),
            ),
            bottom: 10,
          )
        ],
      ),
    );
  }
}
