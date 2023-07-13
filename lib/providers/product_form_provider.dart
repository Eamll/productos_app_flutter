import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Product product;

  updateAvailability(bool value) {
    print(value);
    this.product.available = value;
    notifyListeners();
  }

  ProductFormProvider(this.product) {}

  bool isValidForm() {
    print(product.nombre);
    print(product.price);
    print(product.available);

    return formkey.currentState?.validate() ?? false;
  }
}
