class Currency {
  String symbol;
  String name;
  Currency(this.symbol, this.name);

  static euro() => Currency('€', 'euro');
}
