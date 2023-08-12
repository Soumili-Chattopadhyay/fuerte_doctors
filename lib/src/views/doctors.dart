import 'package:flutter/material.dart';
import 'package:fuerte_doctors/src/common/colors.dart';
import 'package:fuerte_doctors/src/common/widgets/header.dart';

class Doctors extends StatelessWidget {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // floating: _floating,
            pinned: true,
            expandedHeight: 150.0,
            backgroundColor: AppColors.primary,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.arrow_back_ios,
                  size: 15.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'DOCTORS',
                  textScaleFactor: 0.7,
                  style: TextStyle(
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
            actions: const <Widget>[
              Icon(Icons.info_outline_rounded),
              SizedBox(
                width: 10.0,
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
              height: 200.0,
              width: double.maxFinite,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Header1(
                    title: 'DOCTORS NEARBY',
                  ),
                  Container(
                    height: 75,
                    width: double.maxFinite,
                    margin: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                    child: const Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 30.0,
                            child: ClipOval(
                                child: Image(
                              image: AssetImage('assets/images/gregory.jpg'),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Gregory House',
                                textScaleFactor: 0.9,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Nephrologist',
                                textScaleFactor: 0.9,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subtitle,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 10.0,
                                    backgroundColor: Color(0xFFD3EAFC),
                                    child: Icon(
                                      Icons.medical_services,
                                      size: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    '3 years',
                                    textScaleFactor: 0.8,
                                    style: TextStyle(
                                      color: AppColors.subtitle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12.0,
                                  ),
                                  CircleAvatar(
                                    radius: 10.0,
                                    backgroundColor: Color(0xFFFDDAD7),
                                    child: Icon(
                                      Icons.favorite,
                                      size: 10.0,
                                      color: Color(0xFFF44236),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    '67%',
                                    textScaleFactor: 0.8,
                                    style: TextStyle(
                                      color: AppColors.subtitle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70.0,
                    width: double.maxFinite,
                    margin: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        const Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Total Fee',
                                textScaleFactor: 0.6,
                                style: TextStyle(
                                  color: AppColors.subtitle,
                                ),
                              ),
                              Text(
                                '\$80',
                                textScaleFactor: 0.9,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Card(
                            color: AppColors.buttonPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            elevation: 4.0,
                            child: const SizedBox(
                              height: 45.0,
                              child: Center(
                                child: Text(
                                  'Make an appointment',
                                  textScaleFactor: 0.8,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
              color: Colors.white,
              height: 50.0,
              padding: const EdgeInsets.only(bottom: 8.0),
              width: double.maxFinite,
              child: Header1(
                title: 'RECOMMENDED',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 20, (context, _) {
              return Container(
                width: double.maxFinite,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 75,
                      width: double.maxFinite,
                      margin: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                      child: const Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              radius: 30.0,
                              child: ClipOval(
                                child: Image(
                                  image:
                                      AssetImage('assets/images/gregory.jpg'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Gregory House',
                                  textScaleFactor: 0.9,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Nephrologist',
                                  textScaleFactor: 0.9,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.subtitle,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 10.0,
                                      backgroundColor: Color(0xFFD3EAFC),
                                      child: Icon(
                                        Icons.medical_services,
                                        size: 10.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.0,
                                    ),
                                    Text(
                                      '3 years',
                                      textScaleFactor: 0.8,
                                      style: TextStyle(
                                        color: AppColors.subtitle,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    CircleAvatar(
                                      radius: 10.0,
                                      backgroundColor: Color(0xFFFDDAD7),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 10.0,
                                        color: Color(0xFFF44236),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.0,
                                    ),
                                    Text(
                                      '67%',
                                      textScaleFactor: 0.8,
                                      style: TextStyle(
                                        color: AppColors.subtitle,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70.0,
                      width: double.maxFinite,
                      margin: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 0.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.canvas,
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          const Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Total Fee',
                                  textScaleFactor: 0.6,
                                  style: TextStyle(
                                    color: AppColors.subtitle,
                                  ),
                                ),
                                Text(
                                  '\$80',
                                  textScaleFactor: 0.9,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Card(
                              color: AppColors.buttonPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              elevation: 4.0,
                              child: const SizedBox(
                                height: 45.0,
                                child: Center(
                                  child: Text(
                                    'Make an appointment',
                                    textScaleFactor: 0.8,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20.0,),
          ),
        ],
      ),
    );
  }
}
