import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../style/color.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const InfoCard(
      {required this.icon, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 200),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(icon, width: 35),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.secondary,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
