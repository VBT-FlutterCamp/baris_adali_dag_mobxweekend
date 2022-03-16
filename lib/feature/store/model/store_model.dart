import 'package:vexana/vexana.dart';

class StoreModel extends INetworkModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  StoreModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    return data;
  }

  @override
  fromJson(Map<String, dynamic> json) {
    StoreModel(
      id: json["id"],
      title: json["title"],
      price: json["price"].toDouble(),
      description: json["description"],
      category: json["category"],
      image: json["image"],
    );
  }
}
