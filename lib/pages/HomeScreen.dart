import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class artist {
  final String name;
  final String image;

  artist(this.name, this.image);
}

List<artist> artists = [
  artist('Hits Song From\nBTS', 'assets/BTS.jpg'),
  artist('Hits Song From\nJVKE', 'assets/jvke.jpg'),
  artist('Hits Song From\nLAUV', 'assets/lauv.jpg'),
  artist('Hits Song From\nHRVY', 'assets/hrvy.jpg'),
  artist('Hits Song From\nAriana Grande', 'assets/ariana.webp'),
  artist('Hits Song From\nJustin Bieber', 'assets/justin.jpg'),
  artist('Hits Song From\nTaylor Swift', 'assets/taylor.jpg'),
  artist('Hits Song From\nThe Chainsmokers', 'assets/the chainsmokers.jpg'),
];

class newrl {
  final String name;
  final String image;

  newrl(this.name, this.image);
}

List<newrl> newrls = [
  newrl('Tears of Gold\nFaouzia', 'assets/tears of gold.jpg'),
  newrl('Mama\nJonas Blue, William Singe', 'assets/mama.jpg'),
  newrl('Style\nTaylor Swift', 'assets/style.png'),
  newrl('iPad\nThe Chainsmokers', 'assets/ipad.jpg'),
  newrl('Angel Pt.2\nJVKE, Jimin, Charlie P ...', 'assets/angel pt2.jpg'),
  newrl('STUPID IN LOVE\nMAX, HUH YUNJIN', 'assets/stupid in love.jpg'),
];

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF16006D),
        elevation: 0,
        title: Text(
          "Harmony Tunes",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person,
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
          padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Enjoy your vibe!",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF16006D),
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF3843d0),
                  border: Border.all(
                    color: Color(0xFF3843d0),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Top 50 Songs Global",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/angel pt2.jpg',
                          height: 92,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "#1 Angel Pt.2 (Feat. Jimi...\n"
                                "#2 STUPID IN LOVE\n"
                                "#3 Company",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 100,
                                height: 25,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Color(0xFF00FF75),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.play_arrow_rounded,
                                        size: 20,
                                      ),
                                      Text(
                                        " Play",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 1, right: 1, top: 13),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text(
                                "New Releases",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Color(0xFF3843d0),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.play_circle_rounded,
                              color: Color(0xFF3843D0),
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                width: double.maxFinite,
                height: 125,
                child: ListView.builder(
                  itemCount: newrls.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    List<String> parts = newrls[index].name.split('\n');
                    return Container(
                      height: 90,
                      width: 90,
                      margin: const EdgeInsets.only(right: 10),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(newrls[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(top: 3, left: 5),
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: parts[0],
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: parts.length > 1
                                              ? '\n${parts[1]}'
                                              : '',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Artist You'd Like!",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF3843d0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                width: double.maxFinite,
                height: 125,
                child: ListView.builder(
                  itemCount: artists.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    List<String> parts = artists[index].name.split('\n');
                    return Container(
                      height: 90,
                      width: 90,
                      margin: const EdgeInsets.only(right: 10),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(artists[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(top: 3, left: 5),
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: parts[0],
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: parts.length > 1
                                              ? '\n${parts[1]}'
                                              : '',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 30,
                            right: 27,
                            child: Icon(
                              Icons.play_circle_rounded,
                              color: Color(0xFF00FF75),
                              size: 35.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
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
}
