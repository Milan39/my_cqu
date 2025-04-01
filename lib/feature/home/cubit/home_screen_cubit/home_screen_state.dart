part of 'home_screen_cubit.dart';

class HomeScreenState extends Equatable {
  final List<String> tabs;
  final int currentTab;
  final List<Widget> pages;
  final List<LinkEntity> links;

  const HomeScreenState({
    required this.tabs,
    this.currentTab = 0,
    this.pages = const [],
    this.links = const [],
  });

  HomeScreenState copyWith({
    List<String>? tabs,
    int? currentTab,
    List<Widget>? pages,
    List<LinkEntity>? links,

  }) {
    return HomeScreenState(
      tabs: tabs ?? this.tabs,
      currentTab: currentTab ?? this.currentTab,
      pages: pages ?? this.pages,
      links: links ?? this.links,
    );
  }

  @override
  List<Object?> get props => [tabs, currentTab, pages, links];
}
