import 'package:flutter/material.dart';
import 'package:tutorial_flutter/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

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
          Text(
            shoe.description,
            style: TextStyle(
              color: const Color.fromARGB(255, 252, 161, 5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 90, 94, 61),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Icon(
                      Icons.add,
                      color: const Color.fromARGB(255, 245, 236, 3),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 246, 210, 49),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 162, 157, 82),
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
