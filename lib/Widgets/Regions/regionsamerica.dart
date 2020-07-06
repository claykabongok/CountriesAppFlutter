import 'package:flutter/material.dart';

class Regions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 160,
      child: Column(
        children: <Widget>[
          Card(
            elevation: 10,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/africa.png')),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Africa',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
          ,

        ],
      ),


    );
  }
}
