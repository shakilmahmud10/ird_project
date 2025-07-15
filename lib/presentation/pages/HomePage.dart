import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';


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


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: MainPage(),
      menuScreen: MenuPage(),
      angle: 0,
      duration: Duration(milliseconds: 700),
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
      appBar: AppBar(
        // title: Text("Home Page"),
        // backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        leadingWidth: 80,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none_outlined),
          )
        ],

      ),

      body: SingleChildScrollView(
        child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location", style: TextStyle(fontSize: 12,color: Colors.black54)),
                      Row(
                        children: [
                          Text("Jakarta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                          SizedBox(width: 4,),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 20),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      // padding: const EdgeInsets.symmetric(horizontal: 12),
                      height: 50,
                      child: StandardSearchAnchor(
                          searchBar: StandardSearchBar(bgColor: Colors.white,),
                          suggestions: StandardSuggestions(
                            suggestions: [],
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.tune_rounded, color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                          onPressed: (){
                            Get.toNamed('/houseDetails');
                          },
                          child: Text("Hotel",style: TextStyle(color: Colors.blueAccent))
                      )
                    ),
                    Padding(padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Apartment",style: TextStyle(color: Colors.blueAccent))
                      )
                    ),
                    Padding(padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("House",style: TextStyle(color: Colors.blueAccent))
                      )
                    ),
                    Padding(padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Villa",style: TextStyle(color: Colors.blueAccent))
                      )
                    ),
                    Padding(padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Field",style: TextStyle(color: Colors.blueAccent))
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Near from you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  Text("See more", style: TextStyle(fontSize: 12, color: Colors.blue)),
                ],
              ),
              SizedBox(height: 10),

              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index){
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 200,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Slider_$index.jpg'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.8),
                                  ]
                              )
                            ),
                          ),

                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, color: Colors.white, size: 14),
                                    SizedBox(width: 4),
                                    Text(
                                        "1.8 km",
                                      style: TextStyle(fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                          ),

                          Positioned(
                              bottom: 12,
                              left: 12,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Jakarta Villa",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  // SizedBox(height: 4,),
                                  Text("Calm & Peaceful place",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    );
                    }
                ),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Best for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  Text("See more", style: TextStyle(fontSize: 12, color: Colors.blue)),
                ],
              ),
              SizedBox(height: 10),

              ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade100
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                                'assets/images/Slider_$index.jpg',
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Modern House", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,)),
                                  SizedBox(height: 4),
                                  Text("\$2,000 / month", style: TextStyle(color: Colors.blue)),
                                  SizedBox(height: 4),
                                  Text("3 Bedroom · 2 Bathroom", style: TextStyle(fontSize: 12, color: Colors.grey)),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange,size: 16),
                                      Icon(Icons.star, color: Colors.orange,size: 16),
                                      Icon(Icons.star, color: Colors.orange,size: 16),
                                      Icon(Icons.star, color: Colors.orange,size: 16),
                                      Icon(Icons.star_half_outlined, color: Colors.orange,size: 16),

                                      SizedBox(width: 4),

                                      Text("(4.5/5)", style: TextStyle(fontSize: 12, color: Colors.grey)),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    );
                  }
              )


            ],
          ),
        ),
      )
    );
  }
}


