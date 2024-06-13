class Game {
  String bgImage;
  String icon;
  String name;
  String type;
  String description;
  num score;
  num download;
  num review;
  List<String> images;

  Game( 
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
     this.review,
    this.description,
    this.images,   
  );

  static List<Game> games()
  {
    return [ 
      Game( 
        'assets/images/ori1.jpg',
        'assets/images/ori_logo.png',
        'Ori and Forest',
        'Adventure',
        4.8,
        382,
        324,
        "Ori is stanger to peril,but when a fateful flight puts the owlet ku in har'ms",
        [
          'assets/images/ori1.jpg',
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
        ],
      ),
      Game( 
        'assets/images/rl1.jpg',
        'assets/images/rl_logo.png',
        'Rayman Legends',
        'Adventure',
        4.7,
        226,
        148,
        "Rayman is stanger to peril,but when a fateful flight puts the owlet ku in har'ms",
        [
          'assets/images/rl1.jpg',
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
        ],
      ),
       Game( 
        'assets/images/legend2.jpg',
        'assets/images/legend_logo.jpg',
        'League of Legends',
        'Adventure',
        5.0,
        380,
        424,
        "The league of legend",
        [
          'assets/images/legend1.jpg',
          'assets/images/legend2.jpg',
          'assets/images/legend3.jpg',
          'assets/images/legend4.jpg',
        ],
      ),
    ];
  }
}