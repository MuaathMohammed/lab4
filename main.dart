void main() {}

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

