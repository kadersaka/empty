import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> getBytesFromAssetFroMarker(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  var r = (await fi.image.toByteData(format: ui.ImageByteFormat.png))!;
  return r.buffer.asUint8List();
}
