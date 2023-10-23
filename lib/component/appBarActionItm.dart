import 'package:flutter/material.dart';

import '../style/color.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'asset/calendar.png',
            width: 20.0,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'asset/ring.jpg',
            width: 20.0,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 17,
          backgroundImage: NetworkImage(
            'https://www.investopedia.com/thmb/1WsvySVwOtar439kYEFtSwV3eDw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1395371348-a3f9430f269b4f73b2659fe10c21c88c.jpg',
          ),
        ),
        const Icon(
          Icons.arrow_downward_outlined,
          color: AppColors.black,
        ),
      ],
    );
  }
}
