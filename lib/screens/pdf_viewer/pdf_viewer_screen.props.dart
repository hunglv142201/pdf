import 'dart:typed_data';

class PdfViewerScreenProps {
  const PdfViewerScreenProps({this.pdf});

  final Future<Uint8List>? pdf;
}
