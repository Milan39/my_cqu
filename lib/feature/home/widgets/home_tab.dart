import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cqu/feature/home/cubit/home_screen_cubit/home_screen_cubit.dart';

import '../../../core/constant.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        return SizedBox(
          height: 40.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(state.tabs.length, (index){
              var isSelected = state.currentTab == index;
              return GestureDetector(
                onTap: ()=> context.read<HomeScreenCubit>().switchTab(index),
                child: Container(
                  margin: EdgeInsets.only(right: 10.w, left: index == 0? 10.w: 0),
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                    color: isSelected? kBrandColor: Colors.white,
                    borderRadius: BorderRadius.circular(50.sp),
                    border: Border.all(color: kBrandColor),
                  ),
                  child: Text(
                    state.tabs[index],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
