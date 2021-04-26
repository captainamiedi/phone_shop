class Product {
  String title;
  String description;
  int price;
  String image;
  String company;
  bool inCart;
  int count;
  int total;
  int id;

  Product(this.title, this.description, this.price, this.image, this.company,
      this.count, this.inCart, this.total, this.id);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(Product(
        'Google Pixel - Black',
        'Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub, echo park actually green juice sriracha paleo. Brooklyn sriracha semiotics, DIY coloring book mixtape craft beer sartorial hella blue bottle. Tote bag wolf authentic try-hard put a bird on it mumblecore. Unicorn lumbersexual master cleanse blog hella VHS, vaporware sartorial church-key cardigan single-origin coffee lo-fi organic asymmetrical. Taxidermy semiotics celiac stumptown scenester normcore, ethical helvetica photo booth gentrify.',
        10,
        'product-1.png',
        'GOOGLE',
        1,
        false,
        10,
        1));
    items.add(Product(
        "Samsung S7",
        "Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub, echo park actually green juice sriracha paleo. Brooklyn sriracha semiotics, DIY coloring book mixtape craft beer sartorial hella blue bottle. Tote bag wolf authentic try-hard put a bird on it mumblecore. Unicorn lumbersexual master cleanse blog hella VHS, vaporware sartorial church-key cardigan single-origin coffee lo-fi organic asymmetrical. Taxidermy semiotics celiac stumptown scenester normcore, ethical helvetica photo booth gentrify.",
        10,
        'product-2.png',
        "SAMSUNG",
        1,
        false,
        10,
        2));

    items.add(Product(
        "HTC 10 - Black",
        "Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub, echo park actually green juice sriracha paleo. Brooklyn sriracha semiotics, DIY coloring book mixtape craft beer sartorial hella blue bottle. Tote bag wolf authentic try-hard put a bird on it mumblecore. Unicorn lumbersexual master cleanse blog hella VHS, vaporware sartorial church-key cardigan single-origin coffee lo-fi organic asymmetrical. Taxidermy semiotics celiac stumptown scenester normcore, ethical helvetica photo booth gentrify.",
        130,
        'product-3.png',
        "htc",
        1,
        false,
        130,
        3));
    items.add(Product(
        "HTC 10 - White",
        "Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub, echo park actually green juice sriracha paleo. Brooklyn sriracha semiotics, DIY coloring book mixtape craft beer sartorial hella blue bottle. Tote bag wolf authentic try-hard put a bird on it mumblecore. Unicorn lumbersexual master cleanse blog hella VHS, vaporware sartorial church-key cardigan single-origin coffee lo-fi organic asymmetrical. Taxidermy semiotics celiac stumptown scenester normcore, ethical helvetica photo booth gentrify.",
        40,
        'product-4.png',
        'htc',
        1,
        false,
        40,
        4));
    items.add(Product(
        "HTC Desire 626s",
        'Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub,',
        40,
        'product-5.png',
        'htc',
        1,
        false,
        40,
        5));
    items.add(Product(
        "Iphone 7",
        'Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub,',
        60,
        'product-6.png',
        'Apple',
        1,
        false,
        60,
        6));
    items.add(Product(
        "Iphone 10",
        'Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub,',
        120,
        'product-7.png',
        'Apple',
        1,
        false,
        120,
        7));
    items.add(Product(
        "Tecno",
        'Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub,',
        10,
        'product-8.png',
        'Tecno',
        1,
        false,
        10,
        8));
    items.add(Product(
        "Tecno M5",
        'Lorem ipsum dolor amet offal butcher quinoa sustainable gastropub,',
        30,
        'product-9.png',
        'Tecno',
        1,
        false,
        30,
        9));

    return items;
  }
}
