part of 'home_screen_cubit.dart';

class HomeScreenState extends Equatable {
  final List<String> tabs;
  final int currentTab;
  final List<Widget> pages;
  final List<HomeEntity> homeData;

  const HomeScreenState({
    required this.tabs,
    this.currentTab = 0,
    this.pages = const [],
    this.homeData = const [],
  });

  HomeScreenState copyWith({
    List<String>? tabs,
    int? currentTab,
    List<Widget>? pages,
    List<HomeEntity>? homeData,

  }) {
    return HomeScreenState(
      tabs: tabs ?? this.tabs,
      currentTab: currentTab ?? this.currentTab,
      pages: pages ?? this.pages,
      homeData: homeData ?? this.homeData,
    );
  }

  @override
  List<Object?> get props => [tabs, currentTab, pages, homeData];
}
