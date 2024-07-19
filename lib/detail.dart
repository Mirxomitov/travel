import 'package:flutter/material.dart';

import 'data/data.dart';
import 'item_top.dart';

class Detail extends StatelessWidget {
  final ItemData data;

  const Detail({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          forceMaterialTransparency: true,
          expandedHeight: 350.0,
          automaticallyImplyLeading: false,
          collapsedHeight: 200.0,
          stretch: true,
          forceElevated: true,
          flexibleSpace: ItemTop(
            data: data,
            backPress: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("back pressed"),
              ));
              print('back pressed');
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 24,
            ),
            child: Text(
              'Batafsil',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 24,
              right: 24,
            ),
            child: Text(
              data.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    ));
  }
}
