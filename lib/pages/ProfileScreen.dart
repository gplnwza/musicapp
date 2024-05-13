import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;

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
        Navigator.pushNamed(context, '/library');
        break;
      case 3:
        break;
    }
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
          "Profile",
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
      backgroundColor: Color(0xFF3843d0),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0XFFFFC466),
                          padding:
                              EdgeInsets.symmetric(horizontal: 35, vertical: 0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star_rounded, size: 20),
                            SizedBox(width: 5),
                            Text(
                              'VIP',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: BorderSide(color: Colors.white),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                        ),
                        child: Text('Edit Profile',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Listener Account",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "ID : 1234567890",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "BKK, Thailand",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Joined in 2024",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 260,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0XFFE1FFF9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
              ),
            ),
            Positioned(
              bottom: 305,
              left: 25,
              width: 195,
              height: 40,
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
                    Text(
                      " Follower 10K",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      " |",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      " Following 235",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 185,
                right: 25,
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/Gingpai.jpg"),
                    ),
                  ),
                )),
            Positioned(
              top: 345,
              right: 25,
              left: 25,
              child: SingleChildScrollView(
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/justin.jpg',
                            height: 50,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Favorite songs                  538",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
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
              ),
            ),
            Positioned(
              top: 455,
              left: 25,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.supervisor_account_rounded,
                    size: 25,
                    color: Colors.black,
                  ),
                  Text(
                    "   Membership & Benefits",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 495,
              left: 25,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.stars_rounded,
                    size: 25,
                    color: Colors.black,
                  ),
                  Text(
                    "   Activities & Rewards",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 535,
              left: 25,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.thumbs_up_down_rounded,
                    size: 25,
                    color: Colors.black,
                  ),
                  Text(
                    "   Suggestions",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 575,
              left: 25,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.settings_suggest_rounded,
                    size: 25,
                    color: Colors.black,
                  ),
                  Text(
                    "   Setting",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
