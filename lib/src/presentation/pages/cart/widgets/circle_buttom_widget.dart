import 'package:flutter/material.dart';

import '../../../common/colors.dart';

Widget buildCircleButtonSmall(
        IconData icon, Function() onClick, String position) =>
    ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 25, height: 25),
      child: FloatingActionButton(
        heroTag: null,
        backgroundColor: AppColors.colorLightPrimary,
        onPressed: onClick,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
