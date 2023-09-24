import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_list/features/viewing_news/bloc/viewing_news_bloc.dart';
import 'package:news_list/features/viewing_news/domain/futured_news.dart';
import 'package:news_list/features/viewing_news/domain/news.dart';
import 'package:news_list/features/viewing_news/widgets/featured_news.dart';
import 'package:news_list/features/viewing_news/widgets/latest_news_card.dart';

class ViewingNews extends StatelessWidget {
  ViewingNews({super.key});

  final _viewingNewsBloc = ViewingNewsBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notification'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          TextButton(
            onPressed: () {
              _viewingNewsBloc.add(ReadAllNews());
            },
            child: const Text('Mark all read'),
          ),
        ],
      ),
      body: BlocBuilder<ViewingNewsBloc, ViewingNewsState>(
        bloc: _viewingNewsBloc,
        builder: (context, state) {
          if (state is ViewingNewsLoading) {
            return const CircularProgressIndicator();
          } else if (state is ReadAllNews) {
            return const CircularProgressIndicator();
          } else {
            return CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16.0),
                    child: const Text(
                      "Featured",
                      style: TextStyle(fontSize: 26.0),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: false,
                  delegate: FeaturedNews(featuredNewsList: <FeaturedNewsList>[
                    FeaturedNewsList(
                        title: 'News',
                        imageUrl:
                            'https://sun9-55.userapi.com/impf/c840323/v840323735/2f571/6oSVyE3YDh0.jpg?size=640x427&quality=96&sign=65c4194fc1327a0493c0d3956fcf32b2&c_uniq_tag=JJEe1ENSEIGGBM54tluYSglYYIHC_uN90wrqlX7wtb0&type=album'),
                    FeaturedNewsList(
                        title: 'News',
                        imageUrl:
                            'https://sun9-55.userapi.com/impf/c840323/v840323735/2f571/6oSVyE3YDh0.jpg?size=640x427&quality=96&sign=65c4194fc1327a0493c0d3956fcf32b2&c_uniq_tag=JJEe1ENSEIGGBM54tluYSglYYIHC_uN90wrqlX7wtb0&type=album'),
                    FeaturedNewsList(
                        title: 'News',
                        imageUrl:
                            'https://sun9-55.userapi.com/impf/c840323/v840323735/2f571/6oSVyE3YDh0.jpg?size=640x427&quality=96&sign=65c4194fc1327a0493c0d3956fcf32b2&c_uniq_tag=JJEe1ENSEIGGBM54tluYSglYYIHC_uN90wrqlX7wtb0&type=album'),
                  ]),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16.0),
                    child: const Text(
                      "Latest news",
                      style: TextStyle(fontSize: 26.0),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return const LatestNewsCard(
                        isRead: false,
                        imageUrl:
                            'https://sun9-55.userapi.com/impf/c840323/v840323735/2f571/6oSVyE3YDh0.jpg?size=640x427&quality=96&sign=65c4194fc1327a0493c0d3956fcf32b2&c_uniq_tag=JJEe1ENSEIGGBM54tluYSglYYIHC_uN90wrqlX7wtb0&type=album',
                        title: 'We are processing your request...',
                      );
                    },
                    childCount: 100,
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
