import 'package:devnology/src/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'src/presentation/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => NavigationCubit())
      ],
      child: MaterialApp(
        home: const SplashPage(),
        title: 'Devnology',
        theme: ThemeData(
          primaryColor: const Color(0xff2E3746),
          primarySwatch: const MaterialColor(
            0xff2E3746,
            {
              50: Color(0xff5A6476),
              100: Color(0xff4F4F4F),
              200: Color(0xff696969),
              300: Color(0xff808080),
              500: Color(0xffA9A9A9),
              600: Color(0xffC0C0C0),
              700: Color(0xffD3D3D3),
              800: Color(0xffDCDCDC),
              900: Color(0xff000000),
            },
          ),
        ),
      ),
    );
  }
}
