class PhilosopherModel {
  String name;
  int yearBirth;
  int yearDeath;
  String country;
  String image;
  bool isFavorite;
  String about;
  int primeAge;
  String famous;
  String search;

  PhilosopherModel({
    required this.name,
    required this.yearBirth,
    required this.yearDeath,
    required this.country,
    required this.image,
    required this.isFavorite,
    required this.about,
    required this.primeAge,
    required this.famous,
    required this.search
  });
}

final List<PhilosopherModel> philosopher = [
  PhilosopherModel(
    name: 'Immanuel Kant',
    yearBirth: 1724,
    yearDeath: 1804,
    country: 'Germany',
    image: 'assets/images/Kant.jpg',
    isFavorite: false,
    about: "Filósofo dedicado à busca da razão e da moralidade. Acredito que a verdadeira conexão se baseia na ética e no respeito mútuo. Apaixonado pela busca do conhecimento e pela reflexão filosófica, estou à procura de alguém que compartilhe minha paixão pela busca da verdade e da justiça. Vamos explorar juntos os princípios universais da moralidade e construir uma relação baseada na honestidade e na integridade.",
    primeAge: 50,
    famous: "Criticismo",
    search: "Princípios éticos"
  ),
  
  PhilosopherModel(
    name: 'Georg Hegel',
    yearBirth: 1770,
    yearDeath: 1831,
    country: 'Germany',
    image: 'assets/images/hegel.jpg',
    isFavorite: false,
    about: "Filósofo apaixonado pela busca do conhecimento e da compreensão do mundo. Acredito que a verdade se revela através do processo dialético, onde ideias se confrontam e se transformam. Busco alguém que compartilhe minha paixão pela reflexão profunda e pela busca da sabedoria. Vamos explorar juntos os mistérios da existência e construir uma conexão baseada na troca intelectual e no crescimento mútuo.",
    primeAge: 40,
    famous: "Hegelianismo",
    search: "Crescimento e troca de ideias"
  ),

  PhilosopherModel(
    name: 'Rousseau',
    yearBirth: 1712,
    yearDeath: 1778,
    country: 'Switzerland',
    image: 'assets/images/rousseau1.jpg',
    isFavorite: false,
    about: "Filósofo e escritor em busca de uma conexão autêntica e verdadeira. Acredito que a natureza humana é essencialmente boa e que a sociedade corrompe nossa essência. Apaixonado pela liberdade e pela simplicidade da vida, estou à procura de alguém que compartilhe minha paixão pela natureza, pela sinceridade e pela busca pela felicidade genuína. Vamos explorar juntos a beleza da vida e construir uma relação baseada na autenticidade e na harmonia com o mundo ao nosso redor",
    primeAge: 50,
    famous: "Iluminista",
    search: "Autenticidade e natureza"
  ),  

  PhilosopherModel(
    name: 'Friedrich Nietzsche',
    yearBirth: 1844,
    yearDeath: 1900,
    country: 'Germany',
    image: 'assets/images/Niet2.jpg',
    isFavorite: false,
    about: "Filósofo apaixonado pela vida e pela busca da verdade. Acredito que o amor é uma expressão suprema da vontade de poder e da busca pela superação. Fascinado pela filosofia do além-do-homem, estou à procura de alguém que compartilhe minha paixão pela autenticidade e pela transvaloração de valores. Vamos explorar juntos os limites do conhecimento e criar uma conexão intensa e transformadora.",
    primeAge: 30,
    famous: "Nilismo",
    search: "Superação e transgressão"
  ),

  PhilosopherModel(
    name: 'Jean-Paul Sartre',
    yearBirth: 1905,
    yearDeath: 1980,
    country: 'France',
    image: 'assets/images/sartre5.webp',
    isFavorite: false,
    about: "Filósofo existencialista em busca de uma conexão autêntica. Acredito que o amor é uma escolha livre e consciente, baseada na liberdade individual. Apaixonado por debates profundos e reflexões filosóficas, estou em busca de alguém que compartilhe minha paixão pela busca da verdade e da autenticidade. Vamos explorar juntos as complexidades da existência e construir um relacionamento verdadeiramente significativo.",
    primeAge: 40,
    famous: "Existencialismo",
    search: "Busca conjunta por significado"
  ),

  PhilosopherModel(
    name: 'Camus',
    yearBirth: 1913,
    yearDeath: 1960,
    country: 'France',
    image: 'assets/images/camus9.jpg',
    isFavorite: false,
    about: "Escritor e filósofo em busca de uma conexão profunda e significativa. Acredito que a vida é absurda, mas que podemos encontrar sentido e felicidade em meio a essa absurdidade. Apaixonado por literatura, arte e reflexões existenciais, estou à procura de alguém que compartilhe minha paixão pela busca da autenticidade e da liberdade. Vamos explorar juntos os mistérios da existência e criar momentos memoráveis.",
    primeAge: 30,
    famous: "Absurdismo",
    search: "Abraçar a incerteza e buscar propósito"
  )
];
