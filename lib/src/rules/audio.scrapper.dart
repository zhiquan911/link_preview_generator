import 'package:link_preview_generator/src/models/types.dart';
import 'package:link_preview_generator/src/utils/scrapper.dart';
import 'package:universal_html/html.dart';

class AudioScrapper {
  static WebInfo scrape(String url) {
    try {
      return WebInfo(
        description: url.substring(url.lastIndexOf('/') + 1),
        domain: url,
        icon: '',
        image: '',
        video: '',
        title: url.substring(url.lastIndexOf('/') + 1),
        type: LinkPreviewType.audio,
      );
    } catch (e) {
      print('Audio scrapper failure Error: $e');
      return WebInfo(
        description: url,
        domain: url,
        icon: '',
        image: '',
        video: '',
        title: url.substring(url.lastIndexOf('/') + 1),
        type: LinkPreviewType.error,
      );
    }
  }
}
