part of 'search_bloc.dart';

@immutable
abstract class SearchState {
  final data = [
    SearchResultSection(title: "Circles", items: [
      SearchResutSectionItem(
          asset: 'assets/images/5.jpg', header: 'Guitar', sub: "Public Circle"),
      SearchResutSectionItem(
          asset: 'assets/images/4.png',
          header: 'Amy Choi Guitar',
          sub: "Marketplace"),
    ]),
    SearchResultSection(title: "YuTU's", items: [
      SearchResutSectionItem(
          asset: 'assets/images/3.jpg',
          header: 'Live Guitar',
          sub: "Category: Events"),
      SearchResutSectionItem(
          asset: 'assets/images/2.jpg', header: 'Bandmates', sub: "#guitar"),
    ]),
    SearchResultSection(title: "Profiles", items: [
      SearchResutSectionItem(
          asset: 'assets/images/1.jpg',
          header: 'Mark Thompson',
          sub: "Interest: Guitar"),
      SearchResutSectionItem(
          asset: 'assets/images/4.png',
          header: 'Amy Choi',
          sub: "Circle: Amy Choi Guitar"),
    ]),
  ];
}

class SearchInitial extends SearchState {}
