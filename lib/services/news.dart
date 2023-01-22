
import '../backend/mongodb.dart';
import 'dart:developer' as developer;


class News {

  static getNews() async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Actualites');
    var news = await collection.find(
    ).toList();
    //developer.log(news[0]["dateCreateEvent"], name:'Actualites' );
    return news;
  }

}