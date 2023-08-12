import 'package:flutter/material.dart';
import 'package:fuerte_doctors/src/common/colors.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: Stack(
        children: <Widget>[
          const SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(),
          ),
          CustomScrollView(
            slivers: <Widget>[
              const SliverAppBar(
                pinned: true,
                backgroundColor: AppColors.primary,
                title: Row(
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
                      'APPOINTMENTS',
                      textScaleFactor: 0.7,
                      style: TextStyle(
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  Icon(Icons.info_outline_rounded),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20.0,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  color: Colors.white,
                  padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
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
                      const ListTile(
                        title: Text(
                          'Total Cost',
                          textScaleFactor: 0.8,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Session for 30 mins',
                          textScaleFactor: 0.8,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.subtitle,
                          ),
                        ),
                        trailing: Text(
                          '\$80',
                          textScaleFactor: 0.9,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          'To Pay',
                          textScaleFactor: 0.8,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          '\$80',
                          textScaleFactor: 0.9,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Divider(),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Card(
                          color: const Color(0xFFECF4F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          elevation: 0.0,
                          child: const SizedBox(
                            height: 35.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.discount,
                                  size: 15.0,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  'Make an appointment',
                                  textScaleFactor: 0.8,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    // color: Colors.white,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                ),
                              ],
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
                  height: 150.0,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                        child: const Text(
                          'PAYMENT OPTIONS',
                          textScaleFactor: 0.9,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.9,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        height: 75.0,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 8.0,
                                    backgroundColor: AppColors.primary,
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'Paypal',
                                    textScaleFactor: 0.9,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2.5,
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            //  SizedBox(height: 2.5,),
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 8.0,
                                    backgroundColor: AppColors.buttonInactive,
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'Credit Card',
                                    textScaleFactor: 0.9,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
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
                  height: 25.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.75,
              ),
              Container(
                  height: 100.0,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 16.0),
                  color: Colors.white,
                  child:  Card(
                                color: AppColors.buttonPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                elevation: 4.0,
                                child: const SizedBox(
                                  height: 45.0,
                                  child: Center(
                                    child: Text(
                                      'Pay & Confirm',
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
        ],
      ),
    );
  }
}
