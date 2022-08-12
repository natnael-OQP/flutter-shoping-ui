import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/home/components/category.dart';
import 'package:travel_app/screens/home/components/catrgory_preview.dart';

import 'package:travel_app/screens/home/components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const Gap(5),
            Text(
              "bole",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
              ),
              Text(
                "best Outfit for you",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.black54),
              ),
              const Gap(10),
              const SearchForm(),
              const Gap(10),
              const Category(),
              const Gap(20),
              const ProductPreview1(),
              const ProductPreview2(),
            ],
          ),
        ),
      ),
    );
  }
}
