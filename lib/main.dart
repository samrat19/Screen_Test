import 'package:flutter/material.dart';
import 'package:screentest/screens/my_order.dart';

import 'src/my_theme.dart';

main() => runApp(
  MaterialApp(
    initialRoute: 'my-order-page',
    theme: myThemeData,
    routes: {
      'my-order-page': (_) => MyOrders(),
    },
  ),
);