import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_text.dart';

class AccountScreen extends StatefulWidget {
  static const routeName = '/account-screen';
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     //   leading: Icon,
        title: CustomText(
          title: 'Account',
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
