import 'package:flutter/material.dart';

import '../model/qr_model.dart';
import 'history_page.dart';
import 'qr_scaner_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List<QRCodeData> scannedQRCodeHistory = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            ElevatedButton(
              // Inside the login button's onPressed callback
              onPressed: () async {
                final scannedData = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QRScannerPage(),
                ));

                if (scannedData != null) {
                  final timestamp = DateTime.now();
                  // Store the scanned data and timestamp in the history list
                  scannedQRCodeHistory.add(QRCodeData(data: scannedData, timestamp: timestamp));

                  // Display the scanned data and timestamp
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Scanned Data: $scannedData\nTimestamp: $timestamp'),
                    ),
                  );
                }
              },


              child: Text('Login & Scan QR Code'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HistoryPage(),
                ));
              },
              child: Text('View History'),
            ),

          ],
        ),
      ),
    );
  }
}
