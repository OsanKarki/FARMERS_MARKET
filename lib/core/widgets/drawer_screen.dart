import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final int selectedIndex;

  const MyDrawer({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<Map<String, dynamic>> drawerItems = [
    {'title': 'Home', 'icon': Icons.home},
    {'title': 'Search', 'icon': Icons.search},
    {'title': 'Notifications', 'icon': Icons.notifications},
    {'title': 'Settings', 'icon': Icons.settings},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: widget.selectedIndex == index ? Colors.green[100] : null,
            child: ListTile(
              leading: Icon(
                drawerItems[index]['icon'],
                color: widget.selectedIndex == index ? Colors.green : null,
              ),
              title: Text(
                drawerItems[index]['title'],
                style: TextStyle(
                  color: widget.selectedIndex == index ? Colors.green : null,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyPage(
                      title: drawerItems[index]['title'],
                      selectedIndex: index,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  final String title;
  final int selectedIndex;

  const MyPage({Key? key, required this.title, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MyDrawer(selectedIndex: selectedIndex),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
