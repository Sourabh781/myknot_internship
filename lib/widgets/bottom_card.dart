import 'package:flutter/material.dart';
import 'package:myknot/order_page.dart';
import 'package:http/http.dart ' as http;
import 'package:myknot/size_config.dart';
import 'dart:convert';
import 'button.dart';

class BottomCard extends StatefulWidget {
  BottomCard({this.name, this.listOfAppointments, this.index});
  final String name;
  final List listOfAppointments;
  final int index;

  @override
  _BottomCardState createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  var data;
  void getdata() async {
    var url = 'https://my-notary-app.herokuapp.com/getOrderDetails';
    var response = await http.post(url, body: {
      "notary": "60280100a063a42fb456c252",
      "today12am": "2021-03-01 00:00:00 GMT+0530",
      "order": widget.listOfAppointments[widget.index]['orderId']
    });
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);

        print(response.body);
        // print(mapresponse['notaryId']);
      });
    }

    // Response response =
    //     await get('https://my-notary-app.herokuapp.com/getNotaryHomepage');
    // print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          // getdata();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OrderPage()));
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3))
            ],
            color: Colors.white,
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.oneH * 32, left: 16, right: 16, bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Refinance of ${widget.name}',
                              style: TextStyle(fontSize: 18)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'A short description of order with some short text',
                            style: TextStyle(fontSize: 10),
                          )
                        ]),
                    Text(
                      '\$125',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.black12,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 175, left: 100),
        child: Row(
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
      )
    ]);
  }
}
