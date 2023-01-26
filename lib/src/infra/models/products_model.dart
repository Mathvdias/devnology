import 'package:devnology/src/presentation/common/products.dart';

class ProductsModel extends Product {
  ProductsModel(
      {required super.name,
      required super.price,
      required super.description,
      required super.image,
      required super.about});

  static List<Product> products = [
    ProductsModel(
      name: 'Lenovo - IdeaPad\nL340 15 Gaming',
      price: 717.80,
      description:
          'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel\nCore i7-10510U Quad-Core, 16GB DDR4 RAM,\n512GB SSD, NVIDIA Quadro P520, Windows 10\nPro (20T4001VUS)',
      image: 'assets/images/pc1.svg',
      about:
          '1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520\nWindows 10 Pro 64-Bit Edition\n1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520',
    ),
    ProductsModel(
      name: 'Lenovo 15.6"\nThinkPad P15s Gen 1',
      price: 1519.00,
      description:
          'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel\nCore i7-10510U Quad-Core, 16GB DDR4 RAM,\n512GB SSD, NVIDIA Quadro P520, Windows 10\nPro (20T4001VUS)',
      image: 'assets/images/pc2.svg',
      about:
          '1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520\nWindows 10 Pro 64-Bit Edition\n1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520',
    ),
    ProductsModel(
      name: 'Notebook Lenovo 2\nem 1',
      price: 1519.00,
      description:
          'Lenovo - IdeaPad L340 15 Gaming Laptop\n- Intel Core i5 - 8GB Memory - NVIDIA\nGeForce GTX 1650 - 256GB Solid State',
      image: 'assets/images/pc3.svg',
      about:
          '1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520\nWindows 10 Pro 64-Bit Edition\n1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520',
    ),
    ProductsModel(
      name: 'Lenovo - IdeaPad\nL340 15 Gaming',
      price: 100.50,
      description:
          'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel\nCore i7-10510U Quad-Core, 16GB DDR4 RAM,\n512GB SSD, NVIDIA Quadro P520, Windows 10\nPro (20T4001VUS)',
      image: 'assets/images/pc1.svg',
      about:
          '1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520\nWindows 10 Pro 64-Bit Edition\n1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520',
    ),
    ProductsModel(
      name: 'Lenovo 15.6"\nThinkPad P15s Gen 1',
      price: 290.00,
      description:
          'Lenovo - IdeaPad L340 15 Gaming Laptop\n- Intel Core i5 - 8GB Memory - NVIDIA\nGeForce GTX 1650 - 256GB Solid State',
      image: 'assets/images/pc2.svg',
      about:
          '1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520\nWindows 10 Pro 64-Bit Edition\n1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520',
    ),
    ProductsModel(
      name: 'Notebook Lenovo 2\nem 1',
      price: 902.20,
      description:
          'Lenovo - IdeaPad L340 15 Gaming Laptop\n- Intel Core i5 - 8GB Memory - NVIDIA\nGeForce GTX 1650 - 256GB Solid State',
      image: 'assets/images/pc3.svg',
      about:
          '1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520\nWindows 10 Pro 64-Bit Edition\n1.8 GHz Intel Core i7-10510U Quad-Core Processor\n16GB of DDR4 RAM | 512GB SSD\n15.6" 1920 x 1080 IPS Display\nNVIDIA Quadro P520',
    )
  ];
}
