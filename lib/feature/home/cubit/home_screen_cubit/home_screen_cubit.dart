import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_cqu/feature/home/entities/home_entity.dart';
import 'package:my_cqu/feature/home/widgets/assessment_page.dart';
import 'package:my_cqu/feature/home/widgets/checklist_page.dart';
import 'package:my_cqu/feature/home/widgets/CQS_page.dart';
import 'package:my_cqu/feature/home/widgets/whats_on_page.dart';
import 'package:my_cqu/feature/home/widgets/where_to_begin_page.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit()
    : super(
        HomeScreenState(
          tabs: [
            "CQS Systems",
            "Upcoming Assessments",
            "Help with Your Checklist",
            "Where To Begin",
            "What’s On",
          ],
          pages: [
            CQSPage(),
            AssessmentPage(),
            ChecklistPage(),
            WhereToBeginPage(),
            WhatsOnPage(),
          ],
          homeData: [
            HomeEntity(title: "Moodle", imagePath: 'moodle.svg'),
            HomeEntity(title: "Sonia", imagePath: 'sonia.svg'),
            HomeEntity(title: "Library", imagePath: 'library.svg'),
            HomeEntity(title: "Handbook", imagePath: 'handbook.svg'),
            HomeEntity(title: "Bookshop", imagePath: 'bookshop.svg'),
            HomeEntity(
              title: "Microsoft \nTeam",
              imagePath: 'microsoft_team.svg',
            ),
            HomeEntity(title: "Career \nHub", imagePath: 'career_hub.svg'),
            HomeEntity(
              title: "CQU \nMonitoring",
              imagePath: 'cqu_monitoring.svg',
            ),
          ],
        ),
      );

  void switchTab(int index) {
    emit(state.copyWith(currentTab: index));
  }
}
