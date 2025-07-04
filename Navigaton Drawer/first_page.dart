import 'package:classico/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // place a drawer header
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),

            //home page list title
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                //pop drawer first
                Navigator.pop(context);
                //go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            //settings page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
              onTap: () {
                //pop drawer first
                Navigator.pop(context);
                // got to settings page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
