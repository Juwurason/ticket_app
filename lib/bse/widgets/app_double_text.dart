import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/bse/res/styles/app_styles.dart';
import 'package:mobile_app/screens/home/all_tickets.dart';

import '../utils/app_routes.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigTest,
      required this.smallTest,
      required this.func
      });
  final String bigTest;
  final String smallTest;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigTest,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: func,
          child: Text(smallTest,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
        )
      ],
    );
  }
}
