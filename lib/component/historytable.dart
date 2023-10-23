import 'package:flutter/material.dart';
import 'package:payment_page/config/size_config.dart';
import 'package:payment_page/data.dart';
import 'package:payment_page/style/color.dart';

import '../config/responsive.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width:
            Responsive.isDesktop(context) ? double.infinity : SizeConfig.width,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory.length,
            (index) => TableRow(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundImage:
                          NetworkImage(transactionHistory[index]["avatar"]!),
                    ),
                  ),
                  Text(
                    transactionHistory[index]['label']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary,
                    ),
                  ),
                  Text(
                    transactionHistory[index]['time']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary,
                    ),
                  ),
                  Text(
                    transactionHistory[index]['amount']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary,
                    ),
                  ),
                  Text(
                    transactionHistory[index]['status']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
