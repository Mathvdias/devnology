import 'package:flutter/material.dart';

import '../../common/buttom_widget.dart';
import '../../common/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 20),
            child: Text(
              "Cart",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.colorLightSecondary,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .11,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: const [
                    Text('Total'),
                    Text('\$ 2,237.79'),
                  ],
                ),
                ButtomWidget(
                  function: () {},
                  text: 'CHECKOUT',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
