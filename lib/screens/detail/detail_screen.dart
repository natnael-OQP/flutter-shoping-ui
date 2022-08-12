import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/constants.dart';

import 'package:travel_app/models/Product.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFFBFBFD),
      backgroundColor: product.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            return Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.black54,
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(10),
            iconSize: 40,
            alignment: AlignmentDirectional.center,
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset("assets/icons/Heart.svg"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * .4,
            fit: BoxFit.cover,
          ),
          const Gap(20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        "\$${product.price}",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.black54,
                            ),
                      )
                    ],
                  ),
                  const Gap(10),
                  const Text(
                    "Engineered with Rapid-Dry technology, the HRX Men's Active T-shirt is ideal for your next workout.",
                    // style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const Gap(90),
                  Center(
                    child: SizedBox(
                      height: 48,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
