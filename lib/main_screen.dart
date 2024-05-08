import 'package:flutter/material.dart';
import 'package:my_portpolio/Constant.dart';

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
                child: Drawer(
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.23,
                        child: Container(
                          color: Color(0xFF242430),
                          child: Column(
                            children: [
                              CircleAvatar(radius: 50,backgroundImage: AssetImage("assets/images.png "),
                              ),
                              Text('niraj rajput',style: Theme.of(context).textTheme.subtitle2,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
