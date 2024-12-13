import 'package:flutter/material.dart';
import 'package:tutorial_flutter/models/shoe.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_flutter/models/cart.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 246, 237),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(
          widget.shoe.name,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.shoe.price,
          style: TextStyle(
            color: const Color.fromARGB(255, 62, 62, 5),
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle,
              size: 24, color: const Color.fromARGB(255, 6, 6, 6)),
          onPressed: () {
            Provider.of<Cart>(context, listen: false)
                .removeItemFromCart(widget.shoe);
          },
        ),
      ),
    );
  }
}
