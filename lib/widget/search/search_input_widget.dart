import 'package:flutter/material.dart';

class SearchInputWidget extends StatefulWidget {
  final String placeholder;
  const SearchInputWidget({super.key, this.placeholder = "Search"});

  @override
  State<StatefulWidget> createState() {
    return _SearchInputWidgetState();
  }
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  late TextEditingController _searchTextController;

  @override
  void initState() {
    _searchTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Color(0xffD9D9D9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              style: TextStyle(),
              decoration: InputDecoration(
                  hintText: widget.placeholder,
                  isDense: true,
                  contentPadding: EdgeInsets.only(bottom: 1.0),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          const Icon(
            Icons.search,
            size: 24,
          )
        ],
      ),
    );
  }
}
