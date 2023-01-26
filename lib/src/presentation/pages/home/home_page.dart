import 'package:devnology/src/presentation/common/category_list.dart';
import 'package:devnology/src/presentation/common/latest_list.dart';
import 'package:devnology/src/presentation/pages/home/widgets/wrap_product_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(9, 81, 92, 111),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: icons,
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
            Wrap(
              children: [
                WrapProductInkwell(
                  image: 'assets/images/pc1.svg',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
