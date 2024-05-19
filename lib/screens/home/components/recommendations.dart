import 'package:flutter/material.dart';
import 'package:my_portpolio/Constant.dart';
import 'package:my_portpolio/model/recomemdations.dart';
import 'package:my_portpolio/screens/home/components/recommendations_card.dart';


class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultpadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                myRecommendations.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultpadding),
                  child: RecommendationCard(
                    recommendation:  myRecommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}