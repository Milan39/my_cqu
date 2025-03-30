import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cqu/core/storage/storage.dart';
import 'package:my_cqu/feature/home/entities/navbar_entity.dart';

part 'bottom_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  final SecureStorage secureStorage;

  BottomNavBarCubit({required this.secureStorage})
    : super(
        const BottomNavBarState(
          currentNavBarIndex: 0,
          navbarItems: [
            NavbarItemEntity(
              label: 'Home',
              slug: 'home',
              icon: 'assets/icons/home.svg',
              activeIcon: 'assets/icons/home_active.svg',
            ),
            NavbarItemEntity(
              label: 'Study',
              slug: 'study',
              icon: 'assets/icons/study.svg',
              activeIcon: 'assets/icons/study_active.svg',
            ),
            NavbarItemEntity(
              label: 'Discover',
              slug: 'discover',
              icon: 'assets/icons/discover.svg',
              activeIcon: 'assets/icons/discover_active.svg',
            ),
            NavbarItemEntity(
              label: 'Support',
              slug: 'support',
              icon: 'assets/icons/support.svg',
              activeIcon: 'assets/icons/support_active.svg',
            ),
            NavbarItemEntity(
              label: 'Calendar',
              slug: 'calendar',
              icon: 'assets/icons/calendar.svg',
              activeIcon: 'assets/icons/calendar_active.svg',
            ),
          ],
        ),
      );

  void switchNavBarItem(int navBarItemIndex) {
    emit(state.copyWith(currentNavBarIndex: navBarItemIndex));
  }
}
