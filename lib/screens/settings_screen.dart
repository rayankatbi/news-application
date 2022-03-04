import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_text.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwiched = false;
  void toggleSwitch(bool value) {
    if (isSwiched == false) {
      setState(() {
        isSwiched = true;
      });
    } else {
      setState(() {
        isSwiched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: CustomText(
                  title: 'Settings',
                  fontWeight: FontWeight.bold,
                  size: 20,
                  color: Colors.black87,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: CustomText(
                  title: 'Account',
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.pushNamed(context, '/account-screen');
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              ListTile(
                  leading: Icon(Icons.notifications_none),
                  title: CustomText(
                    title: 'Push Notification',
                  ),
                  trailing: Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.black87,
                    inactiveTrackColor: Colors.black87,
                    onChanged: toggleSwitch,
                    value: isSwiched,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings_input_svideo_sharp),
                title: CustomText(
                  title: 'Terms & Conditions',
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                  // trailing: AnimatedContainer(
                  //   duration: Duration(milliseconds: 300),
                  //   curve: Curves.decelerate,
                  //   width: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50.0),
                  //
                  //   ),
                  //   child: AnimatedAlign(
                  //     alignment: Alignment.centerLeft,
                  //     duration: Duration(milliseconds: 300),
                  //     curve: Curves.decelerate,
                  //     child: Padding(
                  //       padding: EdgeInsets.all(5.0),
                  //       child: Container(
                  //         width: 50,
                  //         height: 50,
                  //         decoration: BoxDecoration(
                  //           color: Colors.green,
                  //           borderRadius: BorderRadius.circular(100)
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings_backup_restore_outlined),
                title: CustomText(
                  title: 'About',
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: CustomText(
                  title: 'Log Out',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
