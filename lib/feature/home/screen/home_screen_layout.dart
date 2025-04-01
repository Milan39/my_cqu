import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/feature/home/cubit/home_screen_cubit/home_screen_cubit.dart';
import 'package:my_cqu/feature/home/widgets/home_tab.dart';
import 'package:my_cqu/injection_container.dart';

class HomeScreenLayout extends StatelessWidget {
  const HomeScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeScreenCubit>(),
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          return Column(
            children: [
              HomeTab(),
              Gap(10.h),
              Divider(color: kSecondaryGrey),
              Expanded(
                child: IndexedStack(
                  index: state.currentTab,
                  children: state.pages,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
