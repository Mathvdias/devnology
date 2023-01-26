import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WrapProductInkwell extends StatelessWidget {
  final String image;
  const WrapProductInkwell({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      width: 101,
      child: Card(
        child: Stack(children: <Widget>[
          SvgPicture.asset(image),
          Positioned.fill(
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    //  borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                  )))
        ]),
      ),
    );
  }
}
