import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {

  // ignore: prefer_typing_uninitialized_variables
  var email;

  HomePage(String this.email, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        leading: Image.asset('assets/logo.png'),
        leadingWidth: 100,
        backgroundColor: Colors.white,
        elevation: 0,

        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(
            height: 40,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Welcome, Uzwal', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),

          const SizedBox(
            height: 5,
          ),


          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Welcome to the Nepal Police App. Your comprehensive tool for modern policing.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, height: 1.3),),
          ),

          const SizedBox(
            height: 50,
          ),


          //top row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DashboardItem(imageLink: 'assets/covid.png', itemText: 'Report COVID 19', colorForSpecific: Colors.red,),

              DashboardItem(imageLink: 'assets/siren.png', itemText: 'Report Incident'),


              DashboardItem(imageLink: 'assets/phone-book.png', itemText: 'Emergency Num'),

            ],
          ),




          const SizedBox(
            height: 50,
          ),




          //mid row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DashboardItem(imageLink: 'assets/news.png', itemText: 'News'),


              DashboardItem(imageLink: 'assets/notice.png', itemText: 'Notice', colorForSpecific: Colors.red,),

              DashboardItem(imageLink: 'assets/fm.png', itemText: 'FM'),
            ],
          ),




          const SizedBox(
            height: 50,
          ),



          //bottom row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              DashboardItem(imageLink: 'assets/station.png', itemText: 'Stations Nearby'),

              DashboardItem(imageLink: 'assets/complaint.png', itemText: 'e-Complaint'),


              DashboardItem(imageLink: 'assets/report.png', itemText: 'Clearance Report', colorForSpecific: Colors.red,),

            ],
          ),




          const SizedBox(
            height: 60,
          ),



          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40)
              ),
              color: Colors.indigo.shade900,
            ),
            height: 100,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, color: Colors.white,),
                      Text('Home', style: TextStyle(color: Colors.white),),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.remove_red_eye, color: Colors.white, size: 40,),
                      Text('Public Eye', style: TextStyle(color: Colors.white, fontSize: 18),),
                    ],
                  ),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, color: Colors.white,),
                      Text('Settings', style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DashboardItem extends StatelessWidget {

  // ignore: prefer_typing_uninitialized_variables
  var imageLink;
  // ignore: prefer_typing_uninitialized_variables
  var colorForSpecific;
  // ignore: prefer_typing_uninitialized_variables
  var itemText;
  DashboardItem({super.key, required this.imageLink, required this.itemText, this.colorForSpecific,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(imageLink, scale: 2.8, color: colorForSpecific,),
          const SizedBox(height: 25,),
          Text(itemText, style: TextStyle(color: colorForSpecific),),
        ],
      ),
    );
  }
}