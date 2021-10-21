import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final Function onTap;

  MyDrawer({required this.onTap});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool darkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    // theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light();,

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: MaterialApp(
        theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
        home: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user_5.png')),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Ankita Umredkar',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'aaumredkar@gmail.com',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => widget.onTap(context, 0),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () => widget.onTap(context, 1),
              ),
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
                // onTap: () => onTap(context, 2),
                trailing: Switch(
                  value: darkThemeEnabled,
                  onChanged: (changedTheme) {
                    setState(() {
                      darkThemeEnabled = changedTheme;
                    });
                  },
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: () => widget.onTap(context, 2),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => widget.onTap(context, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
