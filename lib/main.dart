import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'marca',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  nextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, CupertinoPageRoute(builder: (c) {
      return MyHomePage();
    }));
  }

  @override
  void initState() {
    super.initState();
    nextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('1B1E23'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/ic.png',
                height: 125,
                width: 125,
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.greenAccent,
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: HexColor('1B1E23'),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/ic.png',
                      height: 125,
                      width: 125,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (c) {
                            return Terrain();
                          }));
                        },
                        child: Container(
                          // margin: EdgeInsets.only(left: 20, right: 20),
                          width: 160,
                          // height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x99020507),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Color(0x19eeeeee),
                                blurRadius: 3,
                                offset: Offset(-1, -1),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff323235), Color(0xff141518)],
                            ),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      'assets/terraun.png',
                                      color: Colors.white,
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Terran',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Les Donne De Terrain',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: HexColor('BEBEBE').withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (c) {
                            return Cafe();
                          }));
                        },
                        child: Container(
                          // margin: EdgeInsets.only(left: 20, right: 20),
                          width: 160,
                          // height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x99020507),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Color(0x19eeeeee),
                                blurRadius: 3,
                                offset: Offset(-1, -1),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff323235), Color(0xff141518)],
                            ),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      'assets/cafe.png',
                                      height: 100,
                                      width: 100,
                                      // color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Cafe',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Les Donne De Cafe',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: HexColor('BEBEBE').withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (c) {
                            return Credit();
                          }));
                        },
                        child: Container(
                          // margin: EdgeInsets.only(left: 20, right: 20),
                          width: 160,
                          // height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x99020507),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Color(0x19eeeeee),
                                blurRadius: 3,
                                offset: Offset(-1, -1),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff323235), Color(0xff141518)],
                            ),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      'assets/credit.png',
                                      height: 100,
                                      width: 100,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Credit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Les Donne De Credit',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: HexColor('BEBEBE').withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 20, right: 20),
                        width: 160,
                        // height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x99020507),
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                            BoxShadow(
                              color: Color(0x19eeeeee),
                              blurRadius: 3,
                              offset: Offset(-1, -1),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff323235), Color(0xff141518)],
                          ),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/apartment.png',
                                    color: Colors.white,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Apartment',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Les Donne De Apartment',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(
                                  height: 1,
                                  color: HexColor('BEBEBE').withOpacity(0.3),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class Terrain extends StatelessWidget {
  const Terrain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.greenAccent,
        ),
        SafeArea(
            child: Scaffold(
          backgroundColor: HexColor('1B1E23'),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StreamBuilder(
                    stream: FirebaseDatabase.instance
                        .reference()
                        .child('TERRAIN')
                        .child('Matin')
                        .onValue,
                    builder: (context, snap) {
                      if (snap.connectionState == ConnectionState.waiting) {
                        return Container(
                          child: Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        );
                      } else if (!snap.hasData &&
                          snap.hasError &&
                          snap.data.snapshot.value == null) {
                        return Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        );
                      }

                      List item = [];
                      Map data = snap.data.snapshot.value;
                      print(data.length);
                      item = [];
                      data.forEach((index, data) => item.add({
                            "key": index,
                            "type": data['type'],
                            "Prix": data['Prix'],
                            "Time": data['Time'],
                            "date": data['date']
                          }));
                      return snap.data.snapshot.value == null
                          ? SizedBox()
                          : ListView.builder(
                              // scrollDirection: Axis.horizontal,
                              itemCount: item.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Type',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['type']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Prix',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Prix']}DH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Time',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Time']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['date']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 3,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                    },
                  ),
                  StreamBuilder(
                    stream: FirebaseDatabase.instance
                        .reference()
                        .child('TERRAIN')
                        .child('Nuit')
                        .onValue,
                    builder: (context, snap) {
                      if (snap.connectionState == ConnectionState.waiting) {
                        return Container(
                            // child: Center(
                            //   child: CircularProgressIndicator(
                            //     backgroundColor: Colors.white,
                            //   ),
                            // ),
                            );
                      } else if (!snap.hasData &&
                          snap.hasError &&
                          snap.data.snapshot.value == null) {
                        return Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        );
                      }

                      List item = [];
                      Map data = snap.data.snapshot.value;
                      print(data.length + 90);
                      item = [];
                      data.forEach((index, data) => item.add({
                            "key": index,
                            "type": data['type'],
                            "Prix": data['Prix'],
                            "Time": data['Time'],
                            "date": data['date']
                          }));
                      return snap.data.snapshot.value == null
                          ? SizedBox()
                          : ListView.builder(
                              // scrollDirection: Axis.horizontal,
                              itemCount: item.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Type',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['type']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Prix',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Prix']}DH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Time',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Time']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['date']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 3,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                    },
                  )
                ],
              ),
            ),
          ),
        ))
      ],
    );
  }
}

class Cafe extends StatelessWidget {
  const Cafe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.greenAccent,
        ),
        SafeArea(
            child: Scaffold(
          backgroundColor: HexColor('1B1E23'),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StreamBuilder(
                    stream: FirebaseDatabase.instance
                        .reference()
                        .child('Payment')
                        .onValue,
                    builder: (context, snap) {
                      if (snap.connectionState == ConnectionState.waiting) {
                        return Container(
                          child: Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        );
                      } else if (!snap.hasData &&
                          snap.hasError &&
                          snap.data.snapshot.value == null) {
                        return Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        );
                      }

                      List item = [];
                      Map data = snap.data.snapshot.value;
                      print(data.length);
                      item = [];
                      data.forEach((index, data) => item.add({
                            "key": index,
                            "Date": data['Date'],
                            "Quantity": data['Quantity'],
                            "total": data['total'],
                            "Credit": data['Credit']
                          }));
                      return snap.data.snapshot.value == null
                          ? SizedBox()
                          : ListView.builder(
                              // scrollDirection: Axis.horizontal,
                              itemCount: item.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Date']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Quantity',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Quantity']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Total',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['total']}DH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Credit',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Credit']}DH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 3,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                    },
                  ),
                ],
              ),
            ),
          ),
        ))
      ],
    );
  }
}

class Credit extends StatelessWidget {
  const Credit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.greenAccent,
        ),
        SafeArea(
            child: Scaffold(
          backgroundColor: HexColor('1B1E23'),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StreamBuilder(
                    stream: FirebaseDatabase.instance
                        .reference()
                        .child('CREDIT')
                        .onValue,
                    builder: (context, snap) {
                      if (snap.connectionState == ConnectionState.waiting) {
                        return Container(
                          child: Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        );
                      } else if (!snap.hasData &&
                          snap.hasError &&
                          snap.data.snapshot.value == null) {
                        return Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        );
                      }

                      List item = [];
                      Map data = snap.data.snapshot.value;
                      print(data.length);
                      item = [];
                      data.forEach((index, data) => item.add({
                            "key": index,
                            "NomCL": data['NomCL'],
                            "Crd": data['Crd'],
                            // "total": data['total'],
                            // "Credit": data['Credit']
                          }));
                      return snap.data.snapshot.value == null
                          ? SizedBox()
                          : ListView.builder(
                              // scrollDirection: Axis.horizontal,
                              itemCount: item.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Nom',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['NomCL']}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Credit',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            '${item[index]['Crd']}DH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Divider(
                                        height: 3,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                    },
                  ),
                ],
              ),
            ),
          ),
        ))
      ],
    );
  }
}
