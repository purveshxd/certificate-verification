import 'package:certificate_verification/qr_scan_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Certificate Verification"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This is the certificate verification app for "
                  " scan the qr code to verify that the certificate provided was offically given by ..."),
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QRViewExample(),
                      ));
                },
                icon: const Icon(Icons.qr_code_scanner_rounded),
                label: const Text("Scan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
