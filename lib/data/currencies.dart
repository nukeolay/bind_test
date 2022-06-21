enum Currencies {
  usd,
  eur,
  rub,
}

class Currency {
  final String name;
  final String shortName;
  final String symbol;
  final String image;

  const Currency({
    required this.name,
    required this.shortName,
    required this.symbol,
    required this.image,
  });
}

const currencies = {
  Currencies.usd: Currency(
      name: 'Dollar', shortName: 'USD', symbol: '\$', image: 'assets/usd.png'),
  Currencies.eur: Currency(
      name: 'Euro', shortName: 'EUR', symbol: '€', image: 'assets/euro.png'),
  Currencies.rub: Currency(
      name: 'Ruble', shortName: 'RUB', symbol: '₽', image: 'assets/rub.png'),
};
