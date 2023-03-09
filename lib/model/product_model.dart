// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  ProductsModel({
    this.offerProducts,
    this.count,
  });

  List<OfferProduct>? offerProducts;
  int? count;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    offerProducts: json["offer-products"] == null ? [] : List<OfferProduct>.from(json["offer-products"]!.map((x) => OfferProduct.fromJson(x))),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "offer-products": offerProducts == null ? [] : List<dynamic>.from(offerProducts!.map((x) => x.toJson())),
    "count": count,
  };
}

class OfferProduct {
  OfferProduct({
    this.id,
    this.productId,
    this.categoryId,
    this.name,
    this.slug,
    this.description,
    this.typeId,
    this.price,
    this.shopId,
    this.salePrice,
    this.sku,
    this.quantity,
    this.inStock,
    this.isTaxable,
    this.shippingClassId,
    this.status,
    this.productType,
    this.purchasePrice,
    this.unit,
    this.height,
    this.width,
    this.length,
    this.image,
    this.gallery,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.maxPrice,
    this.minPrice,
    this.deadline,
    this.targetSale,
    this.delivryDate,
    this.maxQty,
  });

  int? id;
  int? productId;
  int? categoryId;
  String? name;
  String? slug;
  String? description;
  int? typeId;
  int? price;
  int? shopId;
  int? salePrice;
  String? sku;
  int? quantity;
  int? inStock;
  int? isTaxable;
  dynamic shippingClassId;
  Status? status;
  ProductType? productType;
  String? purchasePrice;
  String? unit;
  dynamic height;
  dynamic width;
  dynamic length;
  String? image;
  String? gallery;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic maxPrice;
  dynamic minPrice;
  dynamic deadline;
  dynamic targetSale;
  dynamic delivryDate;
  int? maxQty;

  factory OfferProduct.fromJson(Map<String, dynamic> json) => OfferProduct(
    id: json["id"],
    productId: json["product_id"],
    categoryId: json["category_id"],
    name: json["name"],
    slug: json["slug"],
    description: json["description"],
    typeId: json["type_id"],
    price: json["price"],
    shopId: json["shop_id"],
    salePrice: json["sale_price"],
    sku: json["sku"],
    quantity: json["quantity"],
    inStock: json["in_stock"],
    isTaxable: json["is_taxable"],
    shippingClassId: json["shipping_class_id"],
    status: statusValues.map[json["status"]]!,
    productType: productTypeValues.map[json["product_type"]]!,
    purchasePrice: json["purchase_price"],
    unit: json["unit"],
    height: json["height"],
    width: json["width"],
    length: json["length"],
    image: json["image"],
    gallery: json["gallery"],
    deletedAt: json["deleted_at"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    maxPrice: json["max_price"],
    minPrice: json["min_price"],
    deadline: json["deadline"],
    targetSale: json["target_sale"],
    delivryDate: json["delivry_date"],
    maxQty: json["max_qty"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "category_id": categoryId,
    "name": name,
    "slug": slug,
    "description": description,
    "type_id": typeId,
    "price": price,
    "shop_id": shopId,
    "sale_price": salePrice,
    "sku": sku,
    "quantity": quantity,
    "in_stock": inStock,
    "is_taxable": isTaxable,
    "shipping_class_id": shippingClassId,
    "status": statusValues.reverse[status],
    "product_type": productTypeValues.reverse[productType],
    "purchase_price": purchasePrice,
    "unit": unit,
    "height": height,
    "width": width,
    "length": length,
    "image": image,
    "gallery": gallery,
    "deleted_at": deletedAt,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "max_price": maxPrice,
    "min_price": minPrice,
    "deadline": deadline,
    "target_sale": targetSale,
    "delivry_date": delivryDate,
    "max_qty": maxQty,
  };
}

enum ProductType { SIMPLE }

final productTypeValues = EnumValues({
  "simple": ProductType.SIMPLE
});

enum Status { PUBLISH }

final statusValues = EnumValues({
  "publish": Status.PUBLISH
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
