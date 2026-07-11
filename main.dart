void main() {
  PaymentMethod pm;
  pm = new JaibMethod();
  pm.Pay(5001);
  pm.Pay(100);
  pm = new JwallyMethod();
  pm.Pay(1000);
  pm.Pay(1000000000);
}

abstract class PaymentMethod {
  void Pay(double amount);
}

class JaibMethod implements PaymentMethod {
  @override
  void Pay(double amount) {
    if (amount > 5000) {
      print('Amount exceeds the limit for Jaib Method');
    } else {
      print('Paying $amount using Jaib Method');
    }
  }
}

class JwallyMethod implements PaymentMethod {
  @override
  void Pay(double amount) {
    if (amount > 100000) {
      print("Amont Exceded the limit");
    } else {
      print("You paying ${amount} using Jwally pyment method");
    }
  }
}
