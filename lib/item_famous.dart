import 'package:flutter/material.dart';

class ItemFamous extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;

  const ItemFamous({
    super.key,
    required this.imagePath,
    required this.location,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
            ),
            Text(
              location,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w100,
                    color: Colors.white70,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
