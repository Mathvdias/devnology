import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../infra/models/products_model.dart';
import 'circle_buttom_widget.dart';

class ProductWidget extends StatelessWidget {
  final int id;
  const ProductWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30),
        SizedBox(
            height: 100,
            width: 100,
            child: SvgPicture.asset(ProductsModel.products[id].image)),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ProductsModel.products[id].name,
            ),
            const SizedBox(height: 10),
            Text(
              "\$ ${ProductsModel.products[id].price}",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 80,
              height: 25,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 70,
                      height: 20,
                      color: Colors.white,
                      child: const Text(
                        '1', //controller.quantity.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    child: buildCircleButtonSmall(
                        Icons.add_rounded, () {}, 'right'),
                  ),
                  Positioned(
                    left: 1,
                    child: buildCircleButtonSmall(
                        Icons.remove_rounded, () {}, 'left'),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
