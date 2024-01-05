import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class card extends StatelessWidget {
  card({
    Key? key,
    required this.name,
    required this.position,
    required this.company,
    required this.contact,
    required this.email,
    required this.location,
    required this.image,
    required this.instagram,
    required this.twitter,
    required this.linkedin,
  }) : super(key: key);

  final String name;
  final String position;
  final String company;

  final String contact;
  final String email;
  final String location;
  final String image;

  final String instagram;
  final String twitter;
  final String linkedin;

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/form2');
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Container(decoration: BoxDecoration(color: Colors.pinkAccent),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image(
                  image: AssetImage('assets/images/$image'),
                ),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                '$position,$company',
                style: TextStyle(fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchUrl(instagram);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.instagramSquare,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _launchUrl(twitter);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.twitterSquare,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _launchUrl(linkedin);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                child: Container(decoration: BoxDecoration(color: Colors.green.shade400,borderRadius: BorderRadius.circular(15)),
                  height: 75,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 30,
                        ),
                        Text(contact),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                child: Container(decoration: BoxDecoration(color: Colors.green.shade400,borderRadius: BorderRadius.circular(15)),
                  height: 75,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.mail),
                        SizedBox(
                          width: 30,
                        ),
                        Text(email),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                child: Container(decoration: BoxDecoration(color: Colors.green.shade400,borderRadius: BorderRadius.circular(15)),
                  height: 75,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          width: 30,
                        ),
                        Text(location),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
