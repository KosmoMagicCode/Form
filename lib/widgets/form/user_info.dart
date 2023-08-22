import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/user.dart';

class UserInfoPage extends StatelessWidget {
  final User userInfo;
  const UserInfoPage({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User info')),
      body: ListView(
        children: [
          _userInfo(Icons.person, userInfo.name, 'Name'),
          _userInfo(Icons.phone, userInfo.phone, 'Phone'),
          _userInfo(Icons.mail, userInfo.email, 'Email'),
          userInfo.country != ''
              ? _userInfo(Icons.map, userInfo.country, 'Coontry')
              : const Divider(
                  height: 10,
                ),
          userInfo.story != ''
              ? _userInfo(Icons.edit_attributes, userInfo.story, 'Life story')
              : const Divider(
                  height: 10,
                ),
          _userInfo(Icons.security, userInfo.password, 'Password'),
        ],
      ),
    );
  }

  ListTile _userInfo(IconData icon, String text, String subtitle) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
