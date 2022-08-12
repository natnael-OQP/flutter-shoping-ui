import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.onPress,
  }) : super(key: key);

  final String image, title;
  final int price;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0xffefeff2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 135,
              ),
            ),
            const Gap(4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const Gap(5),
                Text(
                  "\$$price",
                  style: const TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
