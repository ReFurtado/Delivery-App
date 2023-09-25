class Products {
  late String name, description, price, image;

  Products({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

class ProductsRepository {
  static List<Products> table = [
    Products(
      name: 'Cheeseburger', 
      description: 'Pão, hamburger, queijo, alface e tomate',
      price: 'R\$ 29,90', 
      image: 'assets/images/burger_1.jpg'
    ),
    Products(
      name: 'Cheesebacon', 
      description: 'Pão, bacon, queijo, alface e tomate',
      price: 'R\$ 29,90', 
      image: 'assets/images/burger_2.jpg'
    ),
    Products(
      name: 'Cheese Crispy', 
      description: 'Pão, frango, queijo, alface e tomate',
      price: 'R\$ 25,90', 
      image: 'assets/images/burger_3.jpg'
    ),
    Products(
      name: 'Cheese Crispy', 
      description: 'Pão, hamburger de frango, molho, queijo, alface e tomate',
      price: 'R\$ 25,90', 
      image: 'assets/images/burger_3.jpg'
    ),
  ];
}