import 'package:bloc/bloc.dart';

import 'bottom_navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home, 0));

  void getIndex(int navbarItem) {
    switch (navbarItem) {
      case 0:
        emit(const NavigationState(NavbarItem.home, 0));
        break;
      case 1:
        emit(const NavigationState(NavbarItem.search, 1));
        break;
      case 2:
        emit(const NavigationState(NavbarItem.cart, 2));
        break;
      case 3:
        emit(const NavigationState(NavbarItem.profile, 3));
        break;
      case 4:
        emit(const NavigationState(NavbarItem.more, 4));
        break;
      default:
        emit(const NavigationState(NavbarItem.home, 0));
    }
  }
}
