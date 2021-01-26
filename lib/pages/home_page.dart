//      Author: Ufuk Lisan            E-mail=lisanufuk@gmail.com
//      https://github.com/UfukLisan

import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 24,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 24,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 24,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //gölgelik
        title: Text(
          "Fashion Application",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Montserrat",
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          //Profile List at the top
          buildProfileList(),

          //Sharing Card at the middle
          buildSharingCard(context),
          buildSharingCard(context),
          buildSharingCard(context),
        ],
      ),
    );
  }

  Padding buildSharingCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 4,
        //color: Colors.blue.shade300,
        child: Container(
          width: double.infinity,
          height: 510,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('assets/model1.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daisy",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "19 mins ago",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                    size: 22,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "This official website features a ribbed knit zipper jacket that is modern and stylish.It looks very temparament and is recommend to friends.",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(imagePath: 'assets/modelgrid1.jpeg')));
                    },
                    //child: Hero(
                    //  tag: 'assets/modelgrid1.jpeg',
                    //child:
                    child: Container(
                      height: 200,
                      width: (MediaQuery.of(context).size.width - 50) / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage('assets/modelgrid1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  imagePath: 'assets/modelgrid2.jpeg')));
                        },
                        child:
                            /*Hero(
                          tag: 'assets/modelgrid2.jpeg',
                          child:*/
                            Container(
                          height: 95,
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage('assets/modelgrid2.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  imagePath: 'assets/modelgrid3.jpeg')));
                        },
                        child:
                            /*Hero(
                          tag: 'assets/modelgrid3.jpeg',
                          child:*/
                            Container(
                          height: 95,
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage('assets/modelgrid3.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Text(
                        "# Lois vuitton",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Text(
                        "# Chloe",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.reply,
                    color: Colors.brown.withOpacity(0.4),
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1.7k",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Colors.grey.withOpacity(0.8)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.4),
                          size: 26,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "325",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              color: Colors.grey.withOpacity(0.8)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 300,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2.3k",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Colors.grey.withOpacity(0.8)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildProfileList() {
    return Container(
      height: 150,
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.horizontal,
        children: [
          listElements('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model2.jpeg', 'assets/chloelogo.png'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model3.jpeg', 'assets/dress.jpg'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model1.jpeg', 'assets/louisvuitton.jpg'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model2.jpeg', 'assets/chanellogo.jpg'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model3.jpeg', 'assets/dress.jpg'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model2.jpeg', 'assets/chloelogo.png'),
          SizedBox(
            width: 20,
          ),
          listElements('assets/model3.jpeg', 'assets/dress.jpg'),
        ],
      ),
    );
  }

  Widget listElements(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(logoPath),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown.shade600,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
