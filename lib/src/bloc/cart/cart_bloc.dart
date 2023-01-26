import 'package:bloc/bloc.dart';
import 'package:devnology/src/bloc/cart/cart_event.dart';

import '../../data/datasource/cart_datasource.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartInitialState()) {
    on<AddProductToCartEvent>(_onAddProductToCartEvent);
    on<RemoveProductFromCartEvent>(_onRemoveProductFromCartEvent);
    on<ClearCartContentEvent>(_onClearCartContentEvent);
    on<FetchCartProductsEvent>(_onFetchCartProductsEvent);
  }
  void _onFetchCartProductsEvent(
      FetchCartProductsEvent event, Emitter<CartState> emitter) {
    List<CartDatasource> cartItems = listCart;
    if (cartItems.isNotEmpty) {
      emitter(CartSuccessFetchDataState(cartItems: cartItems));
    } else {
      emitter(const CartErrorFetchDataState(
          errorMessage: "Sem Produtos Disponiveis"));
    }
  }

  void _onAddProductToCartEvent(
      AddProductToCartEvent event, Emitter<CartState> emitter) {
    listCart.add(event.cartItem);
    emitter(const CartItemAddedSuccessfulyState(
        successMessage: "Produto adicionado com sucesso!"));
  }

  void _onRemoveProductFromCartEvent(
      RemoveProductFromCartEvent event, Emitter<CartState> emitter) {
    listCart.removeAt(event.itemIndex);
    emitter(const CartItemRemovedSuccessfulyState(
        successMessage: "Produto Removido com sucesso!"));
  }

  void _onClearCartContentEvent(
      ClearCartContentEvent event, Emitter<CartState> emitter) {
    listCart.clear();
    emitter(const CartContentRemovedSuccessfulyState(
        successMessage: "Produtos Removidos!"));
  }
}
