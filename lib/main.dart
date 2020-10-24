import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gridview Home',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Gridview Home', style: TextStyle(color: Colors.black),
          ),
        ),

        body: _GridHomePage(),
      ),
    );
  }
}

class _GridHomePage extends StatefulWidget {
  _GridHomePageState createState () => _GridHomePageState();
}

class _GridHomePageState extends State <_GridHomePage>{
  List<int> itemList = List();

  void initState (){
    super.initState();
    for (int i =1; i<21; i++){
      itemList.add(i);
    }
  }

  Widget build (BuildContext context){
    return Container(
      child: GridView.builder(
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),

        itemBuilder: (BuildContext context, int index){
          return Card(
            color: Colors.blueAccent,
            child: Container(
              padding: EdgeInsets.all(4),
              child: Center(
                child: Text(
                  itemList[index].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}