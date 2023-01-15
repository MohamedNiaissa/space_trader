
import '../services/news.dart';

class NewsController {

  static getAllNews() {
    return News.getNews();
  }

}