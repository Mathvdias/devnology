import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../bloc/bottom_navigation/bottom_navigation_bloc.dart';
import '../../../bloc/bottom_navigation/bottom_navigation_state.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: state.index,
          backgroundColor: const Color(0xff2E3746),
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: state.index == 0 ? Colors.yellow : Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: state.index == 1 ? Colors.yellow : Colors.white,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                color: state.index == 2 ? Colors.yellow : Colors.white,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                color: state.index == 3 ? Colors.yellow : Colors.white,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
                color: state.index == 4 ? Colors.yellow : Colors.white,
              ),
              label: 'More',
            ),
          ],
          onTap: (index) {
            BlocProvider.of<NavigationCubit>(context).getIndex(index);
          },
        );
      },
    );
  }
}
