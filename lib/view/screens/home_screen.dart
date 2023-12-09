import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_flutter/shared/local/constant/color.dart';
import 'package:test_flutter/view/screens/bottom_nav_home.dart';
import 'package:test_flutter/view/screens/bottom_nav_pos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> widgetsList = [const Home(),const POS()];
  int currentIndex = 0;
  int sliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorApp.green,
        child: const FaIcon(FontAwesomeIcons.whatsapp),
        onPressed: (){
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية", activeIcon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "مراكز بيع البطاقة", activeIcon: Icon(Icons.map_outlined))
        ],
        onTap: (int value){
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: SafeArea(child: widgetsList.elementAt(currentIndex),),
    );
  }
}
