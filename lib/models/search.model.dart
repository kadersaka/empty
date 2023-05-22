class SearchResultSection {
  List<SearchResutSectionItem> items;
  String title;

  SearchResultSection({required this.items, required this.title});
}

class SearchResutSectionItem {
  final String header;
  final String sub;
  final String asset;

  SearchResutSectionItem(
      {required this.header, required this.sub, required this.asset});
}
