class CardGameModel {
  late final int id;
  late final String defaultImage;
  late final String image;
    bool isClicked;

  CardGameModel({
    required this.id,
     this.defaultImage='assets/images/card.png',
    required this.image,
    this.isClicked = false,
  });
}


