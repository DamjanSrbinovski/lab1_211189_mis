class Clothes {
  final int id;
  final String name;
  final String image;
  final String desc;
  final double price;

  Clothes({
    required this.id,
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
  });

  Clothes.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        image= data['image'],
        desc=data['desc'],
        price=data['data'];


  Map<String, dynamic> toJson() => {'id' : id, 'name' : name, 'image' : image, 'desc':desc,'price':price};

}