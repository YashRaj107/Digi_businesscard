import 'package:flutter/material.dart';

class form2 extends StatefulWidget {
  const form2({Key? key}) : super(key: key);

  @override
  State<form2> createState() => _form2State();
}

class _form2State extends State<form2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text('Edit Info',style: TextStyle(
            color: Colors.grey[500],fontWeight: FontWeight.w700,
            fontSize: 25
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User Info',style: TextStyle(
                  color: Colors.grey[500],fontWeight: FontWeight.w700,
                  fontSize: 25
              ),),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('User Name',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Image link',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Company',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Position',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              Text('Contact Info',style: TextStyle(
                  color: Colors.grey[500],fontWeight: FontWeight.w700,
                  fontSize: 25
              ),),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Contact',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Email',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Location',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              Text('Social Media Link',style: TextStyle(
                  color: Colors.grey[500],fontWeight: FontWeight.w700,
                  fontSize: 25
              ),),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Linkedin link',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Facebook link',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
              TextField(
                decoration: InputDecoration(prefix: Icon(Icons.person,size: 25,),
                    label: Text('Instagram link',style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),border: OutlineInputBorder()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
