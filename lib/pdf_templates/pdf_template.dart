import 'dart:typed_data';

abstract class PDFTemplate {
  Future<Uint8List> build();
}
