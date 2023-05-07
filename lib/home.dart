import 'package:flutter/material.dart';
import 'package:utp/widgets/info_card.dart';

const url = "MIPA";
const email = "Universitas Pakuan";
const phone = "Semester 6";
const location = "Ilmu Komputer";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 63, 54),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 130),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/avatar.jpeg'),
              ),
              Text(
                "Muhamad Azryl Zidene",
                style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "06512145-6E",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey[200],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              InfoCard(
                  text: phone,
                  icon: Icons.filter_6_outlined,
                  onPressed: () async {}),
              InfoCard(
                  text: url,
                  icon: Icons.co_present_outlined,
                  onPressed: () async {}),
              InfoCard(
                  text: location,
                  icon: Icons.category_outlined,
                  onPressed: () async {}),
              InfoCard(
                  text: email,
                  icon: Icons.account_balance,
                  onPressed: () async {}),
            ],
          ),
        ));
  }
}
