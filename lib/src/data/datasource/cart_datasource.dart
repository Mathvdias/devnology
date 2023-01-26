import 'package:devnology/src/infra/models/products_model.dart';

class CartDatasource extends ProductsModel {
  late final int quantity;
  late final ProductsModel productsModel;

  CartDatasource(
      {required super.name,
      required super.price,
      required super.description,
      required super.image,
      required super.about});
}

List<CartDatasource> listCart = [];
