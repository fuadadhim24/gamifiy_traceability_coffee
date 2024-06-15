import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/ui/pages/admin/admin_home_page.dart';
import 'package:gamify_traceability_coffee/ui/pages/admin/profile_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigationBottom extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  var _currentIndex = 0;

  // Define your pages here
  final List<Widget> _pages = [
    AdminHomePage(),
    ProfilePage(),
    ExplorePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _pages,
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Beranda"),
              selectedColor: Colors.teal,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.assessment),
              title: Text("Catatan"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

// Example page widgets (you can replace these with your actual page widgets)
class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Center(
        child: Text('Beranda Page'),
      ),
    );
  }
}

class CatatanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catatan'),
      ),
      body: Center(
        child: Text('Catatan Page'),
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: Center(
        child: Text('Explore Page'),
      ),
    );
  }
}

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Center(
//         child: Text('Profile Page'),
//       ),
//     );
//   }
// }
