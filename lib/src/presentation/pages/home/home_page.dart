import 'package:devnology/src/infra/models/products_model.dart';
import 'package:devnology/src/presentation/common/category_list.dart';
import 'package:devnology/src/presentation/common/latest_list.dart';
import 'package:devnology/src/presentation/pages/home/widgets/wrap_product_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../navigation/bottom_navigation.dart';
import '../product/product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromARGB(9, 81, 92, 111),
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  "Categories",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: icons,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Latest",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: latest),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 7),
                    shrinkWrap: true,
                    itemCount: ProductsModel.products.length,
                    itemBuilder: (context, index) {
                      final product = ProductsModel.products[index];
                      return WrapProductInkwell(
                        price: product.price,
                        image: product.image,
                        text: product.name,
                        goToProduct: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => ProductPage(
                                product: product,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
