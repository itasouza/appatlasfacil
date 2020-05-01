class OnBoarding {
  String image;
  String description;

  OnBoarding({this.image, this.description});
}

class OnBoardingList {
  List<OnBoarding> _list;

  List<OnBoarding> get list => _list;

  OnBoardingList() {
    _list = [
      new OnBoarding(image: 'img/onboarding1.png', description: 'Descubra sua localização em detalhes, obtenha informações e aproveite.'),
      new OnBoarding(image: 'img/onboarding2.png', description: 'Encontre facilmente sua categoria com suporte flexível para exibição.'),
      new OnBoarding(image: 'img/onboarding1.png', description: 'Tantos livros, tão pouco tempo.'),
      //new OnBoarding(image: 'img/onboarding2.png', description: 'Uma sala sem livros é como um corpo sem alma.'),
    ];
  }
}
