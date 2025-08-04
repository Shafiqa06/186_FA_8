import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Digital ID Card',
      home: DigitalIDScreen(),
    );
  }
}

class DigitalIDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Digital ID Card',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://thumbs.dreamstime.com/b/generated-image-372601986.jpg'),
                ),
                SizedBox(height: 16),
                Text(
                  'Shafiqa Mahzuzah Qureshi',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Batch:61, Department of CSE',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.card_membership),
                  title: Text('ID:0182310012101186'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email:mahzuzah.shafiqa@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone: +8801610000000'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
