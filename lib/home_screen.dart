import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/Collector_desk.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/aadivasevikas.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/antvyasai.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/bharti.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/bilaspur.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/cssda.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/jan_shikayat.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/jila_aspatal.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/jila_prashasan.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/jilapanchayat.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/khaad.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/krishi.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/kshram.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/mahilabaalvikas.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/nic.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/parivahan.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/paryatak%20sthal.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/police_vibhag.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/rajasvya.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/samajkalyan.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/shiksha.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/swastha.dart';
import 'package:mor_bilaspur/pages%20from%20home%20page/varinjyatathaudhoyag.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  // List of image paths and their corresponding titles
  final List<Map<String, dynamic>> items = [
    {'image': 'assets/education.png', 'title': 'शिक्षा', 'route': shiksha()},
    {'image': 'assets/foodsupplies.png', 'title': 'खाद्य', 'route': khaad()},
    {'image': 'assets/antravyavsayi.png', 'title': 'अंतर्व्यावसायी', 'route': antvyasai()},
    {'image': 'assets/health.png', 'title': 'स्वास्थ्य', 'route': swastha()},
    {'image': 'assets/agriculture.png', 'title': 'कृषि', 'route': krishi()},
    {'image': 'assets/jila.png', 'title': 'जिला पंचायत', 'route': jilapanchayat()},
    {'image': 'assets/labour.png', 'title': 'श्रम', 'route': kshram()},
    {'image': 'assets/cssda.png', 'title': 'सीएसएसडीए', 'route': cssda()},
    {'image': 'assets/samajkalyan.png', 'title': 'समाज कल्याण', 'route': samajkalyan()},
    {'image': 'assets/revenue.png', 'title': 'राजस्व', 'route': rajasvya()},
    {'image': 'assets/adivasilogo.png', 'title': 'आदिवासी विकास', 'route': aadivasevikas()},
    {'image': 'assets/mahila.png', 'title': 'महिला बाल विकास', 'route': mahilabaalvikas()},
    {'image': 'assets/empdept.png', 'title': 'जिला पंचायत', 'route': jilapanchayat()},
    {'image': 'assets/diclogo.png', 'title': 'वाणिज्य तथा उद्योग', 'route': varinjyatathaudhoyag()},
    {'image': 'assets/transportlogo.png', 'title': 'परिवहन', 'route': parivahan()},
    {'image': 'assets/nic.png', 'title': 'एनआईसी', 'route': nic()},
  ];

  Future<void> _launchURL(String url) async {
    if (!await launch(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'हमर बिलासपुर',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Center the title in the AppBar
        backgroundColor: Colors.lightBlue,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        // Set the AppBar color to light blue
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
              'जिला प्रशासन बिलासपुर',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('कलेक्टर डेस्क'),
              onTap: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => collectorsDesk()),
              )
              },
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_calendar_rounded),
              title: Text('जिला अधिकारी सूची'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('जन शिकायत'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => jan_shikayat()),
                )
              }
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('जिला प्रशासन'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => jila_prashasan())
                )
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('बिलासपुर के बारे में'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bilaspur()),
                )
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('पुलिस विभाग'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> police_vibhag())
                )
              }
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('जिला अस्पताल'),
              onTap: () =>
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => jila_aspatal()),
                )
              }//_launchURL('BF%E0%A4%95%E0%A4%BE/%E0%A4%B8%E0%A4%BE%E0%A4%B0%E0%A5%8D%E0%A4%B5%E0%A4%9C%E0%A4%A8%E0%A4%BF%E0%A4%95-%E0%A4%89%E0%A4%AA%E0%A4%AF%E0%A5%8B%E0%A4%97%E0%A4%BF%E0%A4%A4%E0%A4%BE%E0%A4%8F%E0%A4%81/')
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 images per row
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  childAspectRatio: 1 / 1, // Square aspect ratio
                ),
                itemCount: items.length, // Total number of images
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the corresponding route when an image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => items[index]['route']),
                      );
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white, // White background
                              borderRadius: BorderRadius.circular(16.0), // Curved edges
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                items[index]['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          items[index]['title']!,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Launch the URL when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bharti()),
                    );
                    //_launchURL('https://bilaspur.gov.in/en/notice_category/recruitment/'); // Replace with the actual URL
                  },
                  icon:Image.asset('assets/recruitment.png',height: 35,width: 35),
                  label: Text('भर्ती',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[500]
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => paryatak()),
                    );
                  },
                  icon:Image.asset('assets/tourism.png',height: 35,width: 35),
                  label: Text('पर्यटक स्थल',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[500],


                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}