import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
            onTap: (){
              Get.toNamed('/home');
            },
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
      appBar: AppBar(
        leadingWidth: 80,
        leading: IconButton(
            onPressed: (){
              ZoomDrawer.of(context)!.toggle();
            },
            icon: Icon(Icons.menu)
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none_rounded)
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 350,
              child: Container(
                // margin: const EdgeInsets.only(right: 12),
                width: double.infinity, //can use double.infinity.
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/Slider_0.jpg'),
                            fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(1.0)
                            ]
                        )
                      ),
                    ),
                    Positioned(
                        top: 15,
                        left: 15,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,size: 16),
                        )
                    ),
                    Positioned(
                        top: 15,
                        right: 15,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.bookmark_border_rounded, color: Colors.white,size: 20)
                        ),

                    ),
                    Positioned(
                          bottom: 15,
                          left: 15,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Dreams Villa House",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text(
                              "Road no: 121/3, Square road, Jakarta",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(6)
                                  ),
                                  child: Icon(Icons.bed, color: Colors.white, size: 20),
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "6 Bedroom",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),

                                SizedBox(width: 24),

                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(6)
                                  ),
                                  child: Icon(Icons.hot_tub, color: Colors.white, size: 20),
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "6 Bathroom",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),

            Text(
              "Description",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 10),

            Text("The three level house that have a modern design, has a large pool, and a garage that fits 4 cars.",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),

            ListTile(
              leading: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/person/man_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                "Garry Allen",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Owner",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icon(Icons.phone, color: Colors.blueAccent, size: 20),
                    // SizedBox(width: 8),
                    // Icon(Icons.message, color: Colors.green, size: 20),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.phone, color: Colors.white,size: 22),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: IconButton(
                          icon: Icon(Icons.messenger, color: Colors.white,size: 22),
                          onPressed: (){},
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Gallery",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 15),

            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage('assets/images/Slider_$index.jpg'),
                            fit: BoxFit.cover
                        )
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Location",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 15),

            SizedBox(
              height: 180,
              width: double.infinity,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(23.8103, 90.4125), // Dhaka, BD
                  zoom: 14,
                ),
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller) {
                  // map controller handle
                },
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Price",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),
                    )     ,
                    Text(
                        "\$2000/per month",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent
                      ),
                    )
                  ],
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                    ),
                    child: Text(
                        'Rent Now',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                    )),
                    onPressed: (){},
                )
              ],

            )

          ],
        ),
      ),
    );
  }
}

