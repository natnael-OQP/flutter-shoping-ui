import 'package:flutter/material.dart';
import 'package:travel_app/models/Category.dart';
import 'package:travel_app/screens/components/category_cart.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
          (index) => Container(
            margin: const EdgeInsets.only(
              right: 10,
            ),
            child: CategoryCard(
              icon: demo_categories[index].icon,
              title: demo_categories[index].title,
              onPress: () {},
            ),
          ),
        ),
      ),
    );
  }
}
