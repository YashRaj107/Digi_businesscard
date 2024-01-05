import 'package:flutter/material.dart';
import 'package:instagram/Pages/formnew.dart';

import 'BusinessCardHolder.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Business Cards',style: TextStyle(color: Colors.black54,fontSize:22),),
        actions: [Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>form1()));},
            icon: const Icon(Icons.add,color: Colors.black,size: 28,)),
        ),],
      ),
      body: Container(decoration: const BoxDecoration(color: Colors.pinkAccent),
        child: ListView.builder(
            itemCount: businessCardHolderList.length,
            itemBuilder: (BuildContext context, int index) {
              return businessCardHolderList[index];
            }),
      ),
    );
  }
}
