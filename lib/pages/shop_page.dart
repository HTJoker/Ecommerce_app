import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Text('everyone flies.. some fly longer than others'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hot Picks",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                "See All",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  name: 'Air Jordans',
                  price: '240',
                  description: "alsdjflsjdf",
                  imagePath: 'lib/images/nike1.png');
              return ShoeTile(shoe: shoe);
            },
          ),
        )
      ],
    );
  }
}
