import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> latest = <Widget>[
  const WrapImageInkwell(),
  const SizedBox(width: 15),
  const WrapImageInkwell(),
  const SizedBox(width: 15),
  const WrapImageInkwell(),
  const SizedBox(width: 15),
  const WrapImageInkwell(),
  const SizedBox(width: 15),
  const WrapImageInkwell(),
];

class WrapImageInkwell extends StatelessWidget {
  const WrapImageInkwell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      SvgPicture.asset('assets/images/banner.svg'),
      Positioned.fill(
          child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
              )))
    ]);
  }
}
