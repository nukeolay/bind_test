class TransactionSubject {
  final String name;

  TransactionSubject({
    required this.name,
  });
}

class Merchant extends TransactionSubject {
  final String image;
  Merchant({required this.image, required super.name});
}

Set<TransactionSubject> transactionSubjects = {
  Merchant(name: 'Pret A Manger', image: 'assets/pret.jpg'),
  TransactionSubject(name: 'Darren Hodgking'),
  Merchant(name: 'McDonalds', image: 'assets/mcdonalds.jpeg'),
  Merchant(name: 'Starbucks', image: 'assets/starbucks.png'),
  TransactionSubject(name: 'Dave Winklevoss'),
  Merchant(name: 'Virgin Megastore', image: 'assets/virgin.png'),
  Merchant(name: 'Nike', image: 'assets/nike.jpg'),
  Merchant(name: 'Louis Vuitton', image: 'assets/lv.png'),
  Merchant(name: 'Carrefour', image: 'assets/carrefour.jpg'),
};
