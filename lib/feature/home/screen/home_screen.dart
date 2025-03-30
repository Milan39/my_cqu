import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cqu/feature/calendar/screen/calendar_screen.dart';
import 'package:my_cqu/feature/discover/screen/discover_screen.dart';
import 'package:my_cqu/feature/home/cubit/bottom_bar/bottom_bar_cubit.dart';
import 'package:my_cqu/feature/home/screen/home_screen_layout.dart';
import 'package:my_cqu/feature/home/widgets/bottom_navbar.dart';
import 'package:my_cqu/feature/home/widgets/home_app_bar.dart';
import 'package:my_cqu/feature/study/screen/study_screen.dart';
import 'package:my_cqu/feature/support/screen/support_screen.dart';
import 'package:my_cqu/injection_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BottomNavBarCubit>(),
      child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
        builder: (context, state) {
          return Scaffold(
            appBar: HomeAppBar(),
            bottomNavigationBar: BottomAppBar(
              height: 70.h,
              color: Colors.white,
              shadowColor: Colors.grey,
              child: BottomNavBar(state: state),
            ),
            body: SafeArea(
              child: Builder(
                builder: (context) {
                  final slug = state.navbarItems[state.currentNavBarIndex].slug;
                  {
                    if (slug == 'home') {
                      return const HomeScreenLayout();
                    } else if (slug == 'study') {
                      return const StudyScreen();
                    } else if (slug == 'discover') {
                      return const DiscoverScreen();
                    } else if (slug == 'support') {
                      return const SupportScreen();
                    } else if (slug == "calendar") {
                      return const CalendarScreen();
                    }
                    return Container();
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
