class Stores {
  String name, image;

  Stores({
    required this.name,
    required this.image,
  });
}

class StoresRepository {
  static List<Stores> table = [
    Stores(
      name: 'Costelaria Mais Sabor',
      image: 'assets/images/logo4.jpg',
    ),
    Stores(
    name: 'Comida Italiana', 
    image: 'assets/images/logo1.jpg',
    ),
    Stores(
      name: 'Lanches e Porções', 
      image: 'assets/images/logo2.jpg',
    ),
    Stores(
      name: 'Sabor Vegetariano', 
      image: 'assets/images/logo3.jpg',
    ),
    Stores(
      name: 'Sabor de Casa', 
      image: 'assets/images/logo5.jpg',
    ),
  ];
}

