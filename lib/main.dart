import 'package:flutter/material.dart';

void main() {
  runApp( NavBarApp ());
}

class NavBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBarApp(),
    );
  }
}

class BottomNavBarApp extends StatefulWidget{
  @override
  State<BottomNavBarApp> createState() => _BottomNavBarAppState() ;

  }

class _BottomNavBarAppState extends State<BottomNavBarApp> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(
       title: Text('Buttom Nav Bar Page'),
     ),
     body: _listViewBody(),
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.abc_outlined),label: 'abc'),
         BottomNavigationBarItem(
             icon: Icon(Icons.ac_unit_sharp),label: 'sharp'),
         BottomNavigationBarItem(
             icon: Icon(Icons.accessibility_new),label: 'new'),
       ],
       currentIndex: _selectedIndex,
       onTap: _onitemTapped,

     ),
   );
  }

Widget _listViewBody() {
   return ListView.separated(
       itemBuilder: (BuildContext context , int index){
         return Center(
           child: Text('Item $index'),
         );
       },
       separatorBuilder: (BuildContext context, int index) => Divider(thickness: 3,),
       itemCount: 70);
}








  void _onitemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
  }

