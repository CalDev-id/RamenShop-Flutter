part of 'model.dart';

class Food {
  final int id;
  final String name;
  final String description;
  final String picturePath;
  final double price;
  final double rate;
  final String toko;

  Food({
    required this.id,
    required this.name,
    required this.description,
    required this.picturePath,
    required this.price,
    required this.rate,
    required this.toko,
  });
}

List<Food> mockFoods = [
  Food(
      id: 1,
      name: 'Ramen Maz',
      description:
          'Ramen maz which generally has a characteristic taste of salt seasoning. This dish often appears in the city of hokodate with a light, sea-based broth. The broth comes from a mixture of ingridients such as dashi stock, dried sardines, and a sprinkling of bonito (a type of dried fish).',
      picturePath: 'assets/ramen6.png',
      price: 20,
      rate: 4.8,
      toko: 'Toko Cyna'),
  Food(
      id: 2,
      name: 'Ramen Coy',
      description:
          'Ramen maz which generally has a characteristic taste of salt seasoning. This dish often appears in the city of hokodate with a light, sea-based broth. The broth comes from a mixture of ingridients such as dashi stock, dried sardines, and a sprinkling of bonito (a type of dried fish).',
      picturePath: 'assets/ramen2.png',
      price: 16,
      rate: 4.8,
      toko: 'Widodo'),
  Food(
      id: 3,
      name: 'Ramen Niku',
      description:
          'Ramen maz which generally has a characteristic taste of salt seasoning. This dish often appears in the city of hokodate with a light, sea-based broth. The broth comes from a mixture of ingridients such as dashi stock, dried sardines, and a sprinkling of bonito (a type of dried fish).',
      picturePath: 'assets/ramen1.png',
      price: 24,
      rate: 4.8,
      toko: 'Joko'),
  Food(
      id: 4,
      name: 'Sea Ramen',
      description:
          'Ramen maz which generally has a characteristic taste of salt seasoning. This dish often appears in the city of hokodate with a light, sea-based broth. The broth comes from a mixture of ingridients such as dashi stock, dried sardines, and a sprinkling of bonito (a type of dried fish).',
      picturePath: 'assets/ramen4.png',
      price: 30,
      rate: 4.8,
      toko: 'Hirohito'),
  Food(
      id: 5,
      name: 'Sea Ramen',
      description:
          'Ramen maz which generally has a characteristic taste of salt seasoning. This dish often appears in the city of hokodate with a light, sea-based broth. The broth comes from a mixture of ingridients such as dashi stock, dried sardines, and a sprinkling of bonito (a type of dried fish).',
      picturePath: 'assets/ramen3.png',
      price: 30,
      rate: 4.8,
      toko: 'Hirohito'),
  Food(
      id: 6,
      name: 'Sea Ramen',
      description:
          'Ramen maz which generally has a characteristic taste of salt seasoning. This dish often appears in the city of hokodate with a light, sea-based broth. The broth comes from a mixture of ingridients such as dashi stock, dried sardines, and a sprinkling of bonito (a type of dried fish).',
      picturePath: 'assets/ramen5.png',
      price: 30,
      rate: 4.8,
      toko: 'Hirohito'),
];
