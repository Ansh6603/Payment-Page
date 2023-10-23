import 'package:flutter/material.dart';
import 'package:payment_page/config/responsive.dart';

import '../style/color.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Payment Updates',
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.secondary,
                ),
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: Responsive.isDesktop(context) ? 1 : 2,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                contentPadding: const EdgeInsets.only(left: 40.0, right: 5),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: AppColors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: AppColors.white),
                ),
                prefixIcon: const Icon(Icons.search, color: AppColors.black),
                hintText: 'Search',
                hintStyle:
                    const TextStyle(color: AppColors.secondary, fontSize: 14)),
          ),
        )
      ],
    );
  }
}
