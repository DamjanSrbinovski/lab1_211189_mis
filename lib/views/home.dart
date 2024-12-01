import 'package:flutter/material.dart';

import '../models/clothes_model.dart';
import 'details.dart';


class HomeScreen extends StatelessWidget {
  final List<Clothes> clothes = [
    Clothes(
      id:1,
      name: 'Black Jeans',
      image: 'https://images.napali.app/global/quiksilver-products/all/default/xlarge/eqydp03470_quiksilver,f_kvjw_frt1.jpg',
      desc: 'Black Jeans for Men',
      price: 23.99,
    ),

    Clothes(
      id:2,
      name: 'Oversized T-Shirt',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEa7rJpNFyhrvAtuEuvkyq9uGml-9Z1V-U3g&s',
      desc: 'Casual T-shirt with Nike logo.',
      price: 9.99,
    ),

    Clothes(
      id:3,
      name: 'Retro Marlboro Hoodie',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAHvGD1fj9tHiMhIw-U9fG9amHqio2AgfiCQ&s',
      desc: 'Retro Hoodie For outside use',
      price: 49.99,
    ),

    Clothes(
      id:4,
      name: 'Cargo Pants',
      image: 'https://m.media-amazon.com/images/I/71Aub-LuusL._AC_UF894,1000_QL80_.jpg',
      desc: 'Cream color cargo pants',
      price: 35.99,
    ),

    Clothes(
      id:5,
      name: 'Shoes',
      image: 'https://cdn.runrepeat.com/storage/gallery/buying_guide_primary/66/66-best-sneakers-001-15275042-main.jpg',
      desc: 'Jordan 1 High Shoes',
      price: 119.99,
    ),

    Clothes(
      id:6,
      name: 'Timberland Boots',
      image: 'https://photos6.spartoo.eu/photos/340/3408/3408_1200_A.jpg',
      desc: 'Timberland winter boots for snow',
      price: 299.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(
            child: Text(
              '211189',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

            )
        ),
      ),
      body: Container(color: Colors.black,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
          ),
          itemCount: clothes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(clothes: clothes[index]),
                  ),
                );
              },
              child: Card(
                child: Column(
                  children: [
                    Image.network(
                        clothes[index].image,
                        height: 150, fit: BoxFit.cover),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          clothes[index].name,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text(
                          '\$${clothes[index].price.toStringAsFixed(2)}',
                          style: const TextStyle(color: Colors.black)
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
