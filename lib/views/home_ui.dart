import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: 7, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.pink,
          title: Text(
            'DTI Cake Shop',
            style: GoogleFonts.kanit(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0); //ปิดแอพ
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[400],
            indicatorColor: Colors.yellow,
            indicatorWeight: 5.0,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'The Early Bake',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_2_outlined,
                ),
                text: 'Feeling Dough Good',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_2_sharp,
                ),
                text: 'C Belly',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_rounded,
                ),
                text: 'The Story Caker',
              ),
              Tab(
                icon: Icon(
                  Icons.shopify_outlined,
                ),
                text: 'Aob Auan',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_two,
                ),
                text: 'Sam Suan',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_2_outlined,
                ),
                text: 'Cafe De Tu',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'SAU Cake Shop',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'แอปสำหรับคนชอบกินเค้ก',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_welcome.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/06/07/18/51/tart-1442275_960_720.jpg',
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/02/08/12/47/cake-2048732_960_720.jpg',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2019/08/29/16/39/tart-4439393_960_720.jpg',
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'The Early Bake',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 1;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck02.png',
                  ),
                ),
                title: Text(
                  'Feeling Dough Good',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 2;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck03.png',
                  ),
                ),
                title: Text(
                  'C Belly',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 255, 179, 117),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 3;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck04.png',
                  ),
                ),
                title: Text(
                  'The Story Caker',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 142, 177, 255),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 4;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck05.png',
                  ),
                ),
                title: Text(
                  'Aob Auan',
                ),
                trailing: Icon(
                  FontAwesomeIcons.twitter,
                  color: Color.fromARGB(255, 1, 153, 255),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 5;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck06.png',
                  ),
                ),
                title: Text(
                  'Sam Suan',
                ),
                trailing: Icon(
                  FontAwesomeIcons.facebook,
                  color: Color.fromARGB(255, 0, 32, 138),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 6;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck07.png',
                  ),
                ),
                title: Text(
                  'Cafe De Tu',
                ),
                trailing: Icon(
                  FontAwesomeIcons.addressBook,
                  color: const Color.fromARGB(255, 244, 179, 255),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text(
                  'ออกจากการใช้งาน',
                  style: GoogleFonts.kanit(),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // Center(
            //   child: Column(
            //     children: [
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.06,
            //       ),
            //       Text(
            //         'The Early Bake',
            //         style: GoogleFonts.kanit(
            //           fontSize: MediaQuery.of(context).size.width * 0.06,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.pink,
            //           shadows: [
            //             Shadow(
            //               color: Color.fromARGB(
            //                   255, 247, 253, 158), // Bright shadow color
            //               blurRadius: 5,
            //               offset: Offset(0, 0),
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.03,
            //       ),
            //       Image.asset(
            //         'assets/images/ck01.png',
            //         width: MediaQuery.of(context).size.width * 0.5,
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.03,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(
            //           left: 50.0,
            //           right: 50.0,
            //         ),
            //         child: ListTile(
            //           onTap: () {
            //             _makePhoneCall('0819259557');
            //           },
            //           tileColor: Colors.pink[100],
            //           leading: Icon(
            //             Icons.phone,
            //           ),
            //           title: Text(
            //             '0819259557',
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.01,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(
            //           left: 50.0,
            //           right: 50.0,
            //         ),
            //         child: ListTile(
            //           onTap: () {
            //             _launchInBrowser(
            //               Uri.parse('https://www.instagram.com/the.earlybake/'),
            //             );
            //           },
            //           tileColor: Colors.pink[100],
            //           leading: Icon(
            //             Icons.web,
            //           ),
            //           title: Text(
            //             'https://www.instagram.com/the.earlybake/',
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.01,
            //       ),
            //       ClipRRect(
            //         borderRadius: BorderRadius.circular(20.0),
            //         child: Padding(
            //           padding: const EdgeInsets.only(
            //             left: 50.0,
            //             right: 50.0,
            //           ),
            //           child: ListTile(
            //             onTap: () {
            //               _launchInBrowser(
            //                 Uri.parse('https://maps.app.goo.gl/ad6YZEtRbremwycf6'),
            //               );
            //             },
            //             tileColor: Colors.pink[100],
            //             leading: Icon(FontAwesomeIcons.mapPin),
            //             title: Text(
            //               'Location',
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            showShopWidget(
              'The Early Bake',
              'assets/images/ck01.png',
              '0815264332',
              'https://www.instagram.com/the.earlybake/',
              'https://maps.app.goo.gl/ad6YZEtRbremwycf6',
            ),

            showShopWidget(
              'Feeling Dough Good',
              'assets/images/ck02.png',
              '0656802806',
              'https://www.facebook.com/feelin.doughgood/',
              'https://maps.app.goo.gl/ad6YZEtRbremwycf6',
            ),

            showShopWidget(
              'C Belly',
              'assets/images/ck03.png',
              '0819584223',
              'https://www.facebook.com/cbelly.bkk/',
              'https://maps.app.goo.gl/ad6YZEtRbremwycf6',
            ),

            showShopWidget(
              'The Story Baker',
              'assets/images/ck04.png',
              '0814239665',
              'https://www.facebook.com/Thestorycaker/',
              'https://maps.app.goo.gl/ad6YZEtRbremwycf6',
            ),

            showShopWidget(
              'Aob Auan',
              'assets/images/ck05.png',
              '0829665441',
              'https://www.instagram.com/the.earlybake/',
              'https://maps.app.goo.gl/ad6YZEtRbremwycf6',
            ),

            showShopWidget(
              'Sam Suan',
              'assets/images/ck06.png',
              '0853214726',
              'https://www.facebook.com/samsuan.official/',
              'https://maps.app.goo.gl/ad6YZEtRbremwycf6',
            ),

            showShopWidget(
              'Cafe De Tu',
              'assets/images/ck07.png',
              '023111846',
              'https://www.facebook.com/cafedetu.cake/',
              'https://maps.app.goo.gl/ad6YZEtRbremwycf6',
            ),

            
          ],
        ),
      ),
    );
  }

  //showShopWidget Layouts of shop page
  Widget showShopWidget(text1, image, phone, url, map) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            text1,
            style: GoogleFonts.kanit(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
              shadows: [
                Shadow(
                  color:
                      Color.fromARGB(255, 247, 253, 158), // Bright shadow color
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(phone);
              },
              tileColor: Colors.pink[100],
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                phone,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(url),
                );
              },
              tileColor: Colors.pink[100],
              leading: Icon(
                Icons.web,
              ),
              title: Text(
                url,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(
                    Uri.parse(map),
                  );
                },
                tileColor: Colors.pink[100],
                leading: Icon(FontAwesomeIcons.mapPin),
                title: Text(
                  'Location',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
