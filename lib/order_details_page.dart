import 'package:flutter/material.dart';
import 'package:myknot/widgets/button.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({this.orderId});
  final String orderId;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Status'),
                Button(
                  label: 'Change Status',
                  color: Colors.blue[900],
                )
              ],
            ),
            //Order prgress indicator will be put here

            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text('Order id'), Text('#7979824')],
                  ),
                  Column(
                    children: [Text('Amount'), Text('\$150')],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Container(
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
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.red,
                      ),
                      Text(
                        'Signing Location',
                        maxLines: 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Address'),
                          SizedBox(
                            width: 150,
                            child: Text(
                              '1101,Long Road Avenue,Boulveyard,LasVegas,Neveda',
                              maxLines: 3,
                            ),
                          ),
                          Text('Time : Jan 12,4:45 PM')
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pages),
                            Text('Order Information')
                          ],
                        ),
                        Text('Closing Type : Refinance'),
                        Text('Escrow for this file : lorem ipsu'),
                        Text('Order type : Mobile(\$150)'),
                        Text('Property Address'),
                        SizedBox(
                          width: 60,
                          child: Text(
                            '1101,Long Road Avenue,Boulveyard,LasVegas,Neveda',
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                  ),
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
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pages),
                            Text('Order Information')
                          ],
                        ),
                        Text('Closing Type : Refinance'),
                        Text('Escrow for this file : lorem ipsu'),
                        Text('Order type : Mobile(\$150)'),
                        Text('Property Address'),
                        SizedBox(
                          width: 60,
                          child: Text(
                            '1101,Long Road Avenue,Boulveyard,LasVegas,Neveda',
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                  ),
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
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pages),
                            Text('Order Information')
                          ],
                        ),
                        Text('Closing Type : Refinance'),
                        Text('Escrow for this file : lorem ipsu'),
                        Text('Order type : Mobile(\$150)'),
                        Text('Property Address'),
                        SizedBox(
                          width: 60,
                          child: Text(
                            '1101,Long Road Avenue,Boulveyard,LasVegas,Neveda',
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                  ),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
