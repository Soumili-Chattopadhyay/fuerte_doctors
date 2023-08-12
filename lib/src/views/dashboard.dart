
import 'package:flutter/material.dart';
import 'package:fuerte_doctors/src/common/colors.dart';
import 'package:fuerte_doctors/src/views/appointments.dart';
import 'package:fuerte_doctors/src/views/doctors.dart';
import 'package:fuerte_doctors/src/views/home.dart';
import 'package:fuerte_doctors/src/views/settings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

   List<Widget> widgetOptions = [
      const Home(),
      const Doctors(),
      const Appointments(),
      const Settings(),
    ];

    int selectIndex = 0;

  @override
  Widget build(BuildContext context) {

    void onItemTapped(int index) {
      setState(() {
        selectIndex = index;
      });
    }

    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        unselectedItemColor: AppColors.buttonInactive,
        selectedItemColor: AppColors.buttonActive,
        onTap: (value) => onItemTapped(value),
        currentIndex: selectIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 8.0,
      ),
    );
  }
}
