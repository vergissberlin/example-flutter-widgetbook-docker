import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// import generated directories
import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}



// use @App annotation
@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // Use the generated directories variable
      directories: directories,

      addons: [
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
        DeviceFrameAddon(
          devices: [
            DeviceInfo.genericDesktopMonitor(
              platform: TargetPlatform.fuchsia,
              id: 'main',
              name: 'Cashier display',
              screenSize: const Size(1024,768),
              pixelRatio: 2.0,
              windowPosition: const Rect.fromLTWH(0, 0, 1024, 808),
            ),
            DeviceInfo.genericDesktopMonitor(
              platform: TargetPlatform.fuchsia,
              id: 'customer',
              name: 'Customer display',
              screenSize: const Size(640,480),
              pixelRatio: 1.0,
              windowPosition: const Rect.fromLTWH(0, 0, 640, 500),
              framePainter: const GenericDesktopMonitorFramePainter(
                platform: TargetPlatform.fuchsia,
                windowPosition: Rect.fromLTWH(0, 0, 640, 520),
                footBaseHeight: 30,
                footBarWidth: 30,
                outerBodyColor: Color(0x770000FF),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
