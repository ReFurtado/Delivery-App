class Itens {
  late String name, category, image;

  Itens({
    required this.name,
    required this.category,
    required this.image,
  });
}


class ItensRepository {
  static List<Itens> itens = [
    Itens(
    name: 'Burger', 
    category: 'Restaurant', 
    image: 'assets/images/burger.png',
    ),
    Itens(
      name: 'Cake', 
      category: 'Restaurant', 
      image: 'assets/images/cake.png',
    ),
    Itens(
      name: 'Japonese', 
      category: 'Restaurant', 
      image: 'assets/images/japonese.png',
    ),
    Itens(
      name: 'Drink', 
      category: 'Restaurant', 
      image: 'assets/images/drink.png',
    ),
    Itens(
      name: 'Pizza', 
      category: 'Restaurant', 
      image: 'assets/images/pizza.png',
    ),
    Itens(
      name: 'Arabic', 
      category: 'Restaurant', 
      image: 'assets/images/arabic.png',
    ),
  ];
}
