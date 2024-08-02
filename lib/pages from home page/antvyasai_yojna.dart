import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'अन्य पिछड़ा वर्ग',
  'अनुसूचित जनजाति',
  'अनुसूचित जाति',
  'अंत्योदय',
  'मिनी साहिद',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'अन्य पिछड़ा वर्ग': (context) => DetailScreen1(),
    'अनुसूचित जनजाति': (context) => DetailScreen2(),
    'अनुसूचित जाति': (context) => DetailScreen3(),
    'अंत्योदय': (context) => DetailScreen4(),
    'मिनी साहिद': (context) => DetailScreen5(),
    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('अंतव्यवसायी विकास विभाग जिला'),backgroundColor: Color(0xFF49BAEE),
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
    'अन्य पिछडा वर्ग',
    'अल्पसंख्यक वर्ग',
    'सफाई कामगार वर्ग',

  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'अन्य पिछडा वर्ग': (context) => DetailScreen1a(),
    'अल्पसंख्यक वर्ग': (context) => DetailScreen1b(),
    'सफाई कामगार वर्ग': (context) => DetailScreen1c(),

    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('अन्य पिछडा वर्ग'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen1b
class DetailScreen1b extends StatefulWidget {


  @override
  _DetailScreen1b createState() => _DetailScreen1b();
}

class _DetailScreen1b extends State<DetailScreen1b> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'टर्म लोन, माइक्रो लोन ( 1.00 लाख)|',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'राष्ट्रीय निगमों की सहायता से अन्य पिछडा वर्ग/अल्पसंख्यक एवं सफाई कामगार वर्ग के बेरोजगार युवक-युवतियों को कम ब्याज दर पर आर्थिक सहायता उपलब्ध कराया जाकर उन्हे स्वरोजगार स्थापित कराकर उनका जीवन स्तर उंचा उठाना योजना को उद्देश्य है।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक अन्य पिछडा वर्ग/अल्पसंख्यक वर्ग/सफाई कामगार वर्ग का हो ।\n'
  '2. आवेदक जिले का निवासी होना चाहिए।\n'
  '3. आवेदक की उम्र 18 से 50 वर्ष के बीच का होना चाहिए।\n'
  '4. अनुबंध पत्र निष्पादन एवं जमानतदार से संबंधित अनुबंध के लिए सहमत हो ।\n'
  '5. शासकीय योजना में पूर्व का ऋण बकाया न हो। (संबंधित विभाग/ बैंक द्वारा प्रदत्त अनापत्ति प्रमाण पत्र या शपथ पत्र)',
    'आवेदन कैसे करें': 'आवेदक को स्वयं ऋण हेतु निःशुल्क निर्धारित आवेदन पत्र जिले के जिला अंत्यावसायी सहकारी विकास समिति कार्यालय से प्राप्त कर आवश्यक दस्तावेज सहित जमा किया जाता है।',
    'आवश्यक दस्तावेज': '1. आवेदक को जाति / आय / निवास प्रमाण पत्र सक्षम अधिकारी का प्रस्तुत करना होगा।\n'
  '2. आमदनी ग्रामीण क्षेत्र एवं शहरी क्षेत्र में 300000/- रू. से अधिक नही होना चाहिए।\n'
  '3. शैक्षणिक योग्यता, राशन कार्ड, आधार कार्ड, मतदाता परिचय पत्र संलग्न करना होगा।\n'
  '4. आवेदक द्वारा पूर्व में किसी भी संस्था से प्राप्त ऋण का बकायादार न होने का शपथ पत्र या नोड्यूज देना अनिवार्य है।\n'
  '5. बंधक विलेख, अनुबंध पत्र, गारंटी करार एवं शपथ पत्र ।\n'
  '6. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी।',
    'कैसे और कहाँ से क्या करना है।': 'लक्ष्य आधारित योजनाएं है। लक्ष्य प्राप्त होने पर आवेदन पत्र आमंत्रित किए जाते है।',
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
        title: Text('अल्पसंख्यक वर्ग'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen1a
class DetailScreen1a extends StatefulWidget {


  @override
  _DetailScreen1a createState() => _DetailScreen1a();
}

class _DetailScreen1a extends State<DetailScreen1a> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '1. टर्म लोन / व्यक्तिमुलक (1.00 लाख)\n'
  '2. न्यू स्वर्णिमा (1.00 लाख)\n'
  '3. माइक्रो फाईनेस (0.50 लाख)\n',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'राष्ट्रीय निगमों की सहायता से अन्य पिछडा वर्ग/अल्पसंख्यक एवं सफाई कामगार वर्ग के बेरोजगार युवक-युवतियों को कम ब्याज दर पर आर्थिक सहायता उपलब्ध कराया जाकर उन्हे स्वरोजगार स्थापित कराकर उनका जीवन स्तर उंचा उठाना योजना को उद्देश्य है।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक अन्य पिछडा वर्ग/अल्पसंख्यक वर्ग/सफाई कामगार वर्ग का हो ।\n'

  '2. आवेदक जिले का निवासी होना चाहिए।\n'
  '3. आवेदक की उम्र 18 से 50 वर्ष के बीच का होना चाहिए।\n'
  '4. अनुबंध पत्र निष्पादन एवं जमानतदार से संबंधित अनुबंध के लिए सहमत हो ।\n'
  '5. शासकीय योजना में पूर्व का ऋण बकाया न हो। (संबंधित विभाग/ बैंक द्वारा प्रदत्त अनापत्ति प्रमाण पत्र या शपथ पत्र)\n',
    'आवेदन कैसे करें': 'आवेदक को स्वयं ऋण हेतु निःशुल्क निर्धारित आवेदन पत्र जिले के जिला अंत्यावसायी सहकारी विकास समिति कार्यालय से प्राप्त कर आवश्यक दस्तावेज सहित जमा किया जाता है।',
    'आवश्यक दस्तावेज': '1. आवेदक को जाति / आय / निवास प्रमाण पत्र सक्षम अधिकारी का प्रस्तुत करना होगा।\n'
  '2. आमदनी ग्रामीण क्षेत्र एवं शहरी क्षेत्र में 300000/- रू. से अधिक नही होना चाहिए।\n'
  '3. शैक्षणिक योग्यता, राशन कार्ड, आधार कार्ड, मतदाता परिचय पत्र संलग्न करना होगा।\n'
  '4. आवेदक द्वारा पूर्व में किसी भी संस्था से प्राप्त ऋण का बकायादार न होने का शपथ पत्र या नोड्यूज देना अनिवार्य है।\n'
  '5. बंधक विलेख, अनुबंध पत्र, गारंटी करार एवं शपथ पत्र ।\n'
  '6. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी।\n',
    'कैसे और कहाँ से क्या करना है।': 'लक्ष्य आधारित योजनाएं है। लक्ष्य प्राप्त होने पर आवेदन पत्र आमंत्रित किए जाते है।',
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
        title: Text('अन्य पिछडा वर्ग'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1c
class DetailScreen1c extends StatefulWidget {


  @override
  _DetailScreen1c createState() => _DetailScreen1c();
}

class _DetailScreen1c extends State<DetailScreen1c> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '1. महिला अधिकारिता (1.00 लाख)\n'
  '2. स्कीमअप टू (1.00 लाख)',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'राष्ट्रीय निगमों की सहायता से अन्य पिछडा वर्ग/अल्पसंख्यक एवं सफाई कामगार वर्ग के बेरोजगार युवक-युवतियों को कम ब्याज दर पर आर्थिक सहायता उपलब्ध कराया जाकर उन्हे स्वरोजगार स्थापित कराकर उनका जीवन स्तर उंचा उठाना योजना को उद्देश्य है।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक अन्य पिछडा वर्ग / अल्पसंख्यक वर्ग/सफाई कामगार वर्ग का हो ।\n'
  '2. आवेदक जिले का निवासी होना चाहिए।\n'
  '3. आवेदक की उम्र 18 से 50 वर्ष के बीच का होना चाहिए।\n'
  '4. अनुबंध पत्र निष्पादन एवं जमानतदार से संबंधित अनुबंध के लिए सहमत हो ।\n'
  '5. शासकीय योजना में पूर्व का ऋण बकाया न हो। (संबंधित विभाग/ बैंक द्वारा प्रदत्त अनापत्ति प्रमाण पत्र या शपथ पत्र)',
    'आवेदन कैसे करें': 'आवेदक को स्वयं ऋण हेतु निःशुल्क निर्धारित आवेदन पत्र जिले के जिला अंत्यावसायी सहकारी विकास समिति कार्यालय से प्राप्त कर आवश्यक दस्तावेज सहित जमा किया जाता है।',
    'आवश्यक दस्तावेज': '1. आवेदक को जाति / आय / निवास प्रमाण पत्र सक्षम अधिकारी का प्रस्तुत करना होगा।\n'
  '2. आमदनी ग्रामीण क्षेत्र एवं शहरी क्षेत्र में 300000/- रू. से अधिक नही होना चाहिए।\n'
  '3. शैक्षणिक योग्यता, राशन कार्ड, आधार कार्ड, मतदाता परिचय पत्र संलग्न करना होगा।\n'
  '4. आवेदक द्वारा पूर्व में किसी भी संस्था से प्राप्त ऋण का बकायादार न होने का शपथ पत्र या नोड्यूज देना अनिवार्य है।\n'
  '5. बंधक विलेख, अनुबंध पत्र, गारंटी करार एवं शपथ पत्र ।\n'
  '6. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी।',
    'कैसे और कहाँ से क्या करना है।': 'लक्ष्य आधारित योजनाएं है। लक्ष्य प्राप्त होने पर आवेदन पत्र आमंत्रित किए जाते है।',
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
        title: Text('सफाई कामगार वर्ग'),backgroundColor: Color(0xFF49BAEE),
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
    'अनुसूचित जनजाति (राष्ट्रीय अनुसूचित जनजाति वित्त एवं विकास निगम की योजनाए)',
  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'अनुसूचित जनजाति (राष्ट्रीय अनुसूचित जनजाति वित्त एवं विकास निगम की योजनाए)': (context) => DetailScreen2a(),
    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('अनुसूचित जनजाति (राष्ट्रीय अनुसूचित जनजाति वित्त एवं विकास निगम की योजनाए)'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen2a
class DetailScreen2a extends StatefulWidget {


  @override
  _DetailScreen2a createState() => _DetailScreen2a();
}

class _DetailScreen2a extends State<DetailScreen2a> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '1. ट्रेक्टर ट्राली (8.71 लाख)\n'
  '2. आटो पैसेंजर (5.50 लाख)\n'
  '3. आटो गुड्स कैरियर (6.26 लाख)\n'
  '4. स्माल बिजनेस (3.0 लाख)\n'
  '5. स्माल बिजनेस (2.00 लाख)\n'
  '6. स्माल बिजनेस (1.00 लाख)\n'
  '7. आदिवासी महिला सशक्तिकरण योजना (1.00 लाख)\n',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'राष्ट्रीय निगमों की सहायता से अनुसूचित जनजाति वर्ग के बेरोजगार युवक-युवतियों को कम ब्याज दर पर आर्थिक सहायता उपलब्ध कराया जाकर उन्हे स्वरोजगार स्थापित कराकर उनका जीवन स्तर उंचा उठाना योजना को उद्देश्य है।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक अनुसूचित जनजाति वर्ग का हो।\n'
  '2. आवेदक जिले का निवासी होना चाहिए।\n'
  '3. आवेदक की उम्र 18 से 50 वर्ष के बीच का होना चाहिए।\n'
  '4. अनुबंध पत्र निष्पादन एवं जमानतदार से संबंधित अनुबंध के लिए सहमत हो ।\n'
  '5. शासकीय योजना में पूर्व का ऋण बकाया न हो। (संबंधित विभाग/ बैंक द्वारा प्रदत्त अनापत्ति प्रमाण पत्र या शपथ पत्र)\n'
  '6. ट्रेक्टर ट्राली योजना में आवेदक के नाम (स्वयं आवेदक के नाम 5 एकड़ या पैतृक कृषि भूमि में से प्रत्येक हिस्सेदारों के हिस्से में ) 5-5 एकड़ कृषि भूमि होना अनिवार्य है।\n'
  '7. वाहन हेतु / वाहन योजना में आवेदक के नाम वैध कामर्शियल ड्रायविंग लायसेंस होना अनिवार्य है। ट्रेक्टर ट्राली का उपयोग केवल कृषि कार्य के लिये शपथ पत्र देने पर कामर्शियल ड्रायविंग लायसेंस आवश्यक नहीं मात्र ट्रेक्टर या एल. एम. व्ही. ड्रायविंग लायसेंस मान्य होगा ।',
    'आवेदन कैसे करें': 'आवेदक को स्वयं ऋण हेतु निःशुल्क निर्धारित आवेदन पत्र जिले के जिला अंत्यावसायी सहकारी विकास समिति कार्यालय से प्राप्त कर आवश्यक दस्तावेज सहित जमा किया जाता है।',
    'आवश्यक दस्तावेज': '1. आवेदक को जाति / आय/ निवास प्रमाण पत्र सक्षम अधिकारी का प्रस्तुत करना होगा।\n'
  '2. आमदनी ग्रामीण क्षेत्र एवं शहरी क्षेत्र में 300000/- रू. से अधिक नही होना चाहिए।\n'
  '3. शैक्षणिक योग्यता, राशन कार्ड, आधार कार्ड, मतदाता परिचय पत्र संलग्न करना होगा।\n'
  '4. आवेदक द्वारा पूर्व में किसी भी संस्था से प्राप्त ऋण का बकायादार न होने का शपथ पत्र या नोड्यूज देना अनिवार्य है।\n'
  '5. बंधक विलेख, अनुबंध पत्र, गारंटी करार एवं शपथ पत्र ।\n'
  '6. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी ।\n'
  'वाहन हेतु\n'
  '1. वैध कामर्शियल ड्रायविंग लायसेंस (वाहन इकाई के लिये)\n'
  '2. 5 एकड़ कृषि भूमि हेतु बी 1 नक्शा खसरा एवं फार्म C - ट्रैक्टर ट्राली हेतु\n'
  '3. प्रपत्र- एक ( हितग्राही का ऋण विवरण)',
    'कैसे और कहाँ से क्या करना है।': 'लक्ष्य आधारित योजनाएं है। लक्ष्य प्राप्त होने पर आवेदन पत्र आमंत्रित किए जाते है।',
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
        title: Text('सफाई कामगार वर्ग'),backgroundColor: Color(0xFF49BAEE),
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
    'अनुसूचित जाति (राष्ट्रीय अनुसूचित जाति वित्त एवं विकास निगम की योजनाए)',
  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'अनुसूचित जाति (राष्ट्रीय अनुसूचित जाति वित्त एवं विकास निगम की योजनाए)': (context) => DetailScreen3a(),
    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('अनुसूचित जाति (राष्ट्रीय अनुसूचित जाति वित्त एवं विकास निगम की योजनाए)'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen3a
class DetailScreen3a extends StatefulWidget {


  @override
  _DetailScreen3a createState() => _DetailScreen3a();
}

class _DetailScreen3a extends State<DetailScreen3a> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '1. ट्रेक्टर ट्राली (8.71 लाख)\n'
  '2. आटो पैसेंजर (5.50 लाख)\n'
  '3. आटो गुड्स कैरियर (6.26 लाख )\n'
  '4. लघु व्यवसाय ( 3.00 लाख)\n'
  '5. लघु व्यवसाय (2.00 लाख)\n'
  '6. स्माल बिजनेस (1.00 लाख)\n'
  '7. महिला समृद्धि योजना (0.50 लाख)\n'
  '8. महिला समृद्धि योजना (0.30 लाख)\n'
  '9. माइक्रोकेडिट योजना (0.30 लाख)',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'राष्ट्रीय निगमों की सहायता से अन्य पिछडा वर्ग/अल्पसंख्यक एवं सफाई कामगार वर्ग के बेरोजगार युवक-युवतियों को कम ब्याज दर पर आर्थिक सहायता उपलब्ध कराया जाकर उन्हे स्वरोजगार स्थापित कराकर उनका जीवन स्तर उंचा उठाना योजना को उद्देश्य है।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक अनुसूचित जाति का हो।\n'
  '2. आवेदक जिले का निवासी होना चाहिए।\n'
  '3. आवेदक की उम्र 18 से 50 वर्ष के बीच का होना चाहिए।\n'
  '4. अनुबंध पत्र निष्पादन एवं जमानतदार से संबंधित अनुबंध के लिए सहमत हो ।\n'
  '5. ट्रेक्टर ट्राली योजना में आवेदक के नाम (स्वयं आवेदक के नाम 5 एकड़ या पैतृक कृषि भूमि में से प्रत्येक हिस्सेदारों के हिस्से में ) 5-5 एकड़ कृषि भूमि होना अनिवार्य है।\n'
  '6. शासकीय योजना में पूर्व का ऋण बकाया न हो। (संबंधित विभाग/ बैंक द्वारा प्रदत्त अनापत्ति प्रमाण पत्र या शपथ पत्र )\n'
  '7. वाहन हेतु / वाहन योजना में आवेदक के नाम वैध कामर्शियल ड्रायविंग लायसेंस होना अनिवार्य है। ट्रेक्टर ट्राली का उपयोग केवल कृषि कार्य के लिये शपथ पत्र देने पर कामर्शियल ड्रायविंग लायसेंस आवश्यक नहीं मात्र ट्रेक्टर या एल. एम. व्ही. ड्रायविंग लायसेंस मान्य होगा ।',
    'आवेदन कैसे करें': 'आवेदक को स्वयं ऋण हेतु निःशुल्क निर्धारित आवेदन पत्र जिले के जिला अंत्यावसायी सहकारी विकास समिति कार्यालय से प्राप्त कर आवश्यक दस्तावेज सहित जमा किया जाता है।',
    'आवश्यक दस्तावेज': '1. आवेदक को जाति / आय / निवास प्रमाण पत्र सक्षम अधिकारी का प्रस्तुत करना होगा।\n'
  '2. आमदनी ग्रामीण क्षेत्र एवं शहरी क्षेत्र में 300000/- रू. से अधिक नही होना चाहिए।\n'
  '3. शैक्षणिक योग्यता, राशन कार्ड, आधार कार्ड, मतदाता परिचय पत्र संलग्न करना होगा।\n'
  '4. आवेदक द्वारा पूर्व में किसी भी संस्था से प्राप्त ऋण का बकायादार न होने का शपथ पत्र या नोड्यूज देना अनिवार्य है।\n'
  '5. बंधक विलेख, अनुबंध पत्र, गारंटी करार एवं शपथ पत्र ।\n'
  '6. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी।\n'
  'वाहन\n'
  '1. वैध कामर्शियल ड्रायविंग लायसेंस (वाहन इकाई के लिये)\n'
  '2. 5 एकड़ कृषि भूमि हेतु बी 1 नक्शा खसरा एवं फार्म C ट्रैक्टर\n'
  'ट्राली हेतु\n'
  '3. प्रपत्र - एक ( हितग्राही का ऋण विवरण)',
    'कैसे और कहाँ से क्या करना है।': 'लक्ष्य आधारित योजनाएं है। लक्ष्य प्राप्त होने पर आवेदन पत्र आमंत्रित किए जाते है।',
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
        title: Text('सफाई कामगार वर्ग'),backgroundColor: Color(0xFF49BAEE),
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
    'अनुसूचित जाति / अनुसूचित जनजाति वर्ग',
  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'अनुसूचित जाति / अनुसूचित जनजाति वर्ग': (context) => DetailScreen4a(),
    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('अनुसूचित जाति / अनुसूचित जनजाति वर्ग'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen4a
class DetailScreen4a extends StatefulWidget {


  @override
  _DetailScreen4a createState() => _DetailScreen4a();
}

class _DetailScreen4a extends State<DetailScreen4a> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'अंत्योदय स्वरोजगार/आदिवासी स्वरोजगार योजना (बैंक के माध्यम से ऋण) व्यापार, व्यवसाय एवं उद्योग के लिये इकाई लागत न्यूनतम राशि रू.50,000/- होगी अधिकतम का बंधन नहीं है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अनुसूचित जाति एवं अनुसूचित जनजाति वर्ग के बेजरोजगार युवक-युवतियों को बैंको के माध्यम से ऋण एवं अंत्यावसायी से अनुदान के रूप में आर्थिक सहायता उपलब्ध कराया जाकर उन्हे स्वरोजगार में स्थापित कराकर उनका जीवन स्तर उंचा उठाना योजना का उद्देश्य है। विशेष केन्द्रीय सहायता उप योजनांतर्गत अंत्योदय/ आदिवासी स्वरोजगार योजना का क्रियान्वयन अनुसूचित जाति/ अनुसूचित जनजाति के हितग्राहियों को बैंक से ऋण दिलाने हेतु किया जा रहा है। इस योजना में बैंक द्वारा स्वीकृत ऋण का 50 प्रतिशत अधिकतम रूपये 10,000/- तक जो भी कम हो अनुदान राशि दिया जाता है।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक संबंधित जिले का मूल निवासी हो। (सक्षम अधिकारी द्वारा जारी मूल निवासी प्रमाण पत्र के साथ मतदाता पहचान पत्र, राशन कार्ड, आधार कार्ड, बैंकपास बुक या बिजली बिल )\n'
  '2. आवेदक संबंधित जाति वर्ग का हो। (सक्षम अधिकारी द्वारा जारी जाति प्रमाण पत्र)\n'
  '3. राज्य शासन के ज्ञाप क्रमांक एफ-19-13/2015/ 25-2 नया रायपुर, दिनांक 25 मई 2015 के निर्देशानुसार स्वरोजगार योजना के अंतर्गत गरीबी रेखा के सर्वे सूची में शामिल हो उनकी परिवार की वार्षिक आय ग्रामीण क्षेत्र में रू. 40,500/- एवं शहरी क्षेत्र में रू. 51,500/- हो ।\n'
  '4. आवेदक की आयु 18 वर्ष से 50 वर्ष के अधिक न हो। (आयु/ जन्मतिथि के प्रमाण हेतु स्कूल का जारी दाखिल खारिज / 5वीं, 8वीं, 10वीं की अंकसूची या कोई मूल दस्तावेज के साथ शपथ पत्र)\n'
  '5. शासकीय योजना में पूर्व का ऋण बकाया न हो। (संबंधित विभाग/ बैंक द्वारा प्रदत्त अनापत्ति प्रमाण पत्र या शपथ पत्र)',
    'आवेदन कैसे करें': 'स्वयं के स्वरोजगार स्थापित करने वाले आवेदक अपने निवास स्थल के निकट के नगरीय निकाय के मुख्य नगर पालिका अधिकारी / नगर पालिका / नगर पंचायत /जनपद पंचायत के मुख्य कार्यपालन अधिकारी एवं कक्ष क्रमांक 240 कम्पोजिट बिल्डिंग, कलेक्टोरेट में स्थित जिला अंत्यावसायी सहकारी विकास समिति से निर्धारित आवेदन पत्र प्राप्त कर आवेदन पत्र स्पष्ट अक्षरो में सभी कॉलम भरकर, वर्तमान का पासपोर्ट साईज फोटो चस्पा कर उसे प्रमाणित कराकर आवेदक अपना हस्ताक्षर करेंगे एवं दो गवाहो के नाम पता सहित हस्ताक्षर करेंगे।',
    'आवश्यक दस्तावेज': '1. जाति प्रमाण पत्र\n'
  '2. निवास प्रमाण पत्र\n'
  '3. आय प्रमाण पत्र\n'
  '4. प्रदत्त सामग्री एवं लाभार्थी का बीमा कराना होगा\n'
  '5. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी\n'
  '6. बैंक द्वारा निर्धारित दस्तावेज अनुसार।',
    'कैसे और कहाँ से क्या करना है।': 'पात्र आवेदन को स्वीकृति हेतु बैंकों में प्रेषित किया जाता है, बैंक द्वारा स्वीकृति पश्चात् हितग्राही के ऋण के विरूद्ध निर्धारित अनुदान राशि बैंकों को उपलब्ध कराया जाता है।',
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
        title: Text('अनुसूचित जाति / अनुसूचित जनजाति वर्ग'),backgroundColor: Color(0xFF49BAEE),
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
    'अनुसूचित जाति वर्ग (अनुसूचित जाति विकास प्राधिकरण की योजनाए)',
    'अनुसूचित जनजाति वर्ग (अनुसूचित जाति विकास प्राधिकरण की योजनाए)',

  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'अनुसूचित जाति वर्ग (अनुसूचित जाति विकास प्राधिकरण की योजनाए)': (context) => DetailScreen5a(),
    'अनुसूचित जनजाति वर्ग (अनुसूचित जाति विकास प्राधिकरण की योजनाए)': (context) => DetailScreen5b(),
    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('मिनी साहिद',),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen5a
class DetailScreen5a extends StatefulWidget {


  @override
  _DetailScreen5a createState() => _DetailScreen5a();
}

class _DetailScreen5a extends State<DetailScreen5a> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'मिनीमाता स्वावलंबन योजना ( इ. ला 2.00 लाख)\n'
    'अचल पूंजी 1.40 लाख\n'
    'चल पूंजी 0.60 लाख',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'आर्थिक रूप से पिछड़े हुये अनुसूचित जाति वर्ग के ऐसे असहाय व्यक्ति जो स्वयं का व्यवसाय / उद्योग स्थापित करने के इच्छुक हैं किन्तु उनके पास कोई व्यावसायिक पृष्ठ भूमि नहीं है अथवा स्वयं के नहीं है, उन्हें आर्थिक योजनाओं में प्रशिक्षण, साधन एवं साधन एवं पूंजी पूंजी उपलब्ध कराते हुए व्यवसाय में स्थापित कराना है, ताकि वे समाज की मुख्यधारा से जुड़ें और व्यावसायिकता की ओर प्रोत्साहित हो ।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक अनुसूचित जाति वर्ग का हो ।\n'
  '2. आवेदक जिले के अनुसूचित जाति प्राधिकरण क्षेत्र का मूल निवासी हो ।\n'
  '3. आवेदक की आयु न्यूनतम 18 वर्ष से 50 वर्ष के मध्य हो ।\n'
  '4. आवेदक की वार्षिक आय ग्रामीण क्षेत्र में रू. 98,000/- एवं शहरी क्षेत्र में रू. 1,20,000/- से अधिक न हो ।\n'
  '5. आवेदक आठवीं कक्षा उत्तीर्ण शिक्षित बेरोजगार हो, महिला एवं विकलांग हितग्राहियों को प्राथमिकता दी जाएगी।\n'
  '6. आवेदक द्वारा पूर्व में किसी भी संस्था से प्राप्त ऋण का बकायादार न होने का शपथ पत्र या नोड्यूज देना अनिवार्य है।\n'
  '7. चयन पश्चात् अनुबंध पत्र निष्पादन के लिए सहमत हो ।',
    'आवेदन कैसे करें': 'आवेदक को स्वयं ऋण हेतु निःशुल्क निर्धारित आवेदन पत्र जिले के जिला अंत्यावसायी सहकारी विकास समिति कार्यालय से प्राप्त कर आवश्यक दस्तावेज सहित जमा किया जाता है।',
    'आवश्यक दस्तावेज': '1. सक्षम अधिकारी द्वारा जारी जाति, आय, एवं निवास प्रमाण पत्र\n'
  '2. आवेदक संबंधित जाति वर्ग का हो। (सक्षम अधिकारी द्वारा जारी जाति प्रमाण पत्र)\n'
  '3 आठवी कक्षा उत्तीर्ण होना अनिवार्य है।\n'
  '4. अधार कार्ड, राशन कार्ड, वर्तमान का फोटो प्रस्तुत करना होगा।\n'
  '5. दुकान निर्माण प्रस्तावित स्थान का बी 1 नक्शा खसरा, चैहद्दी प्रस्तुत करना होगा।\n'
  '6. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी।',
    'कैसे और कहाँ से क्या करना है।': 'लक्ष्य आधारित योजनाएं है। लक्ष्य प्राप्त होने पर आवेदन पत्र आमंत्रित किए जाते है।',
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
        title: Text('अनुसूचित जाति वर्ग (अनुसूचित जाति विकास प्राधिकरण की योजनाए)'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen5b
class DetailScreen5b extends StatefulWidget {


  @override
  _DetailScreen5b createState() => _DetailScreen5b();
}

class _DetailScreen5b extends State<DetailScreen5b> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'मिनीमाता स्वावलंबन योजना (इ. ला 2.00 लाख)\n'
    'अचल पूंजी 1.40 लाख\n'
    'चल पूंजी 0.60 लाख',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'आर्थिक रूप से पिछड़े हुये अनुसूचित जाति वर्ग के ऐसे असहाय व्यक्ति जो स्वयं का व्यवसाय/उद्योग स्थापित करने के इच्छुक हैं किन्तु उनके पास कोई व्यावसायिक पृष्ठ भूमि नहीं है अथवा स्वयं के साधन एवं पूंजी नहीं है, उन्हें आर्थिक योजनाओं में प्रशिक्षण, साधन एवं पूंजी उपलब्ध कराते हुए व्यवसाय में स्थापित कराना है, ताकि वे समाज की मुख्यधारा से जुड़ें और व्यावसायिकता की ओर प्रोत्साहित हो ।',
    'योजना/जन कल्याणकारी की पात्रता': '1. आवेदक अनुसूचित जाति वर्ग का हो।\n'
  '2. आवेदक जिले के अनुसूचित जाति प्राधिकरण क्षेत्र का मूल निवासी हो ।\n'
  '3. आवेदक की आयु न्यूनतम 18 वर्ष से 50 वर्ष के मध्य हो ।\n'
  '4. आवेदक की वार्षिक आय ग्रामीण क्षेत्र में रू. 98,000/- एवं शहरी क्षेत्र में रू. 1,20,000/- से अधिक न हो ।\n'
  '5. आवेदक आठवीं कक्षा उत्तीर्ण शिक्षित बेरोजगार हो, महिला एवं विकलांग हितग्राहियों को प्राथमिकता दी जाएगी।\n'
  '6. आवेदक द्वारा पूर्व में किसी भी संस्था से प्राप्त ऋण का बकायादार न होने का शपथ पत्र या नोड्यूज देना अनिवार्य है।\n'
  '7. चयन पश्चात् अनुबंध पत्र निष्पादन के लिए सहमत हो ।',
    'आवेदन कैसे करें': 'आवेदक को स्वयं ऋण हेतु निःशुल्क निर्धारित आवेदन पत्र जिले के जिला अंत्यावसायी सहकारी विकास समिति कार्यालय से प्राप्त कर आवश्यक दस्तावेज सहित जमा किया जाता है।',
    'आवश्यक दस्तावेज': '1. सक्षम अधिकारी द्वारा जारी जाति, आय, एवं निवास प्रमाण पत्र\n'
  '2. आवेदक संबंधित जाति वर्ग का हो (सक्षम अधिकारी द्वारा जारी जाति प्रमाण पत्र)\n'
  '3 आठवी कक्षा उत्तीर्ण होना अनिवार्य है।\n'
  '4. आधार कार्ड, राशन कार्ड, वर्तमान का फोटो प्रस्तुत करना होगा।\n'
  '5. दुकान निर्माण प्रस्तावित स्थान का बी 1 नक्शा खसरा, चेहद्दी प्रस्तुत करना होगा।\n'
  '6. हितग्राही के आधार कार्ड एवं बैंक खाता की कॉपी ।',
    'कैसे और कहाँ से क्या करना है।': 'लक्ष्य आधारित योजनाएं है। लक्ष्य प्राप्त होने पर आवेदन पत्र आमंत्रित किए जाते है।',
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
        title: Text('अनुसूचित जनजाति वर्ग (अनुसूचित जाति विकास प्राधिकरण की योजनाए)'),backgroundColor: Color(0xFF49BAEE),
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






