import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:task4_flutter/model/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    if (event is GetNews) {
      yield NewsLoading();
      try {
        Dio _dio = Dio();
        Response response = await _dio.get(
            "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7be442403dbf45aab24dd11cc9e4b2ca");
        News news = News.fromJson(response.data);
        yield NewsSuccess(news);
      } catch (e) {
        yield NewsError();
      }
    }
  }
}
