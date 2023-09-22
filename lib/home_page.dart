import 'package:abasikpongke_card/screen_page.dart';
import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {

  String phoneNumber;
  String emailAddress;

  Homepage({
    this.phoneNumber ='08139926398',
    this.emailAddress = 'ahibeewills@gmail.com',

});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //picture

            const CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 60,
                child:Icon(Icons.person_outline, size: 100, color: Colors.black,)
            ),
            //Name Text
            const Text(
              'Abasikpongke Willie',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            //job title
            const Text(
              'MOBILE DEVELOPER',
              style: TextStyle(color: Colors.white, letterSpacing: 1.5),
            ),

            const SizedBox(
              height: 10,),
            //container divider

            Container(
              width: double.infinity,
              color: Colors.white,
              height: 0.9,
              margin:const EdgeInsets.symmetric(horizontal: 100),
            ),

            const SizedBox(
              height: 10,),

            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child:  Row(
                children: [
                  Icon(Icons.call, color: Colors.deepPurple,),
                  SizedBox(width: 30,),
                  Text(
                    phoneNumber,
                    style: TextStyle(color: Colors.deepPurple),)
                ],
              ),
            ),
            SizedBox(
              height: 10,),

            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child:  Row(
                children: [
                  const Icon(Icons.mail_outline, color: Colors.deepPurple,),
                  const SizedBox(width: 30,),
                  Text(
                  emailAddress,
                    style: const TextStyle(color: Colors.deepPurple),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) =>Screentest()
                ),
              );
            },
                child:Text('Go to next screen'),
            ),
          ],
        ),
      ),
    );
  }
}

