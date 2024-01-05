import 'package:flutter/material.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Business Card'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[Card(
          margin: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

          elevation: 10.0,
          child:
          Column(
            children:[
              Row(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.black,
                  ),
                  Column(
                    children: [
                      Text('DIYA TRIVEDI',style:TextStyle(
                        fontSize: 32,
                      ),textAlign: TextAlign.center,
                      ),
                      Text('student of DAVV',style: TextStyle(
                        fontSize: 24,
                      ),textAlign: TextAlign.center
                      ),
                    ],
                  ),

                ],
              ),
              Divider(
                thickness: 3,
                color: Colors.black,
                indent: 35,
                endIndent: 35,
              ),
              Text('diyatrivedi@123gmail.com',style: TextStyle(
                fontSize: 18,
              ),textAlign: TextAlign.center
              ),
              Text('8839083518',style: TextStyle(
                fontSize: 18,
              ),textAlign: TextAlign.center
              ),
              Text('425 B Suryadev Nagar, Indore 452009',style: TextStyle(
                fontSize: 18,),
                  textAlign: TextAlign.center
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
