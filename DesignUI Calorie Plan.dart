import 'package:flutter/material.dart';

final Color bgColor = Color(0xffff7043);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor, highlightColor: Color(0xff00e676)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor, // Color(0x00000000),
          elevation: 0,
          title: Text('Calorie Plan'),
          centerTitle: true,
        ),
        drawer: Container(),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final double containerHeight = 120;

  final TextStyle style01 =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12);
  final style02 =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);
  final TextStyle style03 =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14);

  Container button01() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff00e676),
      ),
      width: 25,
      height: 25,
      alignment: Alignment.center,
      child: Text('>',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: Image.network(
                'https://www.freepngimg.com/thumb/food/9-2-food-png-file.png',
                width: 180),
          ),
          Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Cal', style: style01),
                SizedBox(height: 10),
                Text('1500',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                SizedBox(height: 10),
                GestureDetector(
                    onTap: () => print('OK'),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text('>',
                          style: TextStyle(
                              color: bgColor, fontWeight: FontWeight.bold)),
                    ))
              ])
        ]),
      ),
      Row(children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          color: bgColor,
          height: containerHeight,
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Breakfast', style: style01),
                SizedBox(height: 10),
                Text('345 >', style: style02),
                SizedBox(height: 15),
                Text('Snacks', style: style01),
              ]),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [bgColor, Color(0xffff5722)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.5],
          )),
          //color: Color(0xffF85D3C),
          height: containerHeight,
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lunch', style: style01),
                SizedBox(height: 10),
                Text('450 >', style: style02),
                SizedBox(height: 15),
                Text('Snacks', style: style01),
              ]),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          color: bgColor,
          height: containerHeight,
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Dinner', style: style01),
                SizedBox(height: 10),
                Text('405 >', style: style02),
                SizedBox(height: 15),
                Text('No Snacks', style: style01),
              ]),
        )
      ]),
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0)),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Column(children: <Widget>[
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(width: 20),
                      Icon(
                        Icons.restaurant_menu,
                        color: bgColor,
                        size: 24.0,
                      ),
                      Text('All >',
                          style: TextStyle(
                              color: Color(0xff00e676),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ])),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Scrollbar(
                        child: ListView(
                      scrollDirection: Axis.horizontal,
                      //padding:  EdgeInsets.all(8),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(children: <Widget>[
                            Text('1200 Cal', style: style03),
                            SizedBox(width: 10),
                            button01(),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(children: <Widget>[
                            Text('2000 Cal', style: style03),
                            SizedBox(width: 10),
                            button01(),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(children: <Widget>[
                            Text('2500 Cal', style: style03),
                            SizedBox(width: 10),
                            button01(),
                          ]),
                        ),
                      ],
                    )))),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Create a plan with expert',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      GestureDetector(
                          onTap: () => print('OK'),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: bgColor,
                            ),
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ))
                    ])),
            SizedBox(height: 40)
          ]))
    ]);
  }
}
