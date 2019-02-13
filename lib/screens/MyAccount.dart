import 'package:flutter/material.dart';
import 'package:flutter_app/drawer/navigationDrawer.dart';
class MyAccount extends StatefulWidget{
  @override
  MyAccountState createState() {
    return new MyAccountState();
  }
}

class MyAccountState extends State<MyAccount> {
  String value;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: (){
        Navigator.pop(context);
      },

      child: Scaffold(
        resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text("My Account"),
      ),
      drawer: NavigationDrawer(),
        body: Column(
        children: <Widget>[
          Expanded(
            child:ListView(
              children:<Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(labelText:"Tax Payer's Name",
                            border:OutlineInputBorder(gapPadding: 2.0)),
                        keyboardType:TextInputType.text,

                        maxLength:10,
                        onChanged: (String text){
                          setState(() {

                          });
                        },
                        onSubmitted: (String text){

                        },
                      ),

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 160.0,
                          child: TextField(
                            decoration: InputDecoration(labelText:"Enter Income",border:OutlineInputBorder(gapPadding: 1.0)),
                            keyboardType:TextInputType.number,

                            maxLength:10,
                            onChanged: (String text){
                              setState(() {
                                value= text;
                              });
                            },
                            onSubmitted: (String text){
                              setState(() {
                                value= (text);                          });
                            },
                          ),
                        ),
                        Container(
                          width:160.0,
                          child: TextField(
                            decoration: InputDecoration(labelText:"For Financial Year",border:OutlineInputBorder(gapPadding: 2.0)),
                            keyboardType:TextInputType.number,

                            maxLength:10,
                            onChanged: (String text){
                              setState(() {
                              });
                            },
                            onSubmitted: (String text){

                            },
                          ),
                        )

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              decoration: InputDecoration(labelText: "Your total Investments",
                                border: OutlineInputBorder(),
                              ),
                              keyboardType:TextInputType.number,

                            )
                        ),
                        Container(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              decoration: InputDecoration(labelText: "Your total Tax",
                                border: OutlineInputBorder(),
                              ),


                            )
                        )
                      ],
                    )
                  ],
                ),
              ],
        )

          ),


        ],
        ),
      ),
    );
  }
}