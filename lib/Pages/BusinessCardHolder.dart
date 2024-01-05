import 'package:flutter/material.dart';
import 'package:instagram/Pages/formnew.dart';

import 'card.dart';

List<BusinessCardHolder> businessCardHolderList = [
  BusinessCardHolder(
    name: 'Saral Jain',
    position: 'CEO',
    company: 'Rachail Tech labs',
    image: 'saral.jpeg',
    page: card(
      name: 'Saral Jain',
      position: 'CEO',
      company: 'Rachail Tech labs',
      contact: '8319548598',
      email: 'rachialtech@gmail.com',
      location: 'Indore ,india ',
      image: 'saral.jpeg',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      linkedin:
          'https://www.linkedin.com/in/yash-raj-63169b229',
      instagram:
          'https://www.instagram.com/',
    ),
  ),
  BusinessCardHolder(
    name: 'Yash Kumar Raj',
    position: 'Director',
    company: 'Yash Tech',
    image: 'yash.jpg',
    page: card(
      name: 'yash',
      position: 'CEO',
      company: 'Yash labs',
      contact: '8319114450',
      email: 'yashkraj381@gamil,com',
      location: 'Indore,India',
      image: 'yash.jpg',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      linkedin:
      'https://www.linkedin.com/in/yash-raj-63169b229',
      instagram:
      'https://www.instagram.com/',
    ),
  ),
  BusinessCardHolder(
    name: 'Mike Tyson',
    position: 'Senior Boxer',
    company: 'WWF',
    image: 'mike.jpg',
    page: card(
      name: 'Mike Tyson',
      position: 'Senior Boxer',
      company: 'WWF',
      contact: '8319114450',
      email: 'Boxer@gamil,com',
      location: 'Mt.Abu,India',
      image: 'mike.jpg',
      linkedin:
      'https://www.linkedin.com/in/yash-raj-63169b229',
      instagram:
      'https://www.instagram.com/',
      twitter:
      'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    ),
  ),
  BusinessCardHolder(
    name: 'Vision',
    position: 'Mahabali Avenger',
    company: 'Avengers',
    image: 'vision.jpg',
    page: card(
      name: 'Vision',
      position: 'Mahabali Avenger',
      company: 'Avengers',
      contact: '831919898',
      email: 'vision@stark.com',
      location: 'Titan,Jupiters moon',
      image: 'vision.jpg',
      instagram:
      'https://www.instagram.com/',
      linkedin:
      'https://www.linkedin.com/in/yash-raj-63169b229',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    ),
  ),
  BusinessCardHolder(
    name: 'Apna Bhidu',
    position: 'Senior Actor',
    company: 'Bollywood',
    image: 'bhidu.jpg',
    page: card(
      name: 'Apna Bhidu',
      position: 'Senior Actor',
      company: 'Bollywood',
      contact: '831919898',
      email: 'bhidu@apna.com',
      location: 'Mt.Fuji,India',
      image: 'bhidu.jpg',
      linkedin:
      'https://www.linkedin.com/in/yash-raj-63169b229',
      twitter:
      'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      instagram:
      'https://www.instagram.com/',
    ),
  ),
];

class BusinessCardHolder extends StatelessWidget {
  BusinessCardHolder(
      {Key? key,
      required this.name,
      required this.position,
      required this.company,
      required this.image,
      required this.page})
      : super(key: key);
  final String name;
  final String position;
  final String company;
  final String image;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
      child: Container( decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green.shade400,
          Colors.pinkAccent
        ]),
        borderRadius: BorderRadius.circular(12)
      ),
        child: ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          },
          leading: IconButton(
            onPressed: () {},
            icon: Image(image: AssetImage('assets/images/$image')),
            iconSize: 40,
          ),
          title: Text(
            name,
            style: TextStyle(fontSize: 25),
          ),
          subtitle: Text(
            '$position,$company',
            style: TextStyle(fontSize: 18),
          ),
          trailing: IconButton(
              onPressed: () {
                businessCardHolderList.remove(BusinessCardHolder);
              },
              icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
