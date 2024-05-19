import 'package:flutter/material.dart';
import 'package:my_portpolio/Constant.dart';
import 'package:my_portpolio/screens/main/components/side_menu.dart';



class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultpadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: animated_circular_progressindicator(
                percentage: 0.80,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultpadding),
            Expanded(
              child: animated_circular_progressindicator(
                percentage: 0.60,
                label: "C++",
              ),
            ),
            SizedBox(width: defaultpadding),
            Expanded(
              child: animated_circular_progressindicator(
                percentage: 0.55,
                label: "C",
              ),
            ),
          ],
        ),
      ],
    );
  }
}