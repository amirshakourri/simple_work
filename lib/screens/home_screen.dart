import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 6, vsync: this);
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75.0, left: 20, right: 20),
              child: Row(
                children: [
                  //Menu icon
                  TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/menu.png',
                      height: 15,
                    ),
                    label: Text(''),
                  ),

                  Spacer(),

                  //shopping-cart icon
                  TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/shopping-cart.png',
                      height: 24,
                    ),
                    label: Text(''),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30.0),
              child: Text(
                'Delicious \nfood for you',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontFamily: 'sf-bold',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            SizedBox(height: 30),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    width: 314,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEEEE),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 5),
                      child: TextField(
                        onTap: () {
                          setState(() {
                            //vis = false;
                          });
                        },
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: 'Search..',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.50),
                            fontSize: 17,
                            fontFamily: 'sf',
                            fontWeight: FontWeight.w600,
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            // TabBar
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(left: 20, right: 20),
                    labelColor: Color(0xFFFA4A0C),
                    unselectedLabelColor: Color(0xFF99999D),
                    indicatorColor: Color(0xFFFA4A0C),
                    tabs: [
                      Tab(text: 'Foods'),
                      Tab(text: 'Drinks'),
                      Tab(text: 'Snacks'),
                      Tab(text: 'Sauce'),
                      Tab(text: 'Coffee'),
                      Tab(text: 'Cake'),
                    ],
                  ),
                ),
              ),
            ),

            // TabBarView
            Container(
              margin: EdgeInsets.only(top: 30),
              width: double.maxFinite,
              height: 400,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        width: 230,
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Positioned(
                              top: 20,
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 5),
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, -1),
                              child: Image.asset(
                                'assets/images/food-dish-1.png',
                                width: 150,
                              ),
                            ),
                            Positioned(
                              bottom: 180,
                              child: Column(
                                children: [
                                  Text(
                                    'Veggie ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'SF Pro Rounded',
                                      fontWeight: FontWeight.w600,
                                      height: 0.05,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    'tomato mix',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'sf-bold',
                                      fontWeight: FontWeight.w600,
                                      height: 0.05,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 130,
                              child: Text(
                                'N1,900',
                                style: TextStyle(
                                  color: Color(0xFFFA4A0C),
                                  fontSize: 17,
                                  fontFamily: 'SF Pro Rounded',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/disk1.png'),
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/food-dish-1.png'),
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        width: 230,
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Positioned(
                              top: 20,
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 5),
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, -1),
                              child: Image.asset(
                                'assets/images/food-dish-1.png',
                                width: 150,
                              ),
                            ),
                            Positioned(
                              bottom: 200,
                              child: Text('Name'),
                            ),
                            Positioned(
                              bottom: 150,
                              child: Text('Price'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        width: 230,
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Positioned(
                              top: 20,
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 5),
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, -1),
                              child: Image.asset(
                                'assets/images/food-dish-1.png',
                                width: 150,
                              ),
                            ),
                            Positioned(
                              bottom: 200,
                              child: Text('Name'),
                            ),
                            Positioned(
                              bottom: 150,
                              child: Text('Price'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        width: 230,
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Positioned(
                              top: 20,
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 5),
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, -1),
                              child: Image.asset(
                                'assets/images/food-dish-1.png',
                                width: 150,
                              ),
                            ),
                            Positioned(
                              bottom: 200,
                              child: Text('Name'),
                            ),
                            Positioned(
                              bottom: 150,
                              child: Text('Price'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
