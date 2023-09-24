import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'viewing_one_news_event.dart';
part 'viewing_one_news_state.dart';

class ViewingOneNewsBloc extends Bloc<ViewingOneNewsEvent, ViewingOneNewsState> {
  ViewingOneNewsBloc() : super(ViewingOneNewsInitial()) {
    on<ViewingOneNewsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
