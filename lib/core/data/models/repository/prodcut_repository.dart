import 'package:dartz/dartz.dart';
import 'package:e_commers/core/data/models/common_response.dart';
import 'package:e_commers/core/data/models/product_info.dart';
import 'package:e_commers/core/enums/request_type.dart';
import 'package:e_commers/core/utils/network_util.dart';

class ProductRepository {
  static Future<Either<String, List<ProductModel>>> getAllProduct(
      {String? typeproduct = 'All'}) async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: typeproduct == 'All'
            ? 'Products'
            : 'Products/category/${typeproduct}',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<ProductModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(ProductModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }

  static Future<Either<String, List<String>>> getAllCategory() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'Products/categories',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<String> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(element.toString());
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
}
