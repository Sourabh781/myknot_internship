import 'package:flutter/material.dart';
import 'package:myknot/widgets/bottom_card.dart';
import 'package:http/http.dart' as http;
import 'widgets/top_card.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listOfAppointments;
  var data;

  @override
  void initState() {
    super.initState();
    getdata();
  }

  void getdata() async {
    var url = 'https://my-notary-app.herokuapp.com/getNotaryHomepage';
    // var url = 'https://my-notary-app.herokuapp.com/getNotaryHomepage';
    var response = await http.post(url, body: {
      "notary": "60280100a063a42fb456c252",
      "today12am": "2021-03-01 00:00:00 GMT+0530",
      "order": "603768d4c54c430015c9bdb7"
    });
    print('sdfkkkkkkkkkkkkkkkkkkkkkkkk');
    print(response.statusCode);
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
        listOfAppointments = data['appointments'];
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
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Favourite'),
            ],
          ),
        ),
      ),
      body: data == null
          ? Center(child: CircularProgressIndicator())
          : SafeArea(
              child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 16, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good Morning.'),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['notary']['firstName'].toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Todays Appointment',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800)),
                        Text('View all',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data['todaysAppointments'],
                          itemBuilder: (BuildContext context, int index) {
                            return TopCard(
                              name: listOfAppointments[index]['appointment']
                                  ['signerFullName'],
                              time: listOfAppointments[index]['appointment']
                                  ['createdAt'],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Pending Requests',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Accept the order as soon it comes.Orders are assigned on first accepted basis',
                      style: TextStyle(color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: data['todaysAppointments'],
                          itemBuilder: (BuildContext context, int index) {
                            return BottomCard(
                              name: listOfAppointments[index]['appointment']
                                  ['signerFullName'],
                              listOfAppointments: listOfAppointments,
                              index: index,
                            );
                          },
                        ),
                        // ListView(
                        //   shrinkWrap: true,
                        //   scrollDirection: Axis.vertical,
                        //   children: [
                        //     BottomCard(),
                        //     SizedBox(
                        //       height: 10,
                        //     ),
                        //     BottomCard()
                        //   ],
                        // ),
                      ),
                    )
                  ],
                ),
              ),
            )),
    );
  }
}
