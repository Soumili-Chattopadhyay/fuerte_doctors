// ignore_for_file: prefer_final_fields, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fuerte_doctors/src/common/colors.dart';
import 'package:fuerte_doctors/src/common/widgets/header.dart';
import 'package:fuerte_doctors/src/common/widgets/home_services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _weekdays = ['SU', 'MO', 'TU', 'WE', 'TH', 'FR', 'SA'];

  List<String> _dates = ['27', '28', '29', '30', '31', '01', '02'];

  List<bool> _selected = [false, true, false, true, true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // floating: _floating,
            pinned: true,
            expandedHeight: 220.0,
            backgroundColor: AppColors.primary,
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image(
                      image: AssetImage(
                        'assets/icons/hello.png',
                      ),
                      height: 20.0,
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Hello,',
                      textScaleFactor: 0.7,
                      style: TextStyle(
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Gregory House',
                  textScaleFactor: 0.8,
                  style: TextStyle(
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: CircleAvatar(
                  radius: 21.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(
                      'assets/images/gregory.jpg',
                    ),
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 75.0, 20.0, 0.0),
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 10.0),
                    height: 45.0,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: const TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color(
                            0xFFCECECE,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        icon: Image(
                          image: AssetImage(
                            'assets/icons/search.png',
                          ),
                          height: 18.0,
                          width: 18.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      for (int i = 0; i < _weekdays.length; i++)
                        Text(
                          _weekdays[i],
                          textScaleFactor: 0.8,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      for (int i = 0; i < _dates.length; i++)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selected[i] = !_selected[i];
                            });
                          },
                          child: Card(
                            shape: const CircleBorder(),
                            color: _selected[i]
                                ? const Color(0xFF418F9B)
                                : Colors.white,
                            child: SizedBox(
                              height: 25.0,
                              width: 30.0,
                              child: Center(
                                child: Text(
                                  _dates[i],
                                  textScaleFactor: 0.8,
                                  style: TextStyle(
                                    color: _selected[i]
                                        ? Colors.white
                                        : const Color(0xFF418F9B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      for (int i = 0; i < _weekdays.length; i++)
                        Text(
                          '• •',
                          textScaleFactor: 0.8,
                          style: TextStyle(
                            color: _selected[i]
                                ? Colors.white
                                : const Color(0xFF418F9B),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 150.0,
              width: double.maxFinite,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                 Header1(title: 'SERVICES',),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        for (int i = 0; i < 10; i++) HomeServiceCards(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.maxFinite,
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              color: Colors.white,
              child: const Row(
                children: <Widget>[
                  Text(
                    'DAILY REPORTS',
                    textScaleFactor: 0.9,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 3.0,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(
                        height: 2.5,
                      ),
                      CircleAvatar(
                        radius: 3.0,
                        backgroundColor: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: ((context, _) {
              return Container(
                height: 120.0,
                width: double.maxFinite,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Expanded(
                      flex: 2,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10.0,),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                            child: Text(
                              'Symptoms of Covid to watch out for',
                              maxLines: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'March 06, 9:01 PM',
                              maxLines: 2,
                              textScaleFactor: 0.9,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.subtitle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 10.0),
                        height: 150.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: const DecorationImage(image: AssetImage('assets/images/vaccinate.jpg',),fit: BoxFit.fill,),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
