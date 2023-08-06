class DocInfoModel {
  String? name;
  String? speciality;
  double? rating;
  int? reviews;
  String? url;

  DocInfoModel(
      {this.name, this.speciality, this.rating, this.reviews, this.url});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'speciality': speciality,
      'rating': rating,
      'reviews': reviews,
      'url': url
    };
  }

  factory DocInfoModel.fromMap(Map<String, dynamic> map) {
    return DocInfoModel(
        name: map['name'] ?? '',
        speciality: map['speciality'] ?? '',
        rating: map['rating'] ?? '',
        reviews: map['reviews'] ?? '',
        url: map['url'] ?? '');
  }
}
