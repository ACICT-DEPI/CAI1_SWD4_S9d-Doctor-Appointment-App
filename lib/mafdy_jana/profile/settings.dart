
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:flutter/material.dart';
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Settings', onpressed: () {
        Navigator.pop(context);
      },),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle_outlined,color: Colors.blue,size: 30,),
            title: Text('Notification Settings',style: TextStyle(fontSize: 18),),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
            onTap: () {
              print('notification');
            },
          ),

          ListTile(
            leading: Icon(Icons.vpn_key_outlined,color: Colors.blue,size: 30,),
            title: Text('Password Manager',style: TextStyle(fontSize: 18),),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
            onTap: () {
              print('Password Manager');
            },
          ),

          ListTile(
            leading: Icon(Icons.delete,color: Colors.blue,size: 30,),
            title: Text('Delete Account',style: TextStyle(fontSize: 18),),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
            onTap: () {
              print('Delete Account');
            },
          ),
        ],
      ),
    );
  }
}
