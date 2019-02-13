import 'package:flutter/material.dart';
import 'package:flutter_app/screens/MyAccount.dart';
import 'package:fluttertoast/fluttertoast.dart';


class NavigationDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //This is a drawer widget which will be used everywhere in the application
    //No need to recreate it all over again, Just refer this widget
    return  Drawer(

        child:Column(

          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                    image: AssetImage("images/drawerbgm.jpg")
                ),
                Padding(
                  padding: EdgeInsets.only( top: 30.0,left:16.0),
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('images/prb.jpg'),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 180.0,left: 16.0) ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Pranay Bhalerao",style: TextStyle(
                          fontSize:16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )),
                      Text("pranaybhalerao@gmail.com",style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white
                      ),)

                    ],
                  ),
                ),
              ],
            ),
            Expanded(child:
            ListView(

              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_balance, color: Colors.greenAccent),
                  title: Text("My Balance"),
                  onTap: (){
                    Fluttertoast.showToast(msg: "Your Balance is not yet ready! We are working on it",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 12.0
                    ); //Toast
                    Navigator.of(context).pop();
                  },
                ),

                ListTile(
                  leading: Icon(Icons.assignment_ind,color: Colors.greenAccent),
                  title: Text("My Account"),
                    onTap: (){
                      Navigator.of(context).pop();
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyAccount()),
                    );

                    },
                ),
              ],
            )
            )
          ],

        ),
      );
  }

}