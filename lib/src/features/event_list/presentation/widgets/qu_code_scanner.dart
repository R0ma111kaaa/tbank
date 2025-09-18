import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';

class QRScanButton extends StatelessWidget {
  final void Function(String result) onScan;

  const QRScanButton({super.key, required this.onScan});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      icon: Icon(Icons.qr_code, color: context.colorExt.primaryBackgroundColor),
      onPressed: () async {
        var status = await Permission.camera.status;
        if (!status.isGranted) {
          status = await Permission.camera.request();
        }

        if (status.isGranted) {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QRViewPage()),
          );

          if (result is String) {
            onScan(result);
          }
        } else {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Камера недоступна")));
        }
      },
    );
  }
}

class QRViewPage extends StatefulWidget {
  const QRViewPage({super.key});

  @override
  State<QRViewPage> createState() => _QRViewPageState();
}

class _QRViewPageState extends State<QRViewPage> {
  final MobileScannerController controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: context.colorExt.primaryBackgroundColor),
        title: Text(
          'Сканирование qr кода',
          style: context.textExt.montserratExtraBold20.copyWith(
            color: context.colorExt.primaryBackgroundColor,
          ),
        ),
      ),
      body: MobileScanner(
        controller: controller,
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          if (barcodes.isNotEmpty) {
            final code = barcodes.first.rawValue;
            if (code != null) {
              controller.stop();
              Navigator.pop(context, code);
            }
          }
        },
      ),
    );
  }
}
