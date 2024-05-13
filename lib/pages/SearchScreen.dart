import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late TabController? tabController;
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0: // Home
        Navigator.pushNamed(context, '/home');
        break;
      case 1: // Search
        Navigator.pushNamed(context, '/search');
        break;
      case 2: // Library
        Navigator.pushNamed(context, '/library');
        break;
      case 3: // Profile
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }

  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home, size: 40), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search, size: 40), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music, size: 40), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person, size: 40), label: ''),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xFF3843d0),
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF16006D),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF16006D),
        elevation: 0,
        title: Text(
          "Search",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.segment_rounded,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 15),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFEFEFEF),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: TabBar(
                      unselectedLabelColor: Color(0xFF16006D),
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 0,
                      indicator: BoxDecoration(
                          color: Color(0xFF16006D),
                          borderRadius: BorderRadius.circular(50)),
                      controller: tabController,
                      tabs: [
                        Tab(text: "Song"),
                        Tab(text: "Artist"),
                        Tab(text: "Album"),
                      ]),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xFFEFEFEF),
                  border: Border.all(
                    color: Color(0xFFEFEFEF),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.search, color: Color(0xFF16006D), size: 15),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        "Find your song here",
                        style: TextStyle(
                            color: Color(0xFF16006D),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Trending Searches",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: "01 Some Type of Love \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       Charlie Puth\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "02 Million Ways \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       HRVY\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "03 Closer \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       The Chainsmokers\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "04 Dynamite \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       BTS\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "05 Modern Loneliness \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       Lauv\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "06 Butterflies \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       Max, Ali Gatie\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "07 Champagne & Sunshine \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       PLVTINUM, Tarro\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text:
                                  "08 Angel Pt.2 (Feat Jimin of BTS, Charlie ... ) \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text:
                                  "       JVKE, Jimin of BTS, Charlie Puth, Muni Long\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "09 Be My Baby \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       Ariana Grande, Cashmere Cat\n-\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                          TextSpan(
                              text: "10 Golden Hour \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )),
                          TextSpan(
                              text: "       JVKE \n",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
