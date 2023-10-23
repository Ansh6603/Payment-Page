import 'package:flutter/material.dart';

import '../style/color.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;
  const PaymentListTile({
    super.key,
    required this.icon,
    required this.amount,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      focusColor: Colors.grey,
      leading: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(icon),
      ),
      title: Text(
        label,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
      subtitle:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          'Sucessfully',
          style: TextStyle(fontSize: 12, color: AppColors.secondary),
        ),
        Text(
          amount,
          style: const TextStyle(
              fontSize: 16.0,
              color: AppColors.secondary,
              fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
