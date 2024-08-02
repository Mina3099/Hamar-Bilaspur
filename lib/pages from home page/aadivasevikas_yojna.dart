import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'पोस्ट मैट्रिक छात्रवृत्ति',
  'अल्पसंख्यक छात्रवृत्ति',
  'जाति सत्यापन',
  'रविदास चर्म शिल्प योजना',
  'अंतर्जातीय विवाह योजना',
  'जवाहर उत्कर्ष योजना',
  'पोस्ट मैट्रिक छात्रवृत्ति',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'पोस्ट मैट्रिक छात्रवृत्ति': (context) => DetailScreen1(),
    'अल्पसंख्यक छात्रवृत्ति': (context) => DetailScreen2(),
    'जाति सत्यापन': (context) => DetailScreen3(),
    'रविदास चर्म शिल्प योजना': (context) => DetailScreen4(),
    'अंतर्जातीय विवाह योजना': (context) => DetailScreen5(),
    'जवाहर उत्कर्ष योजना': (context) => DetailScreen6(),
    'पोस्ट मैट्रिक छात्रवृत्ति': (context) => DetailScreen7(),


    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('आदिवासी विकास'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पोस्ट मैट्रिक छात्रवृत्ति योजनान्तर्गत नियमित रूप से (कॉलेज स्तर) में अध्ययनरत् अनु.ज.जा., अनु. जाति, अन्य पिछड़ा वर्ग के विद्यार्थियों को प्रति वर्ष छात्रवृत्ति प्रदान की जाति है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अनुसूचित जनजाति, अनुसूचित जाति एवं अन्य पिछड़ा वर्ग के विद्यार्थियों को शिक्षा में प्रोत्साहन',
    'योजना/जन कल्याणकारी की पात्रता': 'अनुसूचित जनजाति, अनुसूचित जाति वर्ग के विद्यार्थियों के अभिभावक की आय सीमा 2.50 लाख अधिक न हो एवं अन्य पिछड़ा वर्ग विद्यार्थियों के अभिभावक की आय सीमा 1.00 लाख से अधिक न हो |',
    'आवेदन कैसे करें': 'छात्रवृत्ति पोर्टल के माध्यम से आनलाईन आवेदन |',
    'आवश्यक दस्तावेज': 'निवास, जाति, आय, आधार, बैंक खाता, अंक सूची, आनलाइन आवेदन का प्रिंट आउट, आदि',
    'कैसे और कहाँ से क्या करना है।': 'छात्रवृत्ति पोर्टल के माध्यम से संबंधित संस्था प्रमुख द्वारा किया जाता है जिसे जिला स्तर से परीक्षण उपरांत छात्रवृत्ति भुगतान हेतु आयुक्त, आदिम जाति तथा अनुसूचित जाति विकास विभाग रायपुर छ.ग. को प्रेषित किया जाता है।',
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
        title: Text('पोस्ट मैट्रिक छात्रवृत्ति'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्री मैट्रिक पोस्ट मैट्रिक एवं मेरिट कम मीन्स योजना में नियमित रूप से अध्ययनरत् मुस्लिम, सिक्ख, ईसाई, बौद्ध, पारसी और जैन समुदाय के विद्यार्थियों को प्रति वर्ष छात्रवृत्ति प्रदान की जाति है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'मुस्लिम, सिक्ख, ईसाई, बौद्ध, पारसी और जैन समुदाय के विद्यार्थियों को शिक्षा में प्रोत्साहन |',
    'योजना/जन कल्याणकारी की पात्रता': 'मुस्लिम, सिक्ख, ईसाई, बौद्ध, पारसी और जैन समुदाय के विद्यार्थियों के अभिभावक की आय सीमा प्री मैट्रिक में 1.00 लाख, पोस्ट मैट्रिक 2.00 लाख एवं मेरिट कम मीन्स 2.50 लाख से अधिक न हो |',
    'आवेदन कैसे करें': 'छात्रवृत्ति पोर्टल के माध्यम से आनलाईन आवेदन',
    'आवश्यक दस्तावेज': 'निवास, जाति तथा आय के संबंध शपथ पत्र, आधार, बैंक पास बुक, अंक सूची, अध्ययनरत् प्रमाण पत्र, फिस की जानकारी ऑनलाइन आवेदन का प्रिंट आउट आदि |',
    'कैसे और कहाँ से क्या करना है।': 'छात्रवृत्ति पोर्टल के माध्यम से संबंधित संस्था प्रमुख द्वारा किया जाता है जिसे जिला स्तर से परीक्षण उपरांत छात्रवृत्ति भुगतान हेतु आयुक्त, आदिम जाति तथा अनुसूचित जाति विकास विभाग रायपुर छ. ग. को प्रेषित किया जाता है।',
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
        title: Text('अल्पसंख्यक छात्रवृत्ति'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'छात्र-छात्राओं की हितलाभ के आधार पर कार्य किया जाता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अनुसूचित जनजाति, अनुसूचित जाति एवं अन्य पिछड़ा वर्ग के विद्यार्थियों को सर्विस सेवा काल में आने पर जाति सत्यापन की मांग किये जाने पर जाति प्रमाण पत्र का सत्यापन किया जाता है',
    'योजना/जन कल्याणकारी की पात्रता': 'अनुसूचित जनजाति, अनुसूचित जाति एवं अन्य पिछड़ा वर्ग के जाति प्रमाण पत्र का सत्यापन किया जाता है।',
    'आवेदन कैसे करें': 'आवेदन कार्यालय से प्राप्त कर वितरण दर्ज कर कार्या. में जमा करना',
    'आवश्यक दस्तावेज': 'वंशवृक्ष, मिशल, आधार, अंकसूची बी. 01 खसरा, पटवारी प्रतिवेदन आदि|',
    'कैसे और कहाँ से क्या करना है।': 'जिला स्तर पर जाति सत्यापन समिति का गठन किया गया है। समिति के जांच उपरांत प्रमाण पत्र तैयार किया जाता है।',
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
        title: Text('जाति सत्यापन'),backgroundColor: Color(0xFF49BAEE),
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
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'मोची पेटी (औजार किट्स सहित) का वितरण |',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'व्यवसाय हेतु प्रोत्साहन',
    'योजना/जन कल्याणकारी की पात्रता': 'मोची का कार्य करने वाले व्यक्तियों को',
    'आवेदन कैसे करें': 'आवेदन पत्र सादे कागज पर नाम, पता, आधार नम्बर, के साथ मोची पेटी के मांग संबंधित आवेदन पत्र संबंधित जनपद पंचायतों में जमा करना |',
    'आवश्यक दस्तावेज': 'आधार कार्ड, राशन कार्ड, जाति प्रमाण पत्र आदि |',
    'कैसे और कहाँ से क्या करना है।': 'आवेदन देकर जनपद पंचायत अथवा कलेक्टर आदिवासी विकास विभाग में संपर्क करना |',

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
        title: Text('रविदास चर्म शिल्प योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'इस योजना में वर्ष 2020-21 में 33 युवक एवं युवती को लाभान्वित किया गया है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अतंर्जातीय विवाह से अभिप्राय ऐसे विवाह से है जिसमें अनसूचित जाति के युवक अथवा युवती ने गैर अनसूचित जाति की युवती अथवा युवक से विवाह किया है। जो हिन्दू मैरिज एक्ट 1955 के तहत सक्षम अधिकारी के कार्यालय में पंजीकृत हो |',
    'योजना/जन कल्याणकारी की पात्रता': 'आवेदक दंपत्ति सामाजिक न्याय और अधिकारिता मंत्रालय, भारत सरकार की योजना (Dr. Ambedkar Scheme for Social Intergration through Intercaste Marriages) का अथवा छ. ग. अस्पृश्यता निवारणार्थ अंतर्जातीय विवाह प्रोत्साहन योजना में से किसी एक योजना का लाभ लेने का पात्र है।',
    'आवेदन कैसे करें': 'आवेदन कार्यालय से प्राप्त कर वितरण दर्ज कर कार्या. में जमा करना |',
    'आवश्यक दस्तावेज': 'स्थायी निवास, जाति प्रमाण पत्र (दोनो पक्षों का) विवाह प्रमाण पत्र, विवाह पंजीयन, 5वीं 8वीं 10वीं अंक सूची, 10 रू. का स्टाम्प, आधार कार्ड, दो फोटो, संयुक्त बैंक खाता नम्बर |',
    'कैसे और कहाँ से क्या करना है।': 'जिला स्तर पर सभी दस्तावेज के जांच उपरांत समिति के अनुमोदन पश्चात राशि स्वीकृत की जाती है।',
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
        title: Text('अंतर्जातीय विवाह योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'उत्कृष्ट संस्थाओं में प्रवेश हेतु',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'ग्रामीण अंचल में निवासरत् गरीब परिवार के बच्चों को उत्कृष्ट में संस्थाओं में अध्ययन कराकर शासन का लाभ दिया जाता है।',
    'योजना/जन कल्याणकारी की पात्रता': 'ग्रामीण अंचल के निवासियों को प्राथमिकता',
    'आवेदन कैसे करें': 'निर्धारित प्रपत्र में आवश्यक दस्तावेजो के साथ विकास खण्ड या जिला कार्यालय में जमा करना',
    'आवश्यक दस्तावेज': 'निवास, जाति तथा आय ग्रामीण अंचल के निवास प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आदिम जाति तथा अनु. जाति विकास विभाग रायपुर द्वारा निर्धारित तिथि को परीक्षा का आयोजन कर मेरिट लिस्ट के आधार पर अनु.ज.जा. 01 अनु.जा. 02 विद्यार्थियों का चयन किया जाता है।',
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
        title: Text('जवाहर उत्कर्ष योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'राज्य से बाहर अध्ययनरत् पोस्ट मैट्रिक छात्रवृत्ति (आफलाईन) योजनान्तर्गत नियमित रूप से में अध्ययनरत् अनु.ज.जा., अनु.जाति, अन्य पिछड़ा वर्ग के विद्यार्थियों को प्रति वर्ष छात्रवृत्ति प्रदान की जाति है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अनुसूचित जनजाति, अनुसूचित जाति, अन्य पिछड़ा वर्ग के विद्यार्थियों को शिक्षा में प्रोत्साहन',
    'योजना/जन कल्याणकारी की पात्रता': 'अनुसूचित जनजाति, अनुसूचित जाति वर्ग के विद्यार्थियों के अभिभावक की आय सीमा 2.50 लाख अधिक न हो एवं अन्य पिछड़ा वर्ग विद्यार्थियों के अभिभावक की आय सीमा 1.00 लाख से अधिक न हो |',
    'आवेदन कैसे करें': 'संस्थाओं के द्वारा निर्धारित फार्म में विद्यार्थियों का समस्त दस्तावेज कार्यालय में जमा किया जाता है।',
    'आवश्यक दस्तावेज': 'जिला मुंगेली का निवास हो, जाति, आय, आधार, बैंक खाता, अंक सूची, अध्ययनरत् प्रमाण पत्र, फिस डिटेल, निर्धारित फार्म, संस्था द्वारा पत्र, मान्यता एवं संबंद्धता आदि',
    'कैसे और कहाँ से क्या करना है।': 'संस्थाओं से प्राप्त समस्त दस्तावेजों के जांच उपरांत प्रस्ताव / स्वीकृत कर आबंटन प्रदाय हेतु आयुक्त, आदिम जाति तथा अनुसूचित जाति विकास विभाग रायपुर छ. ग. को प्रेषित किया जाता है।',
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
        title: Text('पोस्ट मैट्रिक छात्रवृत्ति'),backgroundColor: Color(0xFF49BAEE),
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
