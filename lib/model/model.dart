import 'package:flutter/material.dart';

class CardInfo {
  CardInfo(this.imgSrc, this.title, this.alignment, this.position);

  String imgSrc;
  String title;
  Alignment alignment;
  int position;
}

List < CardInfo > musicAlbum = [
      CardInfo('assets/images/album1.png', 'Your Time', Alignment.bottomRight, 0),
      CardInfo('assets/images/album2.png', 'Blow your Mind', Alignment.topLeft, 1),
      CardInfo('assets/images/album3.png', 'Just Smile', Alignment.center, 3),
    ];

class TrendCard{

  TrendCard(this.imgSrc, this.title, this.alignment);
  String imgSrc;
  String title;
  Alignment alignment;
}