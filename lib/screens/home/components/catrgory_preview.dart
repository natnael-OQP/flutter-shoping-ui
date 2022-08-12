import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/models/Product.dart';
import 'package:travel_app/screens/detail/detail_screen.dart';
import 'package:travel_app/screens/home/components/product_card.dart';
import 'package:travel_app/screens/home/components/section_title.dart';

class ProductPreview1 extends StatelessWidget {
  const ProductPreview1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(10),
        sectionTitle,
        const Gap(10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => ProductCard(
                image: demo_product[index].image,
                title: demo_product[index].title,
                price: demo_product[index].price,
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const DetailScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductPreview2 extends StatelessWidget {
  const ProductPreview2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(10),
        sectionTitle2,
        const Gap(10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => ProductCard(
                image: demo_product[index].image,
                title: demo_product[index].title,
                price: demo_product[index].price,
                onPress: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}

var sectionTitle = SectionTitle(
  title: "New Arrival",
  subTitle: "See All",
  onPress: () {},
);

var sectionTitle2 = SectionTitle(
  title: "Popular",
  subTitle: "See All",
  onPress: () {},
);
