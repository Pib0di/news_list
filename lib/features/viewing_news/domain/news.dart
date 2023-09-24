class News {
  News({
    required this.isFeatured,
    required this.isRead,
    required this.title,
    required this.imageUrl,
  });
  final bool isFeatured;
  final bool isRead;
  final String title;
  String imageUrl;
}
