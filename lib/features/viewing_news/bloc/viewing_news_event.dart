part of 'viewing_news_bloc.dart';

@immutable
abstract class ViewingNewsEvent {}

class ReadAllNews extends ViewingNewsEvent{

}

class LoadNews extends ViewingNewsEvent{}
