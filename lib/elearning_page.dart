import 'package:flutter/material.dart';

class ELearningPage extends StatefulWidget {
  @override
  _ELearningPageState createState() => _ELearningPageState();
}

class _ELearningPageState extends State<ELearningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('나무 활동가 이러닝 강좌', style: TextStyle(fontSize: 20.0),),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
      ],
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
      centerTitle: true,
      backgroundColor: Colors.teal,
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
