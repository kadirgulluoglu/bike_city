import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart'; // DialogBase'i kendi yapına göre uyarlaman gerekebilir

/// Genel bir onay (evet/hayır) diyaloğu
final class ConfirmationDialog extends StatelessWidget {
  /// Constructor
  const ConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmText,
    required this.cancelText,
    super.key,
  });

  /// Dialog başlığı
  final String title;

  /// Dialog mesajı
  final String message;

  /// Onay butonu metni
  final String confirmText;

  /// İptal butonu metni
  final String cancelText;

  /// Gösterimi
  static Future<bool?> show({
    required BuildContext context,
    required String title,
    required String message,
    String confirmText = 'Evet',
    String cancelText = 'Hayır',
  }) async {
    return DialogBase.show<bool?>(
      context: context,
      builder: (context) => ConfirmationDialog(
        title: title,
        message: message,
        confirmText: confirmText,
        cancelText: cancelText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(cancelText),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(
            confirmText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
