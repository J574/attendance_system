import 'package:flutter/material.dart';

import '../model/qr_model.dart';

class HistoryPage extends StatelessWidget {
  List<QRCodeData> scannedQRCodeHistory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scanned QR Code History')),
      body: ListView.builder(
        itemCount: scannedQRCodeHistory.length,
        itemBuilder: (context, index) {
          final item = scannedQRCodeHistory[index];
          return ListTile(
            title: Text(item.data),
            subtitle: Text('Scanned on: ${item.timestamp.toString()}'),
          );
        },
      ),
    );
  }
}
