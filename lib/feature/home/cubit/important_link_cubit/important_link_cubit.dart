import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_cqu/feature/home/entities/important_link_entity.dart';

part 'important_link_state.dart';

class ImportantLinkCubit extends Cubit<ImportantLinkState> {
  ImportantLinkCubit()
    : super(
        ImportantLinkState(
          importantLink: [
            ImportantLink(
              heading:
                  "Find all the advice you need to complete your \nchecklist",
              cardDetails: [
                LinkCardDetail(
                  title: "Foundation of Academic Integrity",
                  imagePath: 'assets/images/image1.png',
                ),
                LinkCardDetail(
                  title: "Academic Integrity",
                  imagePath: 'assets/images/image2.png',
                ),
                LinkCardDetail(
                  title: "Help With Nominating Your Exam Center",
                  imagePath: 'assets/icons/placeholder.svg',
                  isSvg: true,
                ),
              ],
            ),
            ImportantLink(
              heading:
              "CQU has a range of resources and services to ensure your transition to university life is as smooth as possible.",
              cardDetails: [
                LinkCardDetail(
                  title: "Course Planner",
                  type: "CQU Website",
                  imagePath: 'assets/images/image6.png',
                ),
                LinkCardDetail(
                  title: "Student Accommodation",
                  type: "CQU Website",
                  imagePath: 'assets/images/image7.png',
                ),
                LinkCardDetail(
                  title: "What's to Bring",
                  type: "CQU Website",
                  imagePath: 'assets/images/image8.png',
                ),
              ],
            ),
            ImportantLink(
              heading:
              "The Latest opportunities to know and do more for your studies, your career, and your student life.",
              cardDetails: [
                LinkCardDetail(
                  title: "UniLife Week",
                  imagePath: 'assets/images/image3.png',
                ),
                LinkCardDetail(
                  title: "Calm Time Sessions",
                  imagePath: 'assets/images/image4.png',
                ),
                LinkCardDetail(
                  title: "CQUniversity Spotify Channel",
                  imagePath: 'assets/images/image5.png',
                ),
              ],
            ),
          ],
        ),
      );
}
