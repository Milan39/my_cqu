part of 'bottom_bar_cubit.dart';

class BottomNavBarState extends Equatable {
  final int currentNavBarIndex;
  final List<NavbarItemEntity> navbarItems;

  const BottomNavBarState({
    required this.currentNavBarIndex,
    required this.navbarItems,
  });

  BottomNavBarState copyWith({
    int? currentNavBarIndex,
    List<NavbarItemEntity>? navbarItems,
  }) =>
      BottomNavBarState(
        currentNavBarIndex: currentNavBarIndex ?? this.currentNavBarIndex,
        navbarItems: navbarItems ?? this.navbarItems,
      );

  @override
  List<Object> get props => [currentNavBarIndex, navbarItems];
}
