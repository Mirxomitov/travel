import 'package:flutter/material.dart';
import 'package:travel/search_bar.dart';

import 'data/data.dart';
import 'detail.dart';
import 'item_famous.dart';
import 'item_location.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ItemData> searchResults = dataList;
  UnfocusDisposition disposition = UnfocusDisposition.scope;

  void onQueryChanged(String query) {
    setState(() {
      searchResults = dataList
          .where(
              (item) => item.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _sortByChips(int index) {
    for (int i = 0; i < chips.length; ++i) {
      chips[i].isChosen = false;
    }
    chips[index].isChosen = true;

    var temp = <ItemData>[];

    for (int i = 0; i < dataList.length; ++i) {
      if (dataList[i].categories.contains(chips[index].name)) {
        temp.add(dataList[i]);
      }
    }

    searchResults = temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Sayohat',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Theme.of(context).colorScheme.primary,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: MySearchBar(
                  callback: (query) => {onQueryChanged(query)},
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < chips.length; ++i)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: ChoiceChip(
                            showCheckmark: false,
                            backgroundColor: chips[i].isChosen
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.tertiary,
                            label: Text(
                              chips[i].name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: !chips[i].isChosen
                                        ? Colors.white
                                        : Theme.of(context).colorScheme.surface,
                                  ),
                            ),
                            selected: chips[i].isChosen,
                            onSelected: (selectedChip) {
                              setState(() {
                                _sortByChips(i);
                              });
                            },
                          ),
                        )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                child: Text(
                  'Mashxur joylar',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  padding: const EdgeInsets.all(20),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          primaryFocus!.unfocus(disposition: disposition);
                        });
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                Detail(data: searchResults[index]),
                          ),
                        );
                      },
                      child: ItemFamous(
                        imagePath: dataList[index].imagePath,
                        location: dataList[index].location,
                        title: dataList[index].title,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                child: Text(
                  'Barchasi',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        primaryFocus!.unfocus(disposition: disposition);
                      });
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              Detail(data: searchResults[index]),
                        ),
                      );
                    },
                    child: ItemLocation(
                      data: searchResults[index],
                    ),
                  ),
                ),
                itemCount: searchResults.length,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

main() {
  var a = 10, b = 20;

  (a, b) = (b, a);

  print(a);
  print(b);
}
