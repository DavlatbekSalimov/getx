class CommentModel {
  final String id;
  final String title;
  final String subtitle;
  final String datetime;
  CommentModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.datetime,
  });
  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        id: json['id'],
        title: json['title'],
        subtitle: json['subtitle'],
        datetime: json['datetime'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'subtitle': subtitle,
        'datetime': datetime,
      };
}
