import 'package:abasikpongke_card/home_page.dart';
import 'package:flutter/material.dart';

class Screentest extends StatefulWidget {
  const Screentest({super.key});

  @override
  State<Screentest> createState() => _ScreentestState();
}

class _ScreentestState extends State<Screentest> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //phone number text field
        TextField(
          controller: _phoneNumberController,
          decoration: InputDecoration(hintText: 'phone number'),
        ),
        //email address text field
        TextField(
          controller: _emailAddressController,
          decoration: InputDecoration(hintText: 'email address'),
        ),

        ElevatedButton(
          onPressed: () {
            print(_emailAddressController.text);
            print(_phoneNumberController.text);

            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Homepage(
                        phoneNumber: _phoneNumberController.text,
                        emailAddress: _emailAddressController.text,
                      )),
            );
          },
          child: Text('Log In'),
        )
      ],
    ));
  }
}
