import 'package:badges/badges.dart';
import 'package:devnology/src/infra/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../bloc/bottom_navigation/bottom_navigation_bloc.dart';
import '../../../bloc/bottom_navigation/bottom_navigation_state.dart';
import '../../common/colors.dart';

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
          selectedItemColor: AppColors.colorLightYellow,
          unselectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: state.index == 0
                    ? AppColors.colorLightYellow
                    : Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: state.index == 1
                    ? AppColors.colorLightYellow
                    : Colors.white,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                badgeStyle:
                    const BadgeStyle(badgeColor: AppColors.colorLightYellow),
                position: BadgePosition.bottomStart(start: 10, bottom: -10),
                badgeContent: Text('${ProductsModel.products.length}'),
                child: SvgPicture.asset(
                  'assets/icons/cart.svg',
                  color: state.index == 2
                      ? AppColors.colorLightYellow
                      : Colors.white,
                ),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                color: state.index == 3
                    ? AppColors.colorLightYellow
                    : Colors.white,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
                color: state.index == 4
                    ? AppColors.colorLightYellow
                    : Colors.white,
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
