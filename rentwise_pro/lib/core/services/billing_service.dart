import '../models/billing_constants.dart';

class BillingService {
  /// Calculates electricity bill based on readings
  /// Formula: (Current Reading - Previous Reading) * Per Unit Price
  double calculateElectricity(
    double currentReading,
    double previousReading,
    double perUnitPrice,
  ) {
    if (currentReading < previousReading) {
      throw ArgumentError(
        'Current reading cannot be less than previous reading',
      );
    }
    return (currentReading - previousReading) * perUnitPrice;
  }

  /// Calculates total monthly bill
  double calculateTotalMonthlyBill({
    required double baseRent,
    required double electricityCharge,
    required double waterCharge,
    required double internetCharge,
    double otherCharges = 0.0,
    double previousDues = 0.0,
    double advanceBalance = 0.0,
  }) {
    final subTotal =
        baseRent +
        electricityCharge +
        waterCharge +
        internetCharge +
        otherCharges;
    final totalWithDues = subTotal + previousDues;
    return totalWithDues - advanceBalance;
  }
}
