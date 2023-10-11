class PhilosopherModel {
  String name;
  int yearBirth;
  int yearDeath;
  String country;
  String image;
  bool isFavorite;

  PhilosopherModel({
    required this.name,
    required this.yearBirth,
    required this.yearDeath,
    required this.country,
    required this.image,
    required this.isFavorite
  });
}

final List<PhilosopherModel> philosopher = [
  PhilosopherModel(
    name: 'Immanuel Kant',
    yearBirth: 1724,
    yearDeath: 1804,
    country: 'Germany',
    image: 'assets/images/Kant.jpg',
    isFavorite: false
  ),
  PhilosopherModel(
    name: 'Georg Hegel',
    yearBirth: 1770,
    yearDeath: 1831,
    country: 'Germany',
    image: 'assets/images/hegel.jpg',
    isFavorite: false
  ),

  PhilosopherModel(
    name: 'Rousseau',
    yearBirth: 1712,
    yearDeath: 1778,
    country: 'Switzerland',
    image: 'assets/images/rousseau1.jpg',
    isFavorite: false
  ),  

  PhilosopherModel(
    name: 'Friedrich Nietzsche',
    yearBirth: 1844,
    yearDeath: 1900,
    country: 'Germany',
    image: 'assets/images/Niet2.jpg',
    isFavorite: false
  ),

  PhilosopherModel(
    name: 'Jean-Paul Sartre',
    yearBirth: 1905,
    yearDeath: 1980,
    country: 'France',
    image: 'assets/images/sartre5.webp',
    isFavorite: false
  ),

  PhilosopherModel(
    name: 'Camus',
    yearBirth: 1913,
    yearDeath: 1960,
    country: 'France',
    image: 'assets/images/camus9.jpg',
    isFavorite: false
  )
];
