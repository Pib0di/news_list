import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_list/features/viewing_news/domain/futured_news.dart';
import 'package:news_list/features/viewing_news/domain/latest_news.dart';
import 'package:news_list/features/viewing_news/domain/news.dart';

part 'viewing_news_event.dart';

part 'viewing_news_state.dart';

class ViewingNewsBloc extends Bloc<ViewingNewsEvent, ViewingNewsState> {

  ViewingNewsBloc() : super(ViewingNewsInitial()) {
    List<LatestNewsList> latestNewsList;
    on<ReadAllNews>(
      (event, emit) {
        debugPrint('ReadAllNews');
      },
    );
  }
}
