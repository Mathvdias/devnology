import 'package:devnology/src/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../bloc/bottom_navigation/bottom_navigation_bloc.dart';
import '../../bloc/bottom_navigation/bottom_navigation_state.dart';
import 'widgets/bottom_navigation_widget.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 26,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/message.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/bell.svg'),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
        if (state.navbarItem == NavbarItem.home) {
          return const HomePage();
        } else if (state.navbarItem == NavbarItem.search) {
          return const Center(
            child: Text('Search'),
          );
        } else if (state.navbarItem == NavbarItem.cart) {
          return const Center(
            child: Text('Cart'),
          );
        } else if (state.navbarItem == NavbarItem.profile) {
          return const Center(
            child: Text('Profile'),
          );
        } else if (state.navbarItem == NavbarItem.more) {
          return const Center(
            child: Text('More'),
          );
        }
        return Container();
      }),
    );
  }
}
