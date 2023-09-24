part of 'viewing_news_bloc.dart';

@immutable
abstract class ViewingNewsState {}

class ViewingNewsInitial extends ViewingNewsState {
}

class ViewingNewsLoading extends ViewingNewsState {}

class ViewingNewsReadAllNews extends ViewingNewsState {
  ViewingNewsReadAllNews({required this.listNews});

  final List<News> listNews;
}
