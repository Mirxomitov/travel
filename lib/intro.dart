import 'package:flutter/material.dart';

import 'home.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/info/image_intro.png",
                      height: 200,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Oddiy hayotdan qoching',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Atrofingizdagi ajoyib tajribalarni kashf eting\nva sizni qiziqarli yashashga majbur qiling!",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(24),
                  padding: const EdgeInsets.all(18),
                  child: Text(
                    'Boshladik',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: const Color(0xff263238)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/info/image_bottom.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  color: const Color(0x99000000),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const SongScreen(song: song),
    ),
  );
 */
