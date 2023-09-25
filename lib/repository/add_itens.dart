class AddItens {
  late String name, value;

  AddItens({
    required this.name,
    required this.value,
  });
}

class AddItensRepository {
  static List<AddItens> itens = [
    AddItens(
      name: 'Hamburguer', 
      value: '+ R\$ 6,00'
    ),
    AddItens(
      name: 'Ovo', 
      value: '+ R\$ 3,00'
    ),
    AddItens(
      name: 'Bacon', 
      value: '+ R\$ 6,00'
    ),
    AddItens(
      name: 'Calabresa', 
      value: '+ R\$ 7,00'
    ),
    AddItens(
      name: 'Salsicha', 
      value: '+ R\$ 4,00'
    ),
  ];
}