import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'रोजगार पंजीयन',
  'प्लेसमेंट कैम्प / रोजगार मेंला',
  'स्कूल / कॉलेजों में व्यवसायिक/ कैरियर मार्गदर्शन',
  'सेना भर्ती प्रचार-प्रसार एवं प्रशिक्षण',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'रोजगार पंजीयन': (context) => DetailScreen1(),
    'प्लेसमेंट कैम्प / रोजगार मेंला': (context) => DetailScreen2(),
    'स्कूल / कॉलेजों में व्यवसायिक/ कैरियर मार्गदर्शन': (context) => DetailScreen3(),
    'सेना भर्ती प्रचार-प्रसार एवं प्रशिक्षण': (context) => DetailScreen4(),

    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('जिला रोजगार'),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': '(1) रोजगार इच्छुक शिक्षित बेरोजगारों का उनकी शैक्षणिक योग्यता के आधार पर प्रत्येक कार्यालयीन दिवस में रोजगार पंजीयन, पंजीयन का नवीनीकरण, अतिरिक्त योग्यता जोड़ना इत्यादि कार्य ।\n'
  '(2) आॅनलाईन किया जाता है। आनलाईन कार्य कार्यालय के अलावा लोक सेवा केन्द्र एवं अन्य साइबर कैफे के माध्यम से वेबसाईट exchange.cg.nic.in किया जाता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': '(1) छ0ग0 शासन के अधीन विभिन्न विभागों के माध्यम से भरी जाने वाली रिक्तियों संबंधी विज्ञापन के विरूद्ध आवेदन करने हेतु\n'
      '(2) राज्य बेरोजगारी संबंधी आकड़ों के संकलन एवं योजना एवं सांख्यिकी विभाग की जानकारी हेतु',
    'योजना/जन कल्याणकारी की पात्रता': '(1) कक्षा 5वीं और उससे अधिक शैक्षणिक योग्यता शिक्षित बेरोजगार\n'
  '(2) उम्र 18 और 18 से अधिक\n'
  '(3) निवास प्रमाण-पत्र\n'
  '(4) जाति प्रमाण-पत्र',
    'आवेदन कैसे करें': 'कार्यालय में स्वयं उपस्थित होकर',
    'आवश्यक दस्तावेज': 'कार्यालय में उपस्थित होकर आवश्यक दस्तावेज सभी शैक्षणिक प्रमाण पत्रां की मूल प्रति एवं जाति प्रमाण पत्र की छायाप्रति / मूलप्रति',
    'कैसे और कहाँ से क्या करना है।': '(1) कार्यालय में उपस्थित होकर'
      '(2) लोकसेवा केन्द्र या अन्य साइबर कैफे पर उपस्थित होकर',
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
        title: Text('रोजगार पंजीयन'),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'निनिजी क्षेत्र में रोजगार के अवसर उपलब्ध कराने की दृष्टिकोण से समय-समय पर रिक्तियों की उपलब्धता के आधार पर प्लेसमेंट कैम्प / रोजगार मेले का आयोजन ',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'शासकीय क्षेत्र में रोजगार के अवसर सीमित होते हैं ऐसी स्थिति में अधिक से अधिक शिक्षित बेरोजगारों को रोजगार उपलब्ध कराने के दृष्टिकोण से निजी क्षेत्र में अवसर प्रदान करना',
    'योजना/जन कल्याणकारी की पात्रता': '(1) शिक्षित बेराजगार जिनकी उम्र 18 वर्ष से अधिक है\n'
      '(2) छ0ग0 का मूल निवासी\n'
    '(3) रोजगार कार्यालय में पंजीयन',
    'आवश्यक दस्तावेज': '(1) शैक्षणिक योग्यता संबंधी प्रमाण-पत्रों की छायाप्रति\n'
        '(2) पासपोर्ट साईज फोटोग्राफ\n'
        '(3) अनुभव प्रमाण-पत्र अगर हो तो छायाप्रति',
    'कैसे और कहाँ से क्या करना है।': 'आयोजन स्थल पर उपस्थित होकर',
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
        title: Text('प्लेसमेंट कैम्प / रोजगार मेला'),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'स्कूल / न/कॉलेज में उपस्थित होगर छात्र/छात्राओं को विभिन्न प्रकार के कैरियर एवं व्यवसायों के संबंध में जानकारी प्रदाय करते हुये मार्गदर्शन देना',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'वर्तमान समय में रोजगार बाजार में किस प्रकार के रोजगार एवं स्वरोजगार उपलब्ध है एवं उनके लिये किस प्रकार की शैक्षणिक योग्यता, अनुभव, लागत इत्यादि की महत्वपूर्ण जानकारी प्रदाय करना जिससे प्रायः अधिकांश छात्र/छात्राएं अनभिज्ञ होते हैं।',
    'योजना/जन कल्याणकारी की पात्रता': '1) हाईस्कूल एवं हायर सेकेण्डरी स्कूल में अध्ययनरत छात्र छज्ञाएं\n'
      '(2) स्नातक स्तर के छात्र छात्राएं',
    'आवेदन कैसे करें': 'किसी प्रकार की आवेदन की आवश्यकता नहीं',
    'आवश्यक दस्तावेज': 'किसी भी दस्तावेज की आवश्यकता नहीं',
    'कैसे और कहाँ से क्या करना है।': 'स्कूल एवं कालेज परिसर',
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
        title: Text('स्कूल /कॉलेजों में व्यवसायिक/कैरियर मार्गदर्शन'),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'भारतीय थल/वायु / जल सेना में भर्ती हेतु छ0ग0 के युवाओं को प्रोत्साहित करते हुये प्रशिक्षण देकर सेना में भर्ती कराना',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'छ0ग0 के अधिक-से-अधिक युवा / युवती को सेना क्षेत्र में रोजगार के अवसर प्रदान करना',
    'योजना/जन कल्याणकारी की पात्रता': '(1)10वी / 12वीं कक्षा उत्तीर्ण छात्र छात्राएं\n'
      '(2) शारीरिक दक्षता परीक्षा\n'
    '(3) लिखित परीक्षा\n'
    '(4) चिकित्सा परीक्षा उत्तीण',
    'आवेदन कैसे करें': 'आनलाईन निर्धारित साइट पर',
    'आवश्यक दस्तावेज': '(1) शैक्षणिक योग्यता संबंधी प्रमाण-पत्र\n'
  '(2) छ0ग0 का निवास प्रमाण-पत्र\n'
  '(3) एन0सी0सी प्रमाण-पत्र\n'
  '(4) फोटोग्राफ',
    'कैसे और कहाँ से क्या करना है।': '(1) दिये गये साइट पर आनलाईन पंजीयन\n'
      '(2) भर्ती रैली आयोजन स्थल पर उपस्थित होकर शारीरिक दक्षता प्रशिक्षण में उपस्थित होना\n'
    '(3) शारीरिक दक्षता परीक्षा उत्तीर्ण होने के बाद लिखित परीक्षा में सम्मिलित होना और अन्त में निर्धारित स्थल चिकित्सा प्ररीक्षा हेतु उपस्थित होना',
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
        title: Text('सेना भर्ती प्रचार-प्रसार एवं प्रशिक्षण'),
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