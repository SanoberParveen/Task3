import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Task 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var widget2 = widget;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              color: Colors.yellowAccent,
              child: Text(
                "Welcome To New Project",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, decorationThickness: 5),
              ),
            ),
            ListTile(
              title: Text(
                "Login",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.login,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Help",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),

              ///tileColor: Colors.purple,
              trailing: Icon(
                Icons.help,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.login,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.person,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.logout,
                color: Colors.purple.shade200,
              ),
            ),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     primary: Colors.lightBlue,
            //     onSurface: Colors.yellow,
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     "Submit",
            //     style: TextStyle(color: Colors.purple),
            //   ),
            // ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text("These are the icons : ",
                      style: TextStyle(color: Colors.green, fontSize: 20)),
                ],
              ),
            ),
            Row(
              children: [
                Center(
                  child: Icon(
                    Icons.airplanemode_on,
                    color: Colors.grey,
                    size: 50,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.home_filled,
                    color: Colors.green,
                    size: 50,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.bluetooth,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  "Images inserted are: ",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                      "https://in-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/b/h/bh10-2.jpg"),
                ),
                Expanded(
                  flex: 2,
                  child: Image.network(
                      "https://www.ikea.com/in/en/images/products/dekad-alarm-clock-white__0371398_pe551456_s5.jpg?f=s"),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            //Center(
            Container(
              padding: EdgeInsets.all(20),
              height: 130,
              //width: 50,
              color: Colors.red,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Hey User! how are you?",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Icon(
                      Icons.people_alt_rounded,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
            //),
            SizedBox(
              height: 30,
              width: 50,
              //child: Card(child: Text('Hello World!')),
              child: RaisedButton(
                onPressed: null,
                color: Colors.black,
                child: Text("Finish",
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
