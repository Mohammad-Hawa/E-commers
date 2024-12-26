import 'dart:convert';

import 'package:e_commers/core/data/models/product_info.dart';

class CartModel {
  ProductModel? productModel;
  int? qty;
  double? totals;

  CartModel({this.productModel, this.qty, this.totals});

  CartModel.fromJson(Map<String, dynamic> json) {
    productModel = json['product_model'] != null
        ? new ProductModel.fromJson(json['product_model'])
        : null;
    qty = json['qty'];
    totals = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productModel != null) {
      data['product_model'] = this.productModel!.toJson();
    }
    data['qty'] = this.qty;
    data['total'] = this.totals;
    return data;
  }

      static Map<String, dynamic> toMap(CartModel model) => {
            'product_model': model.productModel,
            'qty': model.qty,
            'total': model.totals,
          };

  //!--- Convert list of object to list of json
    static String encode(List<CartModel> list) => json.encode(
          list
              .map<Map<String, dynamic>>((model) => CartModel.toMap(model))
              .toList(),
        );

  //*--- Convert list of json to list of object

    static List<CartModel> decode(String strList) =>
        (json.decode(strList) as List<dynamic>)
            .map<CartModel>((item) => CartModel.fromJson(item))
            .toList();
}
