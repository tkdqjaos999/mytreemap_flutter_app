import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('나의 프로필', style: TextStyle(fontSize: 24.0),),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
      ],
      backgroundColor: Colors.teal,
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
      centerTitle: true,
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8.0),),
                  Stack(children: <Widget>[
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://img.insight.co.kr/static/2018/09/14/700/bgjyu284cv3it9vnprlt.jpg'),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 28,
                          height: 28,
                          child: FloatingActionButton(backgroundColor: Colors.blue,onPressed: (){},child: Icon(Icons.add),)
                      ),
                    )
                  ],),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('이름: 배문주', style: TextStyle(fontSize: 20.0),),
                      Text('기수: 나무활동가 3기', style: TextStyle(fontSize: 20.0),),
                    ],
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Column(children: <Widget>[
                  Text('나의 반려목', style: TextStyle(fontSize: 20),),
                  Padding(padding: EdgeInsets.all(4.0)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.network('https://cdn.pixabay.com/photo/2018/04/01/02/46/cherry-blossoms-3279867_960_720.jpg',fit: BoxFit.cover,),
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('벚꽃나무'),
                        Text('19.04.01'),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(4.0)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network('https://cdn.pixabay.com/photo/2019/04/11/22/16/sycamore-4120789_960_720.jpg',fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('플라타너스'),
                          Text('19.05.15'),
                        ],
                      ),
                  ],)
                ],),
                Column(children: <Widget>[
                  Text('나무활동가 수료증', style: TextStyle(fontSize: 20),),
                  Padding(padding: EdgeInsets.all(4.0)),
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/qr.jpg')
                  ),
                ],)
              ],),
              Padding(padding: EdgeInsets.all(16.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('나의 활동기록', style: TextStyle(fontSize: 20.0),),
                  Padding(padding: EdgeInsets.all(4.0)),
                  RaisedButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: Text('19.04.11 봉은사로 1길 반려목 사진 DB구축', style: TextStyle(fontSize: 16.0),),
                    onPressed: (){},
                  ),
                  RaisedButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: Text('19.04.11 도곡로 7길 반려목 DB구축', style: TextStyle(fontSize: 16.0),),
                    onPressed: (){},
                  ),
                  RaisedButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: Text('19.04.11 도곡로 7길 반려목 DB구축', style: TextStyle(fontSize: 16.0),),
                    onPressed: (){},
                  ),
                  RaisedButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: Text('19.04.11 도곡로 7길 반려목 DB구축', style: TextStyle(fontSize: 16.0),),
                    onPressed: (){},
                  ),
                  RaisedButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: Text('19.04.11 도곡로 7길 반려목 DB구축', style: TextStyle(fontSize: 16.0),),
                    onPressed: (){},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
