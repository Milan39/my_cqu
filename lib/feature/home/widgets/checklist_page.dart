import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/feature/home/cubit/important_link_cubit/important_link_cubit.dart';
import 'package:my_cqu/feature/home/widgets/checklist_card.dart';
import 'package:my_cqu/init_dependencies.dart';

class ChecklistPage extends StatelessWidget {
  const ChecklistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ImportantLinkCubit>(),
      child: BlocBuilder<ImportantLinkCubit, ImportantLinkState>(
        builder: (context, state) {
          final details = state.importantLink[0];
          return ListView(
            children: [
              Text(
                details.heading,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: kBackgroundColor,
                ),
              ),
              Gap(15.h),
              Column(
                children: List.generate(details.cardDetails.length, (index) {
                  return ChecklistCard(
                    cardDetail: details.cardDetails[index],
                    onTap: () {
                      context.pushNamed(
                        "article-detail",
                        extra: details.cardDetails[index],
                      );
                    },
                  );
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
