part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsSuccess extends NewsState {
  final News news;
  NewsSuccess(this.news);

  List<Object> get props => [this.news];
}

class NewsLoading extends NewsState {
  NewsLoading();
  List<Object> get props => [];
}

class NewsError extends NewsState {
  NewsError();
  List<Object> get props => [];
}
