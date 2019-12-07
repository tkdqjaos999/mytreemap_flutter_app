import 'package:flutter/material.dart';

class ELearningPage extends StatefulWidget {
  final PageController _pageController;

  ELearningPage(this._pageController);

  @override
  _ELearningPageState createState() => _ELearningPageState();
}

class _ELearningPageState extends State<ELearningPage> {
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
      title: Text('나무 활동가 이러닝 강좌', style: TextStyle(fontSize: 20.0),),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
      ],
      centerTitle: true,
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
      backgroundColor: Colors.black12,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              childAspectRatio: 1.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return _buildListItem(context, index);
            },
          itemCount: 8,
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Hero(
        tag: (){},
        child: Material(
          color: Colors.white,
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4.0),
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdqnCgK34cLiZChyJHo_wi7L1e3nBDBcJSHh8XCnAJXhOnhjRb&s', fit: BoxFit.fitWidth,)),
                Text('기초 나무 상식', style: TextStyle(fontSize: 12.0),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('(12/12)분', style: TextStyle(fontSize: 12.0),),
                    SizedBox(
                      width: 60,
                      height: 20,
                      child: RaisedButton(
                          child: Text('듣기', style: TextStyle(fontSize: 12.0),),
                          onPressed: (){}
                      ),
                    ),
                ],),
                Padding(padding: EdgeInsets.only(bottom: 4.0),),
              ],
            ),
            onTap: (){},
          ),
        )
    );
  }
}
