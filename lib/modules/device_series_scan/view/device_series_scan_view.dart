import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_string.dart';
import '../../../routes/app_routes.dart';

class DeviceSeriesScan extends StatefulWidget {
  const DeviceSeriesScan({Key? key}) : super(key: key);

  @override
  State<DeviceSeriesScan> createState() => _DeviceSeriesScanState();
}

class _DeviceSeriesScanState extends State<DeviceSeriesScan> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  void _setWarrantyStatus(result) {
    if (result != null) {
      Navigator.of(context).pushNamed(Routes.DURATIONS_AVAILABLE);
    } else
      Navigator.of(context).pushNamed(Routes.DURATIONS_ERROR_SCAN);
  }

  Widget buildResult() => Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.transparent,
        ),
        child: Text(
          result != null ? 'Result : ${result}' : 'Scan product barcode',
          style: TextStyle(
              fontSize: 18,
              color: AppColors.white,
              fontWeight: FontWeight.w500),
          maxLines: 3,
        ),
      );
  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.blue,
          borderLength: 80,
          borderWidth: 6,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        this.controller?.stopCamera();
        _setWarrantyStatus(scanData);
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.purplePink,
              ),
            ),
            shadowColor: Colors.transparent,
            backgroundColor: AppColors.white,
            centerTitle: true,
            title: Text(
              WarrantyStatusString.DEVICE_SERIAL_TITLE,
              style: TextStyle(
                color: AppColors.purplePink,
                fontSize: 24,
              ),
            ),
          ),
          body: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              _buildQrView(context),
              Positioned(
                child: buildResult(),
                top: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
