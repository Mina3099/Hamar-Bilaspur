import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'शिक्षार्थी लायसेंस का जारी किया जाना',
  '(अ) वाहन चालन अनुज्ञप्तियों का निर्गमन',
  '(ब) वाहन चालन अनुज्ञप्तियों का नवीनीकरण',
  'अंतर्राष्ट्रीय चालक अनुज्ञप्ति का निर्गमन',
  'वाहनों का अस्थायी पंजीयन',
  'गैर परिवहन एवं परिवहन वाहनों का पंजीयन',
  'पंजीयन प्रमाण पत्र का नवीनीकरण',
  '(अ) अवक्रय करार आदि का पृष्ठांकन',
  '(ब) अवक्रय करार आदि का निरस्तीकरण',
  'अनापत्ति प्रमाण पत्र जारी किया जाना',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
  'शिक्षार्थी लायसेंस का जारी किया जाना' : (context) => DetailScreen1(),
  '(अ) वाहन चालन अनुज्ञप्तियों का निर्गमन' : (context) => DetailScreen2(),
  '(ब) वाहन चालन अनुज्ञप्तियों का नवीनीकरण' : (context) => DetailScreen3(),
  'अंतर्राष्ट्रीय चालक अनुज्ञप्ति का निर्गमन' : (context) => DetailScreen4(),
  'वाहनों का अस्थायी पंजीयन'  : (context) => DetailScreen5(),
  'गैर परिवहन एवं परिवहन वाहनों का पंजीयन'   : (context) => DetailScreen6(),
  'पंजीयन प्रमाण पत्र का नवीनीकरण'   : (context) => DetailScreen7(),
  '(अ) अवक्रय करार आदि का पृष्ठांकन'  : (context) => DetailScreen8(),
  '(ब) अवक्रय करार आदि का निरस्तीकरण'   : (context) => DetailScreen9(),
    'अनापत्ति प्रमाण पत्र जारी किया जाना' : (context) => DetailScreen10(),
    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),
        backgroundColor: Color(0xFF49BAEE),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: itemScreens[items[index]]!),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.lightBlue[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  items[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
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


// DetailScreen1
class DetailScreen1 extends StatefulWidget {


  @override
  _DetailScreen1 createState() => _DetailScreen1();
}

class _DetailScreen1 extends State<DetailScreen1> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'शिक्षार्थी लायसेंस का जारी किया जाना',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक्सीडेंट से बचाव / सड़क सुरक्षा',
    'योजना/जन कल्याणकारी की पात्रता': 'टेस्ट में उत्तीर्ण',
    'आवेदन कैसे करें': 'Parivahan.gov.in',
    'आवश्यक दस्तावेज': '1. फार्म 2 एक प्रति\n'
  '2. पासपोर्ट साईज के 2 फोटो\n'
  '3 पता पहचान पत्र\n'
  '4. आयु प्रमाण पत्र\n'
  '5. आयु 40 वर्ष से अधिक होने पर मेडिकल प्रमाण पत्र फार्म ए-16. मोटरयान नियम 1989 के नियम 32 के अनुसार',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen2
class DetailScreen2 extends StatefulWidget {


  @override
  _DetailScreen2 createState() => _DetailScreen2();
}

class _DetailScreen2 extends State<DetailScreen2> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'वाहन चालन अनुज्ञप्तियों का निर्गमन',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक्सीडेंट से बचाव / सड़क सुरक्षा',
    'योजना/जन कल्याणकारी की पात्रता': 'टेस्ट में उत्तीर्ण',
    'आवश्यक दस्तावेज': '1. फार्म 2 एक प्रति\n'
        '2. पासपोर्ट साईज के 2 फोटो\n'
        '3 पता पहचान पत्र\n'
        '4. आयु प्रमाण पत्र\n'
        '5. आयु 40 वर्ष से अधिक होने पर मेडिकल प्रमाण पत्र फार्म ए-16. मोटरयान नियम 1989 के नियम 32 के अनुसार',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };


  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen3
class DetailScreen3 extends StatefulWidget {


  @override
  _DetailScreen3 createState() => _DetailScreen3();
}

class _DetailScreen3 extends State<DetailScreen3> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'वाहन चालन अनुज्ञप्तियों का नवीनीकरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक्सीडेंट से बचाव / सड़क सुरक्षा',
    'योजना/जन कल्याणकारी की पात्रता': 'टेस्ट में उत्तीर्ण',
    'आवश्यक दस्तावेज': '1. फार्म 2 एक प्रति\n'
        '2. पासपोर्ट साईज के 2 फोटो\n'
        '3 पता पहचान पत्र\n'
        '4. आयु प्रमाण पत्र\n'
        '5. आयु 40 वर्ष से अधिक होने पर मेडिकल प्रमाण पत्र फार्म ए-16. मोटरयान नियम 1989 के नियम 32 के अनुसार',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',

  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen4
class DetailScreen4 extends StatefulWidget {


  @override
  _DetailScreen4 createState() => _DetailScreen4();
}

class _DetailScreen4 extends State<DetailScreen4> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'वअंतर्राष्ट्रीय चालक अनुज्ञप्ति का निर्गमन',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक्सीडेंट से बचाव / सड़क सुरक्षा',
    'योजना/जन कल्याणकारी की पात्रता': 'लायसेंस धारक',
    'आवश्यक दस्तावेज': '1. फार्म 2 एक प्रति\n'
        '2. पासपोर्ट साईज के 2 फोटो\n'
        '3 पता पहचान पत्र\n'
        '4. आयु प्रमाण पत्र\n'
        '5. आयु 40 वर्ष से अधिक होने पर मेडिकल प्रमाण पत्र फार्म ए-16. मोटरयान नियम 1989 के नियम 32 के अनुसार',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen5
class DetailScreen5 extends StatefulWidget {


  @override
  _DetailScreen5 createState() => _DetailScreen5();
}

class _DetailScreen5 extends State<DetailScreen5> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'वाहनों का अस्थायी पंजीयन',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'मोटरयान अधिनियम का पालन',
    'योजना/जन कल्याणकारी की पात्रता': 'वाहन स्वामी',
    'आवेदन कैसे करें': 'Parivahan.gov.in',
    'आवश्यक दस्तावेज': '1. फार्म 20 (सी. जी. एम. व्ही.आर) सी. आर. टेम. ए.\n'
  '2. फार्म 21 एक प्रतिलिपि \n'
  '3. फार्म 22 एक प्रतिलिपि \n'
  '4. वाहन खरीदी का बिल \n'
  '5. बीमा प्रमाण पत्र (वैध)\n'
  '6. पता पहचान पत्र\n'
  '7. जमा फीस व कर का रसीद \n'
  '8. मोटरयान नियम 1989 के नियम 81 के अनुसार \n'
  '9. विलम्ब होने पर नियमानुसार विलंब शुल्क देय होगा।',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen6
class DetailScreen6 extends StatefulWidget {


  @override
  _DetailScreen6 createState() => _DetailScreen6();
}

class _DetailScreen6 extends State<DetailScreen6> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'गैर परिवहन एवं परिवहन वाहनों का पंजीयन',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'मोटरयान अधिनियम का पालन',
    'योजना/जन कल्याणकारी की पात्रता': 'वाहन स्वामी',
    'आवेदन कैसे करें': 'Parivahan.gov.in',
    'आवश्यक दस्तावेज': '1. फार्म 20 एक प्रति \n'
  '2. फार्म 21 एक प्रति \n'
  '3. फार्म 22 एक प्रति \n'
  '4. वाहन खरीदी का बिल \n'
  '5. बीमा प्रमाण पत्र (वैध) \n'
  '6. पता पहचान पत्र\n'
  '7. जमा फीस व कर का रसीद\n'
  ' 8. वाहन फाईनेंस पर हो तो फाईनेंसर की सहमति \n'
  '9. एग्रीकल्चर टैक्टर वाहन होने की दषा में वाहन स्वामी की जमीन की पर्ची \n'
  '10 परिवहन यान होने की दषा में जी.पी.एस., स्पीड गर्वनर, पैनिक बटन एवं वाहन का भौतिक सत्यापन इत्यादि \n'
  '11. मोटरयान नियम 1989 के नियम 81 के अनुसार '
        '12. विलम्ब होने पर नियमानुसार विलंब शुल्क देय होगा।',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen7
class DetailScreen7 extends StatefulWidget {


  @override
  _DetailScreen7 createState() => _DetailScreen7();
}

class _DetailScreen7 extends State<DetailScreen7> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीयन प्रमाण पत्र का नवीनीकरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'मोटरयान अधिनियम का पालन',
    'योजना/जन कल्याणकारी की पात्रता': 'वाहन स्वामी',
    'आवेदन कैसे करें': 'Parivahan.gov.in',
    'आवश्यक दस्तावेज': '1. फार्म 25 एक प्रति \n'
  '2. बीमा प्रमाण पत्र (वैध)\n'
  '3. मूल आर. सी. बुक (वैध)\n'
  '4. प्रदूषण जॉच प्रमाण पत्र \n'
  '5 वाहन का भौतिक सत्यापन\n'
  '6. मोटरयान नियम 1989 के नियम 81 के अनुसार\n'
  '7. विलम्ब होने पर नियमानुसार विलंब शुल्क देय होगा ।',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen8
class DetailScreen8 extends StatefulWidget {


  @override
  _DetailScreen8 createState() => _DetailScreen8();
}

class _DetailScreen8 extends State<DetailScreen8> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '(अ) अवक्रय करार आदि का पृष्ठांकन',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'मोटरयान अधिनियम का पालन',
    'योजना/जन कल्याणकारी की पात्रता': 'वाहन स्वामी',
    'आवेदन कैसे करें': 'Parivahan.gov.in',
    'आवश्यक दस्तावेज': '1. फार्म 34 दो प्रति \n'
  '2. बीमा प्रमाण पत्र (वैध)\n'
  '3. मूल आर. सी. बुक (वैध)\n'
  '4. परिवहन यान की दषा में फिटनेस, परमिट व कर प्रमाण पत्र। \n'
  '5. मोटरयान नियम 1989 के नियम 81 के अनुसार\n',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen9
class DetailScreen9 extends StatefulWidget {


  @override
  _DetailScreen9 createState() => _DetailScreen9();
}

class _DetailScreen9 extends State<DetailScreen9> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': ' अवक्रय करार आदि का पृष्ठांकन',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'मोटरयान अधिनियम का पालन',
    'योजना/जन कल्याणकारी की पात्रता': 'वाहन स्वामी',
    'आवेदन कैसे करें': 'Parivahan.gov.in',
    'आवश्यक दस्तावेज':'1. फार्म 2 एक प्रति \n'
        '2. पासपोर्ट साईज के 2 फोटो\n'
        '3 पता पहचान पत्र \n'
        '4. आयु प्रमाण पत्र\n'
        '5. आयु 40 वर्ष से अधिक होने पर मेडिकल प्रमाण पत्र फार्म ए-16 मोटरयान नियम 1989 के नियम 32 के अनुसार',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// DetailScreen10
class DetailScreen10 extends StatefulWidget {


  @override
  _DetailScreen10 createState() => _DetailScreen10();
}

class _DetailScreen10 extends State<DetailScreen10> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': ' अनापत्ति प्रमाण पत्र जारी किया जाना',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'मोटरयान अधिनियम का पालन',
    'योजना/जन कल्याणकारी की पात्रता': 'वाहन स्वामी',
    'आवेदन कैसे करें': 'Parivahan.gov.in',
    'आवश्यक दस्तावेज': '1. फार्म 28 तीन प्रति (फायनेंस होने पर चार प्रति)\n'
  '2. बीमा प्रमाण पत्र (वैध)\n'
  '3. मूल आर. सी. बुक (वैध)\n'
  '4. परिवहन यान की दषा में फिटनेस, परमिट व कर प्रमाण पत्र।\n'
  '5. एन. सी. आर. बी. रिपोर्ट \n'
  '6. मोटरयान नियम 1989 के नियम 81 के अनुसार',
    'कैसे और कहाँ से क्या करना है।': 'वेबसाईट पर आवेदन कर कार्यालय में उपस्थित होना ।',
  };

  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = (selectedItem == item ? null : item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('परिवहन विभाग'),backgroundColor: Color(0xFF49BAEE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onItemTap(item),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,  // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedItem == item)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      itemDescriptions[item]!,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}