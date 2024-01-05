import 'package:flutter/material.dart';
import 'package:instagram/Pages/BusinessCardHolder.dart';
import 'package:instagram/Pages/CDlandingpage.dart';
import 'package:instagram/Pages/card.dart';

class form1 extends StatefulWidget {
  form1({Key? key}) : super(key: key);

  @override
  State<form1> createState() => _form1State();
}

class _form1State extends State<form1> {
  TextEditingController _name = TextEditingController();
  TextEditingController _imageL = TextEditingController();
  TextEditingController _company = TextEditingController();
  TextEditingController _position = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _location = TextEditingController();
  TextEditingController _linkedinL = TextEditingController();
  TextEditingController _twitterL = TextEditingController();
  TextEditingController _instaL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'New Contact',
          style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w700,
              fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Info',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
              TextField(
                controller: _name,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'User Name',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: _imageL,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Image link',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: _company,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Company',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: _position,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Position',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              Text(
                'Contact Info',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
              TextField(
                controller: _contact,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: _location,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              Text(
                'Social Media Link',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
              TextField(
                controller: _linkedinL,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Linkedin link',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: _twitterL,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Twitter link',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: _instaL,
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: Text(
                      'Instagram link',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () {
                    businessCardHolderList.add(
                      BusinessCardHolder(
                        name: _name.text,
                        position: _position.text,
                        company: _company.text,
                        image: _imageL.text,
                        page: card(
                          name: _name.text,
                          position: _position.text,
                          company: _company.text,
                          contact: _contact.text,
                          email: _email.text,
                          location: _location.text,
                          image: _imageL.text,
                          instagram: _instaL.text,
                          twitter: _twitterL.text,
                          linkedin: _linkedinL.text,
                        ),
                      ),
                    );
                    setState(() {});
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => CardDetails()));
                  },
                  child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
