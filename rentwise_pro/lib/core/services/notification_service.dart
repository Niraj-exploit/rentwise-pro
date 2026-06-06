import 'package:url_launcher/url_launcher.dart';

class NotificationService {
  /// Sends a payment reminder via WhatsApp
  static Future<void> sendWhatsAppReminder({
    required String phone,
    required String tenantName,
    required double amount,
    required String month,
  }) async {
    final message =
        "Namaste $tenantName, this is a friendly reminder from your landlord regarding your rent for $month. The total pending amount is Rs. $amount. Please kindly settle it at your earliest convenience. Thank you!";
    final url =
        "whatsapp://send?phone=+977$phone&text=${Uri.encodeComponent(message)}";

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      // Fallback to SMS if WhatsApp is not installed
      await sendSMSReminder(phone: phone, message: message);
    }
  }

  /// Sends a payment reminder via SMS
  static Future<void> sendSMSReminder({
    required String phone,
    required String message,
  }) async {
    final url = "sms:+977$phone?body=${Uri.encodeComponent(message)}";
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}
