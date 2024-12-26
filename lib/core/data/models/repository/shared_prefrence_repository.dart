
import 'package:e_commers/core/data/models/cart_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
enum DataType {
  STRING,
  INT,
  BOOL,
  DOUBLE,
  LISTSTRING,
}

class SharedPrefrenceRepository {
  SharedPreferences pref = Get.find<SharedPreferences>();

  //!--- Keys
  String PREF_FIRST_LUNCH = 'first_lunch';
  String PREF_IS_LOGGED = 'is_logged';
  String PREF_LOGGIN_INFO = 'loggin_info';
  String PREF_TOKEN_INFO = 'token_info';
  String PREF_APP_LANG = 'app_language';
  String PREF_CART_LIST = 'cart_list';

  //* --- ----

  

  void setCartList(List<CartModel> list) {
    setPrefrnce(
        type: DataType.STRING,
        key: PREF_CART_LIST,
        value: CartModel.encode(list));
  }

  List<CartModel> getCartList() {
    if (pref.containsKey(PREF_CART_LIST)) {
      return CartModel.decode(getPrefrnce(PREF_CART_LIST));
    } else {
      return [];
    }
  }

  setPrefrnce({
    required DataType type,
    required String key,
    required dynamic value,
  }) async {
    switch (type) {
      case DataType.STRING:
        await pref.setString(key, value);
        break;
      case DataType.INT:
        await pref.setInt(key, value);
        break;
      case DataType.BOOL:
        await pref.setBool(key, value);
        break;
      case DataType.DOUBLE:
        await pref.setDouble(key, value);
        break;
      case DataType.LISTSTRING:
        await pref.setStringList(key, value);
        break;
    }
  }

  dynamic getPrefrnce(String key) {
    return pref.get(key);
  }
}
