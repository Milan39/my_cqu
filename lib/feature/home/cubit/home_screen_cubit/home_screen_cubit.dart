import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_cqu/feature/home/entities/link_entity.dart';
import 'package:my_cqu/feature/home/widgets/upcoming_assessment_page.dart';
import 'package:my_cqu/feature/home/widgets/checklist_page.dart';
import 'package:my_cqu/feature/home/widgets/cqs_page.dart';
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
            UpcomingAssessmentPage(),
            ChecklistPage(),
            WhereToBeginPage(),
            WhatsOnPage(),
          ],
          links: [
            LinkEntity(title: "Moodle", imagePath: 'moodle.svg'),
            LinkEntity(title: "Sonia", imagePath: 'sonia.svg'),
            LinkEntity(title: "Library", imagePath: 'library.svg'),
            LinkEntity(title: "Handbook", imagePath: 'handbook.svg'),
            LinkEntity(title: "Bookshop", imagePath: 'bookshop.svg'),
            LinkEntity(
              title: "Microsoft \nTeam",
              imagePath: 'microsoft_team.svg',
            ),
            LinkEntity(title: "Career \nHub", imagePath: 'career_hub.svg'),
            LinkEntity(
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
