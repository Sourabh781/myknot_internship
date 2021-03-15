import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  TopCard({this.name, this.time});
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: 300,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 28,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(name), Text(time.substring(11, 16))]),
                Icon(Icons.location_pin)
              ],
            ),
          ),
          Container(
            width: 300,
            height: 1,
            color: Colors.black12,
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Status',
                  ),
                  Text('Arrived At Appointment')
                ]),
                Text('Update Status')
              ],
            ),
          )
        ],
      ),
    );
  }
}
