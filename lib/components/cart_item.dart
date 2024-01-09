import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeShoe(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeFromCart(shoe);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${shoe.name} removed from cart"),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => removeShoe(widget.shoe),
          )),
    );
  }
}
