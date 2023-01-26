import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WrapProductInkwell extends StatelessWidget {
  final double price;
  final String image;
  final String text;
  final Function addProduct;
  const WrapProductInkwell({
    Key? key,
    required this.image,
    required this.text,
    required this.price,
    required this.addProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.width * .29,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(image),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                        child: Text(text,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 9))),
                    const SizedBox(
                      height: 5,
                    ),
                    FittedBox(
                      child: Text(
                        '\$ $price',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 11, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned.fill(
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => addProduct(),
                    )))
          ],
        ),
      ),
    );
  }
}
