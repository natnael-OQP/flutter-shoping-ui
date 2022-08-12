import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onPress,
  }) : super(key: key);

  final String title, subTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
        InkWell(
          onTap: onPress,
          child: Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.black54),
          ),
        )
      ],
    );
  }
}
