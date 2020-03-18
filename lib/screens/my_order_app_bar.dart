import 'package:flutter/material.dart';

class MyOrdersAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      height: MediaQuery.of(context).size.width / 3.5,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 15.0,
          bottom: 30.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 10,
            ),
            Text(
              'MY Orders',
              style: Theme.of(context).textTheme.display1.copyWith(
                fontSize: MediaQuery.of(context).size.width / 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Icon(
              Icons.notifications,
              size: 35.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}