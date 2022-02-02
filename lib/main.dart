import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('image/gmail1.jpg'),
            ),
            Image(
              image: AssetImage('image/gmail2.jpg'),
            ),
            Image(
              image: AssetImage('image/gmail2.jpg'),
            ),
            Image(
              image: AssetImage('image/gmail2.jpg'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName:Text ('Nayan Sikder'), accountEmail:Text ('nsenterprice2017@gmail.com'),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/10567313/pexels-photo-10567313.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',),
              ),
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.message),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.photo),
              trailing: Text('99+'),
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
              trailing: Text('7 new'),
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.arrow_back),
              trailing: Text('7 new'),
            ),
            Text('All labels'),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Snoozed'),
              leading: Icon(Icons.watch),
            ),
            ListTile(
              title: Text('Importent'),
              leading: Icon(Icons.people),
              trailing: Text('10'),
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('All Mail'),
              leading: Icon(Icons.email),
              trailing: Text('99+'),
            ),
            ListTile(
              title: Text('Bin'),
              leading: Icon(Icons.delete),
              trailing: Text('5'),
            ),
            Text('G o o g l e  apps'),
            ListTile(
              title: Text('Calendar'),
              leading: Icon(Icons.book),
            ),
            ListTile(
              title: Text('Contacts'),
              leading: Icon(Icons.contacts),
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Text('Compose',style: TextStyle(color: Colors.black,fontSize: 30),);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
