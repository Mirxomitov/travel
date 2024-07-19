import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  final Function(String query) callback;

  const MySearchBar({super.key, required this.callback});

  @override
  MySearchBarState createState() => MySearchBarState();
}

class MySearchBarState extends State<MySearchBar> {
  String query = '';
  FocusNode myFocusNode = FocusNode();

  void onQueryChanged(String newQuery) {
    setState(() {
      print('SearchBar.onQueryChanged.query: $query');
      query = newQuery;
      widget.callback(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: const BorderRadius.all(Radius.circular(12),),
      ),
      child: TextField(
        cursorColor: Colors.white,
        autofocus: false,
        onChanged: onQueryChanged,
        focusNode: myFocusNode,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.white),
        enableInteractiveSelection: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white),
          hintText: 'Qidirish...',
          suffixIcon: const Icon(Icons.search, color: Colors.white, size: 24.0, weight: 1,),
        ),
      ),
    );
  }
}
