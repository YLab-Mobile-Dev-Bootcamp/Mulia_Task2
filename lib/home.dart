import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({required key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15, top: 20),
            child: Center(
                child: Image.network(
              'https://th.bing.com/th/id/R.56d9aa557935aaf699a67001aa5c0b9d?rik=oVc5JidRGdnQxg&riu=http%3a%2f%2f3.bp.blogspot.com%2f-9riMTvkjlHw%2fUksSbBTLCgI%2fAAAAAAAAAD8%2fMRLoN39tHDU%2fs1600%2fkurokonobasket.jpg&ehk=HX3Q4nMONPmH4uhMLuibk6XNeca4HToPknXBFZFJKdo%3d&risl=&pid=ImgRaw&r=0',
              height: MediaQuery.of(context).size.height * 0.30,
            )),
          ),

          Column(
            children: [
              Center(
                  child: Text(
                '黒子のバスケ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
              Center(
                  child: Text('Kuroko no Basuke',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)))
            ],
          ),
          Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: Text(
                'Information Manga',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  padding: EdgeInsets.only(bottom: 7),
                  //padding: EdgeInsets.only(left: 13, bottom: 7, right: 10),
                  child: Text('Genre')),
              Column(
                children: [
                  Text('Comedy, Sports'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                padding: EdgeInsets.only(bottom: 7),
                child: Text('Written by'),
              ),
              Column(
                children: [
                  Text('Tadatoshi Fujimaki'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width * 0.40,
                child: Text('Original run'),
              ),
              Column(
                children: [
                  Text('December 8, 2008-', overflow: TextOverflow.ellipsis),
                  Text('September 1, 2014'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                padding: EdgeInsets.only(bottom: 7),
                child: Text('Magazine'),
              ),
              Column(
                children: [
                  Text('Weekly Shōnen Jump'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 7),
                width: MediaQuery.of(context).size.width * 0.40,
                child: Text('Volumes'),
              ),
              Column(
                children: [
                  Text(
                    '30',
                  ),
                ],
              ),
            ],
          ),

          Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: Text(
                'Information Seri Anime',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  padding: EdgeInsets.only(bottom: 7),
                  //padding: EdgeInsets.only(left: 13, bottom: 7, right: 10),
                  child: Text('Sutradara')),
              Column(
                children: [
                  Text('Shunsuke Tada'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                padding: EdgeInsets.only(bottom: 7),
                child: Text('Skenario'),
              ),
              Column(
                children: [
                  Text('Noburo Takagi'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                padding: EdgeInsets.only(bottom: 7),
                child: Text('Studio'),
              ),
              Column(
                children: [
                  Text('Production I.G'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.30,
                padding: EdgeInsets.only(bottom: 7),
                child: Text('Tayang'),
              ),
              Column(
                children: [
                  Text('7 April 2012 – 30 Juni 2015'),
                ],
              ),
            ],
          ),
          //
        ],
      )),
    );
  }
}
