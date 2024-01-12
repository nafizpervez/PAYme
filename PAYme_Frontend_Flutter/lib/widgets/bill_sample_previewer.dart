import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class BillSamplePreviewer extends StatelessWidget {
  final String imagelink;
  const BillSamplePreviewer({
    Key? key,
    required this.imagelink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.dialog(
          PinchZoom(
            child: Image.asset(
              imagelink,
            ),
            resetDuration: const Duration(milliseconds: 100),
            maxScale: 3.0,
            zoomEnabled: true,
            onZoomStart: () {
              print('Start zooming');
            },
            onZoomEnd: () {
              Get.close(1);
            },
          ),
          barrierDismissible: true,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            'Preview Card Sample',
            style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.preview),
          ),
        ],
      ),
    );
  }
}
