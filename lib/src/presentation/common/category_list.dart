import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> icons = <Widget>[
  const GenerateCategory(
    svg: 'assets/images/apparel.svg',
    text: 'Apparel',
  ),
  const GenerateCategory(
    svg: 'assets/images/battom.svg',
    text: 'Beauty',
  ),
  const GenerateCategory(
    svg: 'assets/images/shoe.svg',
    text: 'Shoes',
  ),
  const GenerateCategory(
    svg: 'assets/images/all.svg',
    text: 'See All',
  ),
];

class GenerateCategory extends StatelessWidget {
  final String svg;
  final String text;
  const GenerateCategory({
    Key? key,
    required this.svg,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      onTap: (() {}),
      child: Column(children: [
        SvgPicture.asset(svg),
        const SizedBox(
          height: 7,
        ),
        Text(text)
      ]),
    );
  }
}
