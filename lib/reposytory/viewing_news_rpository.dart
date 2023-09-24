import 'package:dio/dio.dart';
import 'package:news_list/features/viewing_news/domain/futured_news.dart';

class CryptoCoinsRepository {
  CryptoCoinsRepository({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<List<FeaturedNewsList>> getFeaturedNewsList() async {
    var featuredNewsList = <FeaturedNewsList>[];
    try {
      featuredNewsList = await _fetchFeaturedNewsList();
    } catch (e) {}
    return featuredNewsList;
  }

  Future<List<FeaturedNewsList>> _fetchFeaturedNewsList() async {
    final response = await dio.get('https://repo/FeaturedNewsList');
    final data = response.data as Map<String, dynamic>;

    List<FeaturedNewsList> featuredNewsList = response.data[''];
    return featuredNewsList;
  }
}
