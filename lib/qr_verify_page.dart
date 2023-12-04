import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrVerify extends StatelessWidget {
  // final Barcode? results;
  const QrVerify({
    super.key,
    //  required this.results
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[300],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cancel_rounded,
                    color: Colors.red,
                    size: MediaQuery.of(context).size.width / 4,
                  ),
                  Text(
                    "Sorry the QR code can't be verified, the certificate is not valid",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge!.merge(
                          const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
                  // Text(
                  //   results!.code.toString(),
                  //   style: Theme.of(context).textTheme.bodyLarge!.merge(
                  //         const TextStyle(
                  //           fontSize: 22,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
