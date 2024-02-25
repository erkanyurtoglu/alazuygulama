class Product {
  final int id;
  final String name;
  final String image;
  final String description;
  int quantity;
  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.quantity,
  });
}

class MyProducts {
  static List<Product> allProducts = [
    Product(
        id: 9,
        name: "Baret",
        image: "assets/images/baret.png",
        description: "description",
        quantity: 2),
    Product(
        id: 1,
        name: "Kan Bağışı 0+",
        image: "assets/images/0+.jpg",
        description: "description",
        quantity: 2),
    Product(
        id: 7,
        name: "Powerbank",
        image: "assets/images/powerbank.png",
        description: "description",
        quantity: 2),
    Product(
        id: 8,
        name: "Su",
        image: "assets/images/su.png",
        description: "description",
        quantity: 2),
    Product(
        id: 2,
        name: "Kan Bağışı A+",
        image: "assets/images/a+.jpg",
        description: "description",
        quantity: 2),
    Product(
        id: 12,
        name: "İlk Yardım Çantası",
        image: "assets/images/ilkyardım.png",
        description: "description",
        quantity: 2),
    Product(
        id: 10,
        name: "Fener",
        image: "assets/images/fener.png",
        description: "description",
        quantity: 2),
    Product(
        id: 3,
        name: "Kan Bağışı B+",
        image: "assets/images/b+.jpg",
        description: "description",
        quantity: 2),
    Product(
        id: 5,
        name: "Battaniye",
        image: "assets/images/battaniye.png",
        description: "description",
        quantity: 2),
    Product(
        id: 6,
        name: "Isıtıcı",
        image: "assets/images/ısıtıcı.png",
        description: "description",
        quantity: 2),
    Product(
        id: 4,
        name: "Kan Bağışı AB+",
        image: "assets/images/ab+.jpg",
        description: "description",
        quantity: 2),
    Product(
        id: 11,
        name: "Kürek",
        image: "assets/images/kurek.png",
        description: "description",
        quantity: 2),
  ];
  static List<Product> kanList = [
    Product(
        id: 1,
        name: "Kan Bağışı 0+",
        image: "assets/images/0+.jpg",
        description: "description",
        quantity: 2),
    Product(
        id: 2,
        name: "Kan Bağışı A+",
        image: "assets/images/a+.jpg",
        description: "description",
        quantity: 2),
    Product(
        id: 3,
        name: "Kan Bağışı B+",
        image: "assets/images/b+.jpg",
        description: "description",
        quantity: 2),
    Product(
        id: 4,
        name: "Kan Bağışı AB+",
        image: "assets/images/ab+.jpg",
        description: "description",
        quantity: 2),
  ];
  static List<Product> depremList = [
    Product(
        id: 5,
        name: "Battaniye",
        image: "assets/images/battaniye.png",
        description: "description",
        quantity: 2),
    Product(
        id: 6,
        name: "Isıtıcı",
        image: "assets/images/ısıtıcı.png",
        description: "description",
        quantity: 2),
    Product(
        id: 7,
        name: "Powerbank",
        image: "assets/images/powerbank.png",
        description: "description",
        quantity: 2),
    Product(
        id: 8,
        name: "Su",
        image: "assets/images/su.png",
        description: "description",
        quantity: 2),
  ];
  static List<Product> acilyardimList = [
    Product(
        id: 9,
        name: "Baret",
        image: "assets/images/baret.png",
        description: "description",
        quantity: 2),
    Product(
        id: 10,
        name: "Fener",
        image: "assets/images/fener.png",
        description: "description",
        quantity: 2),
    Product(
        id: 11,
        name: "Kürek",
        image: "assets/images/kurek.png",
        description: "description",
        quantity: 2),
    Product(
        id: 12,
        name: "İlk Yardım Çantası",
        image: "assets/images/ilkyardım.png",
        description: "description",
        quantity: 2),
  ];
}
