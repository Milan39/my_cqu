import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/feature/home/entities/navbar_entity.dart';

import '../cubit/bottom_bar/bottom_bar_cubit.dart';

class BottomNavBar extends StatelessWidget {
  final BottomNavBarState state;

  const BottomNavBar({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        state.navbarItems.length,
        (index) => BottomNavBarItem(
          item: state.navbarItems[index],
          isSelected: state.currentNavBarIndex == index,
          onTap: (){
            context.read<BottomNavBarCubit>().switchNavBarItem(index);
          },
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  final NavbarItemEntity item;
  final bool isSelected;
  final Function()? onTap;

  const BottomNavBarItem({
    super.key,
    required this.item,
    required this.isSelected,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSelected ? kBrandColor : Colors.white,
              borderRadius: BorderRadius.circular(50.sp),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 3.h),
            child: SvgPicture.asset(
              isSelected ? item.activeIcon : item.icon,
              height: 20.h,
            ),
          ),
          Gap(4.h),
          Text(
            item.label,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: isSelected ? Colors.black: Colors.grey.withValues(alpha: 0.8)
            ),
          ),
        ],
      ),
    );
  }
}
