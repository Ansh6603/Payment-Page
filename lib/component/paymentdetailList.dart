import 'package:flutter/material.dart';
import 'package:payment_page/component/paymentlistTile.dart';
import 'package:payment_page/style/color.dart';

import '../config/size_config.dart';
import '../data.dart';

class PaymentDetail extends StatelessWidget {
  
  const PaymentDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical * 5),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15,
                  offset: Offset(10, 15),
                )
              ]),
          child: Image.asset('asset/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Activities',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            Text(
              '02 Mar 2021',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColors.secondary),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(
            recentActivities.length,
            (index) => PaymentListTile(
              icon: recentActivities[index]['icon']!,
              label: recentActivities[index]['label']!,
              amount: recentActivities[index]["amount"]!,
            ),
          ),
        )
      ],
    );
  }
}
