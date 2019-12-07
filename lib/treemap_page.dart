import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TreeMapPage extends StatefulWidget {
  final PageController _pageController;

  TreeMapPage(this._pageController);

  @override
  _TreeMapPageState createState() => _TreeMapPageState();
}

class _TreeMapPageState extends State<TreeMapPage> {
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _kGoogleLocation = CameraPosition(
    target: LatLng(35.177394,
        126.904686),
    zoom: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text(
        '나의 나무 지도',
        style: TextStyle(fontSize: 24.0),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      ],
      backgroundColor: Colors.orangeAccent,
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '나의 반려목 지도',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://img.insight.co.kr/static/2018/09/14/700/bgjyu284cv3it9vnprlt.jpg'),
                        )),
                    Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      '배문주님 환영합니다.',
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(color: Colors.orangeAccent),
          ),
          ListTile(
            onTap: () {
              setState(() {
                Navigator.pop(context);
                widget._pageController.jumpToPage(0);
              });
            },
            leading: Icon(Icons.account_circle),
            title: Text(
              '프로필',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                Navigator.pop(context);
                widget._pageController.jumpToPage(1);
              });
            },
            leading: Icon(Icons.movie),
            title: Text(
              '이러닝 교육',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                Navigator.pop(context);
                widget._pageController.jumpToPage(2);
              });
            },
            leading: Icon(Icons.school),
            title: Text(
              '오프라인 교육',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                Navigator.pop(context);
                widget._pageController.jumpToPage(3);
              });
            },
            leading: Icon(Icons.tag_faces),
            title: Text(
              '봉사활동 신청',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                Navigator.pop(context);
                widget._pageController.jumpToPage(4);
              });
            },
            leading: Icon(Icons.map),
            title: Text(
              '반려목 지도',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: GoogleMap(
              initialCameraPosition: _kGoogleLocation,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              compassEnabled: true,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 0.2,
              child: Container(
                color: Colors.black12,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(8.0)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(24.0)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(24.0)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                  )),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                              ),
                              Text('양버즘나무'),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(24.0)),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
