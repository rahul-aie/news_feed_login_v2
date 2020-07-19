import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/login1.png',
    title: 'Do good. Spread good.',
    description: 'Showcase good deeds to the world.',
  ),
  Slide(
    imageUrl: 'assets/images/login2.png',
    title: 'Appreciate. Connect.',
    description: 'Connect with change makers.',
  ),
  Slide(
    imageUrl: 'assets/images/login3.png',
    title: 'Spot. Curate.',
    description: 'Recognise great deeds.',
  ),
];
