import 'package:devnology/src/presentation/common/buttom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../navigation/bottom_navigation.dart';
import '../splash/splash_page.dart';

class FinishPage extends StatefulWidget {
  const FinishPage({super.key});

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 26,
        ),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const Spacer(flex: 3),
            SvgPicture.asset('assets/images/ok.svg'),
            const Spacer(),
            Text(
              "Order Placed!",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const Spacer(),
            Text(
              'Your order was placed successfully. For\nmore details, check All My Orders page\n                    under Profile tab',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const Spacer(),
            ButtomWidget(
                text: 'MY ORDERS', function: () => Navigator.pop(context)),
            const Spacer(flex: 7),
          ],
        ),
      ),
    );
  }
}
