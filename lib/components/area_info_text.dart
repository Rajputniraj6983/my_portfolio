import 'package:flutter/material.dart';
import 'package:my_portpolio/Constant.dart';
class areainfotext extends StatelessWidget {
  const areainfotext({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);
  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultpadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "title!",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "text!",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class Myinfo extends StatelessWidget {
  const Myinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xff242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/images.png'),
            ),
            Spacer(),
            Text(
              'Niraj Rajput',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
