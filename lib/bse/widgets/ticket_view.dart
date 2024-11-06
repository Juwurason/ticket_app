import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/bse/res/styles/app_styles.dart';
import 'package:mobile_app/bse/widgets/app_layoutbuilder_widget.dart';
import 'package:mobile_app/bse/widgets/big.circle.dart';
import 'package:mobile_app/bse/widgets/big_dot.dart';
import 'package:mobile_app/bse/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return  SizedBox(
      width: size.width*0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: "NYC",),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                            children: [
                       const SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(
                            randomDivider: 6,
                          )
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.57,
                        child: const Icon(Icons.local_airport_rounded, color: Colors.white,)),)
                      ],)),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "NYC",),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  //show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //circles and dots
            Container(
              
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: false,),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 16,
                  width: 6,)),
                  BigCircle(isRight: true,)
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      Text(
                        "I May", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "08:00 AM", style: AppStyles.headLineStyle3
                          .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "23", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(height: 3,),
                  //show departure and destination names with time
                  Row(
                    children: [
                      Text(
                        "Date", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure time",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Number", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
