import 'package:flutter/material.dart';
import 'package:payment_page/component/historytable.dart';
import 'package:payment_page/component/infoCard.dart';
import 'package:payment_page/config/responsive.dart';
import 'package:payment_page/style/color.dart';
import 'component/appBarActionItm.dart';
import 'component/barChartcomponent.dart';
import 'component/header.dart';
import 'component/paymentdetailList.dart';
import 'component/sidemenu.dart';
import 'config/size_config.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 250,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  final ScaffoldState? scaffold =
                      _drawerKey.currentState?.widget as ScaffoldState?;
                  if (scaffold != null && scaffold.hasDrawer) {
                    scaffold.openDrawer();
                  }
                },
                icon: const Icon(Icons.menu, color: AppColors.black),
              ),
              actions: const [
                AppBarActionItems(),
              ],
            )
          : null,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.height,
                color: Colors.white,
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Header(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 4,
                      ),
                      SizedBox(
                        width: SizeConfig.width,
                        child: const Wrap(
                          spacing: 24,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            InfoCard(
                              icon: 'asset/card.png',
                              label: 'Transfer via \nCard number',
                              amount: '\$1200',
                            ),
                            InfoCard(
                              icon: 'asset/transfer.jpg',
                              label: 'Transfer via \nOnline Banks',
                              amount: '\$150',
                            ),
                            InfoCard(
                              icon: 'asset/bank.jpg',
                              label: 'Transfer \nSame Bank',
                              amount: '\$1500',
                            ),
                            InfoCard(
                              icon: 'asset/invoice.jpg',
                              label: 'Transfer to \nOther Bank',
                              amount: '\$1500',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 4,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(
                                  color: AppColors.secondary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '\$1500',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Past 30 days',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      Container(
                        height: 200,
                        child: const BarChartComponent(),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              color: AppColors.secondary,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Transactions of last 6 months',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      const HistoryTable(),
                      if (!Responsive.isDesktop(context)) const PaymentDetail(),
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: SizeConfig.height,
                    color: AppColors.secondaryBg,
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 30,
                    ),
                    child: const Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AppBarActionItems(),
                        PaymentDetail(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
