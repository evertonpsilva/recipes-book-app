import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.0,
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Ionicons.search,
              size: 22.0,
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                filled: false,
                contentPadding: EdgeInsets.all(0),
                labelStyle: TextStyle(
                  fontSize: 0.0
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}