import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_list/features/viewing_news/bloc/viewing_news_bloc.dart';
import 'package:news_list/features/viewing_news/domain/futured_news.dart';
import 'package:news_list/features/viewing_news/domain/news.dart';

class FeaturedNews extends SliverPersistentHeaderDelegate {
  FeaturedNews({
    required this.featuredNewsList,
  });

  List<FeaturedNewsList> featuredNewsList = [];

  @override
  double get minExtent => 150.0;

  @override
  double get maxExtent => 400.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredNewsList.length,
            itemBuilder: (context, index){
              return FeaturedNewsCard(title: featuredNewsList[index].title, imageUrl: featuredNewsList[index].imageUrl);
            })
      ),
    );
  }

  @override
  bool shouldRebuild(FeaturedNews oldDelegate) {
    return false;
  }
}

class FeaturedNewsCard extends StatelessWidget {
  const FeaturedNewsCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 32.0, left: 32, bottom: 32),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            textAlign: TextAlign.left,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 30,
              overflow: TextOverflow.ellipsis,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
