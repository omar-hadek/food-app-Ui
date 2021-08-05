import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30.0,
            color: Colors.black,
          ),
        ),
        Flexible(
          child: new TextField(
            decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: 'find Your Food ',
                alignLabelWithHint: true),

            //style: Theme.of(context).textTheme.body1,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
              size: 30.0,
            ))
      ],
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      border: Border.all(
        width: 2.0,
        color: Colors.grey.shade500,
      ),
    ),
  );
  }
}