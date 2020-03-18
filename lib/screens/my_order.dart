import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_order_app_bar.dart';
import 'scheduled_screen.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders>
    with SingleTickerProviderStateMixin {
  TabController _pageController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            MyOrdersAppBar(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              child: TabBar(
                controller: _pageController,
                indicator: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.transparent,
                  ),
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "Scheduled",
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Ongoing",
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "History",
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  ScheduledScreen(),
                  ScheduledScreen(),
                  ScheduledScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
