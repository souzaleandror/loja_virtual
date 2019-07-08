import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  String category;
  String id;
  String title;
  String name;
  String description;
  double price;
  List images;
  List sizes;
  String size;

  ProductData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    title = snapshot.data["title"];
    name = snapshot.data["name"];
    description = snapshot.data["description"];
    price = snapshot.data["price"] + 0.0;
    images = snapshot.data["images"];
    sizes = snapshot.data["sizes"];
    size = snapshot.data["size"];
  }

  Map<String, dynamic> toResumeMap() {
    return {
      "title": title,
      "description": description,
      "size": size,
      "price": price
    };
  }
}
