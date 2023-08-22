import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inspiration App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            color: Colors.black87,
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AboutDialog(
                          applicationVersion: '1.0.0',
                          applicationIcon: FlutterLogo(),
                          applicationName: 'Inspiration app',
                          children: [Text('Developer : Bereket Amanuel')],
                        ));
              },
              color: Colors.black87,
              icon: Icon(Icons.info),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30)),
                    ),
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Find Your',
                          style: TextStyle(color: Colors.black87, fontSize: 25),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Inspiration',
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 243, 243, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black87,
                              ),
                              hintText: "Search you're looking for",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Promo Today',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 200,
                    width: 2000,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('assets/image2.png'),
                        promoCard('assets/images3.jpg'),
                        promoCard('assets/OIP.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 200,
                      width: 600,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/three.jpg'),
                          promoCard('assets/one.jpg'),
                          promoCard('assets/two.jpg'),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 200,
                      width: 2000,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: AlwaysScrollableScrollPhysics(),
                        children: <Widget>[
                          promoCard(
                              'assets/motivational-quotes-in-english-for-success.jpg'),
                          promoCard(
                              'assets/student-motivational-quotes-in-english.jpg'),
                          promoCard(
                              'assets/motivational-status-in-english.jpg'),
                        ],
                      )),
                ]),
          ),
        ));
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.9
            ], colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ])),
      ),
    ),
  );
}
