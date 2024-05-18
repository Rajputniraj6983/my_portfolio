import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portpolio/Constant.dart';
import 'package:my_portpolio/components/area_info_text.dart';
import 'package:my_portpolio/components/components/animated_progress_indicator.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Myinfo(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                areainfotext(
                  title: "Residence",
                  text: "Gujarat",
                ),
                areainfotext(
                  title: "City",
                  text: "Surat",
                ),
                areainfotext(
                  title: "Age",
                  text: "23",
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Divider(),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultpadding),
                  child: Text(
                    "Skills",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SizedBox(width: defaultpadding),
                Row(
                  children: [
                    Expanded(
                        child: animatedcircularprogressindicator(
                      percentage: 0.8,
                          label: 'Flutter',
                    )
                    ),SizedBox(width: defaultpadding),
                    Expanded(child: animatedcircularprogressindicator(
                      percentage: 0.60,
                      label: "C++",
                    )
                    ),
                    SizedBox(width: defaultpadding),
                    Expanded(child: animatedcircularprogressindicator(
                      percentage: 0.45,
                      label: "C",
                    )
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

