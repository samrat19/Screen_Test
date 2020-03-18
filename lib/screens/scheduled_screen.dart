import 'package:flutter/material.dart';

class ScheduledScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) => OrderDetails(
          orderNumber: 'Osr2314',
          trackingNumber: 'IHDES1234',
          totalAmount: 'NU200',
          serviceName: 'Toilet Cleaning',
          serviceDate: '26July 11AM to 12 30PM',
        ),
      ),
    );
  }
}

class OrderDetails extends StatelessWidget {
  pressButton() => print('Pressed');

  final String orderNumber;
  final String trackingNumber;
  final String totalAmount;
  final String serviceName;
  final String serviceDate;

  const OrderDetails({
    Key key,
    @required this.orderNumber,
    @required this.trackingNumber,
    @required this.totalAmount,
    @required this.serviceName,
    @required this.serviceDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10.0,
        child: Container(
          height: MediaQuery.of(context).size.height / 3,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Order number:  ',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                    Text(
                      orderNumber,
                      style: Theme.of(context).textTheme.display2.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 21,
                          ),
                    ),
                    Spacer(),
                    Text(
                      'Service Scheduled',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            color: Colors.teal,
                            fontSize: MediaQuery.of(context).size.width / 25,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Tracking number:  ',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                    Text(
                      trackingNumber,
                      style: Theme.of(context).textTheme.display2.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 21,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Total amount:  ',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                    Text(
                      totalAmount,
                      style: Theme.of(context).textTheme.display2.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 21,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Service name:  ',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                    Text(
                      serviceName,
                      style: Theme.of(context).textTheme.display2.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 21,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Date:  ',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 22,
                          ),
                    ),
                    Text(
                      serviceDate,
                      style: Theme.of(context).textTheme.display2.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 21,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: pressButton,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 13.0,
                        ),
                        child: Text(
                          'Accepted',
                          style: Theme.of(context).textTheme.display1.copyWith(
                                fontSize:
                                    MediaQuery.of(context).size.width / 22,
                                color: Colors.white,
                              ),
                        ),
                      ),
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    MaterialButton(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: pressButton,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 13.0,
                        ),
                        child: Text(
                          'Navigate',
                          style: Theme.of(context).textTheme.display1.copyWith(
                                fontSize:
                                    MediaQuery.of(context).size.width / 22,
                                color: Colors.white,
                              ),
                        ),
                      ),
                      color: Colors.blue[400],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
