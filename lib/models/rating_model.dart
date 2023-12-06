class RatingModel {
  final num rate;
  final num count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsondata) {
    return RatingModel(
      rate: jsondata["rate"],
      count: jsondata["count"],
    );
  }
}
