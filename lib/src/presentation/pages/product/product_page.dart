import 'package:devnology/src/presentation/common/colors.dart';
import 'package:devnology/src/presentation/common/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/buttom_widget.dart';

class ProductPage extends StatefulWidget {
  final Product product;
  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  TabController? controller;
  int index = 0;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 26,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                widget.product.description,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .27,
              child: TabBarView(
                controller: controller,
                children: [
                  SvgPicture.asset(widget.product.image),
                  SvgPicture.asset(widget.product.image),
                  SvgPicture.asset(widget.product.image),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TabPageSelector(
                selectedColor: AppColors.colorLightPrimary,
                color: Colors.grey[300],
                controller: controller,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Price:',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Text(
                "\$ ${widget.product.price.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 10),
              child: Text(
                'About this item:',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                widget.product.about,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            )
          ],
        ),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * .37,
                  height: MediaQuery.of(context).size.height * .05,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      animationDuration: const Duration(milliseconds: 400),
                      backgroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SHARE THIS',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_up_rounded,
                            color: AppColors.colorLightPrimary,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                ButtomWidget(
                  function: () {},
                  text: 'ADD TO CART',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
