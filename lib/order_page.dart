import 'package:flutter/material.dart';
import 'package:myknot/order_details_page.dart';
import 'package:myknot/widgets/button.dart';

class OrderPage extends StatefulWidget {
  OrderPage({this.orderId});
  final String orderId;
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List tabBarView;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final tabs = [
    //   "Details",
    //   "Chat",
    //   "Document",
    //   // "Overs"
    // ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Order Details',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                color: Colors.yellow,
                label: 'Decline',
              ),
              SizedBox(
                width: 10,
              ),
              Button(
                color: Colors.blue[900],
                label: 'Accept',
              )
            ],
          ),
        ),
        DetailsPage()
        // TabBar(tabs: [for (final tab in tabs) Tab(text: tab)]),
        // TabBarView(children: [
        //   for (final tab in tabBarView)
        //     (Center(
        //       child: tab,
        //     ))
        // ])
      ]),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DocumentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
