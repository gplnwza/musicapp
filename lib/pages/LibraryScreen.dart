import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  LibraryScreen({Key? key}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/search');
        break;
      case 2:
        break;
      case 3:
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
          "Your Libraries",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search, color: Color(0xFF16006D), size: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Find your song here",
                        style: TextStyle(
                          color: Color(0xFF16006D),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: 375,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/disc player.png"),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 15,
                      left: 15,
                      child: Text(
                        "Favorite Songs",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0, 0),
                              blurRadius: 20,
                              color: Color.fromARGB(150, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      left: 15,
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
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 111,
                      height: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/Woke Up In Love.png"),
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "Recently\nlistened",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Color.fromARGB(150, 0, 0, 0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 8,
                            child: Icon(
                              Icons.play_circle_rounded,
                              color: Color(0xFF00FF75),
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 111,
                      height: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/disc player 2.jpg"),
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "Random\nPlaylist",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Color.fromARGB(150, 0, 0, 0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 8,
                            child: Icon(
                              Icons.play_circle_rounded,
                              color: Color(0xFF00FF75),
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 111,
                      height: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/stupid in love.jpg"),
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "Download",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Color.fromARGB(150, 0, 0, 0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25,
                            left: 8,
                            child: Icon(
                              Icons.play_circle_rounded,
                              color: Color(0xFF00FF75),
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xFF00FF75),
                thickness: 2,
                height: 45,
                indent: 1,
                endIndent: 1,
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "My Playlist",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/the chainsmokers.jpg',
                            height: 80,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chillin' 1#",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "35 Songs",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 100,
                                height: 25,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Color(0xFFF8623F),
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
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/tears of gold.jpg',
                            height: 80,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Keep Calm 2#",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "20 Songs",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 100,
                                height: 25,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Color(0xFFF8623F),
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
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/justin.jpg',
                            height: 80,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let's sleep 3#",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "45 Songs",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 100,
                                height: 25,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Color(0xFFF8623F),
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
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 40), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 40), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 40), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xFF3843d0),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF16006D),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
