import 'package:flutter/material.dart';
import 'package:my_portpolio/Constant.dart';
import 'package:my_portpolio/components/area_info_text.dart';
import 'package:my_portpolio/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                flex: 7,
                child: Container(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }

  Drawer slidermenu(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.23,
            child: Container(
              color: Color(0xFF242430),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images.png "),
                  ),
                  Text(
                    'Niraj rajput',
                    style: Theme.of(context).textTheme.subtitle2,
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
