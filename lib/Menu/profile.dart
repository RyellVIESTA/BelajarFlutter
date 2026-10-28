import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 20),
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/236x/ac/91/6f/ac916f2b24246cc4abd7a3c65663dbe7.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  webHtmlElementStrategy:
                      WebHtmlElementStrategy.prefer,
                ),
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Figo Store',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Welcome to my online store!',
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.blue),
                    SizedBox(height: 5),
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Products'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.blue),
                    SizedBox(height: 5),
                    Text(
                      '9,1K',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Sold'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(height: 5),
                    Text(
                      '4.8',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Rating'),
                  ],
                ),
              ],
            ),

            SizedBox(height: 25),
            Divider(),

            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text('Owner Information'),
              trailing: Icon(Icons.chevron_right),
            ),

            ListTile(
              leading: Icon(Icons.store, color: Colors.blue),
              title: Text('Store Information'),
              trailing: Icon(Icons.chevron_right),
            ),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('Settings'),
              trailing: Icon(Icons.chevron_right),
            ),

            ListTile(
              leading: Icon(Icons.help, color: Colors.blue),
              title: Text('Help Center'),
              trailing: Icon(Icons.chevron_right),
            ),

            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}