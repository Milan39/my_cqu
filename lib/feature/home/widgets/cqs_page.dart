import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/feature/home/cubit/home_screen_cubit/home_screen_cubit.dart';
import 'package:my_cqu/feature/home/widgets/link_card.dart';
import 'package:my_cqu/feature/home/widgets/notice_board_card.dart';

class CQSPage extends StatelessWidget {
  const CQSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        return ListView(
          // padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          children: [
            // notice board card
            NoticeBoardCard(),

            Gap(15.h),

            GridView.count(
              crossAxisSpacing: 10.w,
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 2 / 1,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              mainAxisSpacing: 10.h,
              children: List.generate(state.links.length, (index) {
                var link = state.links[index];
                return LinkCard(link: link);
              }),
            ),
          ],
        );
      },
    );
  }
}
