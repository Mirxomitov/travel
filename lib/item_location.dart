import 'package:flutter/material.dart';

import 'data/data.dart';


class ItemLocation extends StatelessWidget {
  final ItemData data;

  const ItemLocation({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        image: DecorationImage(
          image: AssetImage(data.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      data.location,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w100,
                            color: Colors.white70,
                          ),
                    )
                  ],
                ),
                //const Spacer(),
                Row(
                  children: [
                    Text(
                      data.rate.toString(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Color(0xffE58F3F),
                      size: 24,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
