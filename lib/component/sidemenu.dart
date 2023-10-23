import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import '../config/size_config.dart';
import '../style/color.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.height,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Image.asset('asset/mac-action.jpg'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('asset/home.png'),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('asset/pie-chart.jpg'),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('asset/clipboard.jpg'),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('asset/credit.jpg'),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('asset/trophy.jpg'),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('asset/invoice.jpg'),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
