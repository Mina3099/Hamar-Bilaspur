import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'जाति प्रमाण पत्र',
  'आय प्रमाण पत्र',
  'निवास प्रमाण पत्र',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
  'जाति प्रमाण पत्र' : (context) => DetailScreen1(),
    'आय प्रमाण पत्र' : (context) => DetailScreen2(),
    'निवास प्रमाण पत्र': (context) => DetailScreen3(),

    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('राजस्व विभाग'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'जाति प्रमाण पत्र',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'आम जनता को उनके आवेदन पर प्रमाण पत्र जारी कर सीधे लाभ पहुंचाना|',
    'योजना/जन कल्याणकारी की पात्रता': 'अनुसूचित जाति/जनजाति एवं अन्य पिछड़ा वर्ग के लोगों को प्रमाण पत्र जारी करना|',
    'आवेदन कैसे करें': 'निकटतम लोक सेवा केन्द्र या कॉमन सर्विस सेन्टर के माध्यम से ऑनलाईन आवेदन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'अन्य पिछडा वर्ग हेतु दस्तावेज -\n'
   '1 शपथ पत्र\n'
  '2- पासपोर्ट साईज फोटो \n'
  '3- अंकसूची - 5वीं, 8वीं \n'
  '4- आधार कार्ड / वोटर आई डी कॉर्ड\n'
  '5- पटवारी प्रतिवेदन \n'
  '6- राशन कार्ड या बी-1 \n'
  '7- वंशवृक्ष\n'
  '8-पिता का दाखिल खारिज 9- अधिकार अभिलेख \n'
  'अजा/अजजा प्रमाण पत्र हेतु दस्तावेज -\n'
  '1 शपथ पत्र\n'
  '2- पासपोर्ट साईज फोटो \n'
  '3- अंकसूची - 5वीं, 8वीं\n'
  '4- आधार कार्ड / वोटर आई डी कॉर्ड\n '
  '5- पटवारी प्रतिवेदन\n'
  '6- राशन कार्ड या बी-1\n'
  '7- वंशवृक्ष\n'
  '8-पिता का दाखिल खारिज\n'
  '9- अधिकार अभिलेख\n'
  '10- मिसल बंदोबस्त या 1950 के पूर्व का दस्तावेज',
    'कैसे और कहाँ से क्या करना है।': 'निकटतम लोक सेवा केन्द्र या कॉमन सर्विस सेन्टर के माध्यम से किये गये ऑनलाईन आवेदन अनुमोदन पश्चात ऑनलाईन प्राप्त किया जा सकता है।',
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
        title: Text('जाति प्रमाण पत्र'),backgroundColor: Color(0xFF49BAEE),
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
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'आय प्रमाण पत्र',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'आम जनता को उनके आवेदन पर प्रमाण पत्र जारी कर सीधे लाभ पहुंचाना|',
    'योजना/जन कल्याणकारी की पात्रता': 'सभी जाति वर्ग के लोगों को प्रमाण पत्र जारी करना |',
    'आवेदन कैसे करें': 'निकटतम लोक सेवा केन्द्र या कॉमन सर्विस सेन्टर के माध्यम से ऑनलाईन आवेदन किया जा सकता है।',
    'आवश्यक दस्तावेज': '1 शपथ पत्र\n'
  '2- पटवारी प्रतिवेदन\n'
  '3- अंकसूची 5वीं, 8वीं \n'
  '4- आधार कार्ड / वोटर आई डी कॉर्ड\n'
  '5- राशन कार्ड या बी-1',
    'कैसे और कहाँ से क्या करना है।': 'निकटतम लोक सेवा केन्द्र या कॉमन सर्विस सेन्टर के माध्यम से किये गये ऑनलाईन आवेदन अनुमोदन पश्चात ऑनलाईन प्राप्त किया जा सकता है।',
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
        title: Text('आय प्रमाण पत्र'),backgroundColor: Color(0xFF49BAEE),
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
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'निवास प्रमाण पत्र',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'आम जनता को उनके आवेदन पर प्रमाण पत्र जारी कर सीधे लाभ पहुंचाना|',
    'योजना/जन कल्याणकारी की पात्रता': 'सभी जाति वर्ग के लोगों को प्रमाण पत्र जारी करना |',
    'आवेदन कैसे करें': 'निकटतम लोक सेवा केन्द्र या कॉमन सर्विस सेन्टर के माध्यम से ऑनलाईन आवेदन किया जा सकता है।',
    'आवश्यक दस्तावेज': '1 शपथ पत्र\n'
        '2- पटवारी प्रतिवेदन\n'
        '3- अंकसूची 5वीं, 8वीं \n'
        '4- आधार कार्ड / वोटर आई डी कॉर्ड\n'
        '5- राशन कार्ड या बी-1',
    'कैसे और कहाँ से क्या करना है।': 'निकटतम लोक सेवा केन्द्र या कॉमन सर्विस सेन्टर के माध्यम से किये गये ऑनलाईन आवेदन अनुमोदन पश्चात ऑनलाईन प्राप्त किया जा सकता है।',
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
        title: Text('निवास प्रमाण पत्र'),backgroundColor: Color(0xFF49BAEE),
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