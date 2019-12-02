import 'package:flutter/material.dart';

class TreeMapPage extends StatefulWidget {
  @override
  _TreeMapPageState createState() => _TreeMapPageState();
}

class _TreeMapPageState extends State<TreeMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('나의 나무 지도', style: TextStyle(fontSize: 24.0),),
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
      ],
      backgroundColor: Colors.teal,
    );
  }

  Widget _buildBody() {
    return Scaffold(
      body: Stack(children: <Widget>[
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
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('양버즘나무'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('양버즘나무'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
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
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('양버즘나무'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('양버즘나무'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
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
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('양버즘나무'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('양버즘나무'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 5, height: 5,child: CircleAvatar(backgroundColor: Colors.teal,)),
                            Padding(padding: EdgeInsets.all(4.0),),
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
      ],),
    );
  }
}
