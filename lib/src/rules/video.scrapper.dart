import 'package:link_preview_generator/src/models/types.dart';
import 'package:link_preview_generator/src/utils/scrapper.dart';
import 'package:universal_html/html.dart';

class VideoScrapper {
  static WebInfo scrape(String url) {
    try {
      return WebInfo(
        description: url,
        domain: url,
        icon: '',
        image: '',
        video: url,
        title: url.substring(url.lastIndexOf('/') + 1),
        type: LinkPreviewType.video,
      );
    } catch (e) {
      print('Video scrapper failure Error: $e');
      return WebInfo(
        description: url,
        domain: url,
        icon: '',
        image: '',
        video: url,
        title: url.substring(url.lastIndexOf('/') + 1),
        type: LinkPreviewType.error,
      );
    }
  }
}
