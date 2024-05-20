import 'package:flutter/material.dart';
import 'package:my_portpolio/Constant.dart';
import 'package:my_portpolio/screens/home/components/high_lights.dart';
import '../../../components/animated_counter.dart';
import '../../../responsive.dart';


class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultpadding,horizontal: 20),
      child: Responsive.isMobileLarge(context)
          ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "K+",
                ),
                label: "Subscribers",
              ),
              HeighLight(
                counter: AnimatedCounter(
                  value: 40,
                  text: "+",
                ),
                label: "Videos",
              ),
            ],
          ),
          const SizedBox(height: defaultpadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(
                counter: AnimatedCounter(
                  value: 30,
                  text: "+",
                ),
                label: "GitHub Projects",
              ),
              HeighLight(
                counter: AnimatedCounter(
                  value: 13,
                  text: "K+",
                ),
                label: "Stars",
              ),
            ],
          ),
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 119,
              text: "K+",
            ),
            label: "Subscribers",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 13,
              text: "K+",
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}