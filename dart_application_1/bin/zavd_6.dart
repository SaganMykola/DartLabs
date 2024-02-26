class TMoney {
  late double _amountInDollars;
  late double _exchangeRate;

  TMoney(double amountInDollars, double initialExchangeRate) {
    _amountInDollars = amountInDollars;
    _exchangeRate = initialExchangeRate;
  }

  void addMoneyInUah(double amountInUah) {
    _amountInDollars += amountInUah / _exchangeRate;
  }

  void withdrawMoneyInUah(double amountInUah) {
    _amountInDollars -= amountInUah / _exchangeRate;
  }

  void setExchangeRate(double newExchangeRate) {
    _exchangeRate = newExchangeRate;
  }

  double getAmountInDollars() {
    return _amountInDollars;
  }

  double getExchangeRate() {
    return _exchangeRate;
  }
}

void main() {
  TMoney money = TMoney(100, 28.5);
  print("Початкова сума в доларах: ${money.getAmountInDollars()}");

  money.addMoneyInUah(500);
  print("Сума після додавання 500 гривень: ${money.getAmountInDollars()}");

  money.withdrawMoneyInUah(200);
  print("Сума після вилучення 200 гривень: ${money.getAmountInDollars()}");

  money.setExchangeRate(29);
  print("Новий курс долара: ${money.getExchangeRate()}");

  money.addMoneyInUah(300);
  print("Сума після додавання 300 гривень з новим курсом: ${money.getAmountInDollars()}");
}
