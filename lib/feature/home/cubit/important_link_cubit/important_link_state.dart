part of 'important_link_cubit.dart';

class ImportantLinkState extends Equatable {
  final List<ImportantLink> importantLink;

  const ImportantLinkState({required this.importantLink});

  @override
  List<Object?> get props => [importantLink];
}
