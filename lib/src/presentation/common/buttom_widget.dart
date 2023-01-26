import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  final String text;
  final Function function;
  const ButtomWidget({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .37,
      height: MediaQuery.of(context).size.height * .05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(milliseconds: 200),
          shape: const StadiumBorder(),
        ),
        child: FittedBox(
          child: Row(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 40,
              ),
            ],
          ),
        ),
        onPressed: () => function(),
      ),
    );
  }
}
