import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}
class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.9),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          SizedBox(height: 120),
          ListTile(
            leading: Icon(Icons.home_outlined,color: Colors.white),
            title: Text("Home", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.person_outline_rounded,color: Colors.white),
            title: Text("Profile", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.location_on_outlined,color: Colors.white),
            title: Text("Nearby", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),
          Divider(color: Colors.white60, thickness: 1, indent: 10, endIndent: 12),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.bookmark_add_outlined,color: Colors.white),
            title: Text("Bookmarks", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.notifications_none_rounded,color: Colors.white),
            title: Text("Notification", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.messenger_outline_rounded,color: Colors.white),
            title: Text("Messages", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),
          Divider(color: Colors.white60, thickness: 1, indent: 10, endIndent: 12),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.settings_outlined,color: Colors.white),
            title: Text("Setting", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.help_outline_rounded,color: Colors.white),
            title: Text("Help", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
          SizedBox(height: 6),

          ListTile(
            leading: Icon(Icons.power_settings_new_rounded,color: Colors.white),
            title: Text("Logout", style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}



class HouseDetails extends StatefulWidget {
  const HouseDetails({super.key});

  @override
  State<HouseDetails> createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: MainPage(),
      menuScreen: MenuPage(),
      angle: 0,
      duration: Duration(milliseconds: 500),
      menuBackgroundColor: Colors.blueAccent,
      // drawerShadowsBackgroundColor: Colors.black,
      // showShadow: true,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("House Details")),
      body: Center(
        child: Text("Welcome to House Details"),
      ),
    );
  }
}

