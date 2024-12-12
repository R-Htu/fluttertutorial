import 'package:flutter/material.dart';
import 'package:tutorial_flutter/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 67, 70, 45),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //first picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),
          //second description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: const Color.fromARGB(255, 108, 136, 58),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 143, 172, 48),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                      child: Icon(
                        Icons.add,
                        color: const Color.fromARGB(255, 249, 249, 238),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 246, 231, 231),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '\$${shoe.price}',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 143, 172, 48),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //third price + details
          // button to add to cart
        ],
      ),
    );
  }
}
