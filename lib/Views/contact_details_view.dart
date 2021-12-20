import 'package:flutter/material.dart';

class ContactDetailsView extends StatelessWidget {
  ContactDetailsView({Key? key, required this.contactDetailsView})
      : super(key: key);

  Map<String, dynamic> contactDetailsView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          ' Contacts',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              iconSize: 25,
              color: Colors.black)
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Column(children: [
            CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage('${this.contactDetailsView["avatar"]}')),
            SizedBox(height: 2),
            Text(
              '${this.contactDetailsView["name"]}',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('${this.contactDetailsView["country"]}',
                style: TextStyle(fontSize: 15)),
            SizedBox(height: 10, width: 20),
          ]),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.pink[100],
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Mobile',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('${this.contactDetailsView["phone"]}',
                      style: TextStyle(fontSize: 15.0)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Icon(Icons.message),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder()),
                      ),
                      TextButton(
                        onPressed: null,
                        child: Icon(Icons.call),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder()),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'Email',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('${this.contactDetailsView["email"]}',
                      style: TextStyle(fontSize: 15.0)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Icon(Icons.mail),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pink[100],
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Telegram',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: []),
                ),
                ListTile(
                  title: Text(
                    'WhatsApp',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: []),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('More Options', style: TextStyle(fontSize: 15)),
          ),
          Container(
            color: Colors.pink[100],
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Share Contact',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
