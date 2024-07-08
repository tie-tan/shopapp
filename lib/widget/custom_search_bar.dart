import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final String searchHintText;
  const CustomSearchBar({
    Key? key,
    required this.searchHintText,
  }) : super(key: key);

  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    var _deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            width: _deviceWidth * 0.78,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(fontSize: 18),
                textAlignVertical: TextAlignVertical.bottom,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: widget.searchHintText,
                  fillColor: const Color.fromRGBO(35, 31, 32, 1),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
