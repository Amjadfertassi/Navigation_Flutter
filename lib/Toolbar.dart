import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// const Color ButtonNavbgColor = Color(0xFF17203A);

class ButtonNavWithAnimatedIcons extends StatefulWidget {
  const ButtonNavWithAnimatedIcons({super.key});

  @override
  State<ButtonNavWithAnimatedIcons> createState() => _ButtonNavWithAnimatedIconsState();
}

class _ButtonNavWithAnimatedIconsState extends State<ButtonNavWithAnimatedIcons> {
// The Elements of the Navigation :
  final _items = [ 
      SalomonBottomBarItem(
        icon: const Icon(Icons.home),
        title: const Text('Home'),
        selectedColor: Color.fromRGBO(43, 46, 99, 1.0) ,
        ),
      SalomonBottomBarItem(
        icon: const Icon(Icons.search),
        title: const Text('Search'),
        selectedColor: Color.fromRGBO(43, 46, 99, 1.0) ,
        ),
      // SalomonBottomBarItem(
      //   icon: const Icon(Icons.favorite),
      //   title: const Text('Favorite') ,
      //   selectedColor: Color.fromRGBO(43, 46, 99, 1.0) ,
      //   ),
      SalomonBottomBarItem(
        icon: const Icon(Icons.align_vertical_bottom_rounded),
        title: const Text('Data') ,
        selectedColor: Color.fromRGBO(43, 46, 99, 1.0) ,
        ),
      SalomonBottomBarItem(
        icon: const Icon(Icons.person),
        title: const Text('Profile'),
        selectedColor: Color.fromRGBO(43, 46, 99, 1.0) ,
        ),
   ] ;
// The index of position :
    int _currentIndex = 0 ;
// Screen color :
    final _screen = const [
      Center(child: Text('Home', style : TextStyle(fontSize: 30))), 
      Center(child: Text('Favorite', style : TextStyle(fontSize: 30))), 
      Center(child: Text('search', style : TextStyle(fontSize: 30))), 
      Center(child: Text('Profile', style : TextStyle(fontSize: 30))), 
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3D8E8),
      body: _screen[_currentIndex] ,
      bottomNavigationBar: Card (
        elevation: 6 ,
        margin: const EdgeInsets.all(16.0),
        child : SalomonBottomBar(
          duration: Duration(milliseconds: 700),
          items: _items ,
          currentIndex: _currentIndex ,
          onTap : (index) => setState(() {
            _currentIndex = index ;
        }),
        // itemPadding: EdgeInsets.all(8.0),
        
      ),
      ),
    );
    
  }
}
    