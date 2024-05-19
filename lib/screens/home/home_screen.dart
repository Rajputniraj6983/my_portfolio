import 'package:flutter/material.dart';
import 'package:my_portpolio/screens/home/components/Home_banner.dart';
import 'package:my_portpolio/screens/home/components/My_projects_card.dart';
import 'package:my_portpolio/screens/home/components/highlight.dart';
import 'package:my_portpolio/screens/main_screen.dart';

import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}