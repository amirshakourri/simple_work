import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Stack(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// (1) header of application ui => row
          Padding(
            padding: const EdgeInsets.only(top: 75.0, left: 35, right: 40),
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

          /// (2) Title Text
          Padding(
            padding: const EdgeInsets.only(top: 145, left: 50.0),
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

          SizedBox(
            height: 30,
          ),

          /// (3) Search box
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 50.0),
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

          /// (4) vertical scroll tex
          Padding(
            padding: const EdgeInsets.only(top: 400.0, left: 40),
            child: DefaultTabController(
              length: 6, // Number of tabs
              child: Column(
                children: [
                  TabBar(
                    /// This is it
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                    indicatorSize: TabBarIndicatorSize.tab,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    labelPadding: EdgeInsets.only(left: 30, right: 30),
                    isScrollable: true,
                    labelColor: Color(0xFFFA4A0C),
                    labelStyle: TextStyle(
                      fontSize: 17,
                      fontFamily: 'sf',
                      fontWeight: FontWeight.w400,
                    ),
                    indicatorColor: Color(0xFFFA4A0C),
                    indicatorWeight: 2.5,
                    indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Color(0xFFFA4A0C), width: 2.4),
                    ),
                    unselectedLabelColor: Color(0xFF99999D),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 17,
                      fontFamily: 'sf',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                    tabs: <Widget>[
                      Tab(text: 'Foods'),
                      Tab(text: 'Drinks'),
                      Tab(text: 'Snacks'),
                      Tab(text: 'Sauce'),
                      Tab(text: 'Coffee'),
                      Tab(text: 'Cake'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Content for Tab 1
                        TabContent(),

                        // Content for Tab 2
                        TabContent(),

                        // Content for Tab 3
                        TabContent(),
                        TabContent(),

                        // Content for Tab 2
                        TabContent(),

                        // Content for Tab 3
                        TabContent(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// (5) menu item with vertical scroll

          /// (6) bottom navigation bar
        ],
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3, // Number of images in the list
      itemBuilder: (context, index) {
        // Replace these URLs with actual image URLs from Google Images

        return Card(
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Image $index',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
