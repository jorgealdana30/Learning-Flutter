void main() {
  final Map<String, Product> products = {
    "platano": Product(price: 500, description: "Platano Verde", stock: 200)
  };

  final Store store = Store(products: products);
  store.addNewProducts({
    "manzana": Product(price: 400, description: "Manzana Roja", stock: 150)
  });
  print(store.showPriceAllInventory());
  store.searchProduct("platano");
  store.updateProduct("manzana", Product(description: "Manzana Verde", price: 500, stock: 100));
  store.showProducts();

}

class Product {
  String description;
  double price;
  int stock;

  Product(
      {required this.description, required this.price, required this.stock});

  @override
  String toString() {
    return 'Product{description: $description, price: $price, stock: $stock}';
  }
}

abstract class Inventory {
  Map<String, Product> products;

  Inventory({required this.products});

  void addNewProducts(Map<String, Product> product);

  void removeProduct(String key);

  void updateProduct(String key, Product newInfo);

  void searchProduct(String key);

  void showProducts();

  double showPriceAllInventory();
}

class Store extends Inventory {
  Store({required super.products});

  @override
  void addNewProducts(Map<String, Product> product) {
    this.products.addAll(product);
  }

  @override
  void removeProduct(String key) {
    this.products.remove(key);
  }

  @override
  void searchProduct(String key) {
    this.products.entries.forEach((element) {
      if (element.key == key) {
        print(element.toString());
      }
    });
  }

  @override
  double showPriceAllInventory() {
    double totalPrice = 0.0;
    this.products.forEach((key, product) {
      totalPrice += product.price;
    });
    return totalPrice;
  }

  @override
  void showProducts() {
    this.products.entries.forEach((element) {
      print(
          "Nombre: ${element.key} => Precio: ${element.value.price}, Stock: ${element.value.stock}, Descripcion: ${element.value.description}");
    });
  }

  @override
  void updateProduct(String key, Product newInfo) {
    this.products[key] = newInfo;
  }
}
