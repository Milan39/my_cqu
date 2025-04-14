class ImportantLink {
  final String heading;
  final List<LinkCardDetail> cardDetails;

  const ImportantLink({required this.heading, required this.cardDetails});
}

class LinkCardDetail {
  final String title;
  final String imagePath;
  final String type;
  final String link;
  final bool isSvg;

  const LinkCardDetail({
    required this.title,
    required this.imagePath,
    this.type = "Article",
    this.link = "https://moodle.cqu.edu.au/course/view.php?id=86559",
    this.isSvg = false,
  });
}
