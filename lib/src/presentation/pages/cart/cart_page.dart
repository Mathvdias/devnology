import 'package:devnology/src/infra/models/products_model.dart';
import 'package:flutter/material.dart';

import '../../common/buttom_widget.dart';
import '../../common/colors.dart';
import 'widgets/product_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var totalProducts = 0.0;
  void getTotal() {
    totalProducts = ProductsModel.products
        .map((products) => products.price * 1)
        .reduce((value, element) => value + element);
  }

  @override
  void initState() {
    getTotal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Expanded(
            child: ListView.builder(
                itemCount: ProductsModel.products.length,
                itemBuilder: ((context, index) {
                  return ProductWidget(id: index);
                })),
          )
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      '\$ ${totalProducts.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
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
