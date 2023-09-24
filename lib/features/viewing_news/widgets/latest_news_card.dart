import 'package:flutter/material.dart';
import 'package:news_list/features/viewing_news/domain/latest_news.dart';
import 'package:news_list/features/viewing_one_news/viewing_one_news.dart';

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({
    super.key, required this.isRead, required this.imageUrl, required this.title,
  });

  final bool isRead;
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.only(bottom: 32, right: 16, left: 16),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(5, 7),
              ),
            ],
            color: Colors.white70,
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ViewingOneNews(),
                ),
              );
            },
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 32),
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        const Text(
                          '1 day ago',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 15,
          top: 1,
          child: Icon(
            Icons.circle,
            // color: Color(0xffa6de98),
            color: isRead == true
                ? const Color(0xffcbcbcb)
                : const Color(0xe58fdc73),
            size: 12,
          ),
        ),
      ],
    );
  }
}
