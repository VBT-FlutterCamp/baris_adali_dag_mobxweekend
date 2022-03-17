import 'package:vexana/vexana.dart';

class StoreModel extends INetworkModel<StoreModel> {
  StoreModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
      };

  @override
  StoreModel fromJson(Map<String, dynamic> json) {
    return StoreModel(
      id: json["id"],
      title: json["title"],
      price: json["price"].toDouble(),
      description: json["description"],
      category: json["category"],
      image: json["image"],
    );
  }
}
