import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'मुख्यमंत्री कौशल विकास योजना',
  'प्रधानमंत्री कौशल विकास योजना',

  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'मुख्यमंत्री कौशल विकास योजना': (context) => DetailScreen1(),
    'प्रधानमंत्री कौशल विकास योजना': (context) => DetailScreen2(),

    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('योजना जनकल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'छ.ग. देश का पहला राज्य, जिसने अपने युवाओं को उनके मन पसंद व्यवसायों में कौशल प्रशिक्षण पाने हेतु कौशल विकास अधिकार अधिनियम 2013 बनाया गया। जिसके अंतर्गत युवाओं को उनके मन पसंद व्यवसायों में तकनीकी प्रशिक्षण पाने का अधिकार प्राप्त हुआ है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पढाई छोड़ चुके या कम पढे लिखे युवाओं को हुनरमंद बनाने के लिए राज्य में कौशल विकास योजना का संचालन किया जा रहा है। इस योजना के अंतर्गत राज्य के आर्थिक विकास के साथ-साथ युवाओं को प्रशिक्षित कर अधिक से अधिक संख्या में रोजगार/स्वरोजगार के अवसर प्रदान करना|',
    'योजना/जन कल्याणकारी की पात्रता': 'मुख्यमंत्री कौशल विकास योजना में प्रशिक्षण हेतु हितग्राही की आयु 14 वर्ष से 45 वर्ष के मध्य होना अनिवार्य है।',
    'आवेदन कैसे करें': 'वेबसाईट पर आनलाईन',
    'आवश्यक दस्तावेज': '1. शैक्षणिक प्रमाण पत्र की छायाप्रति ।\n'
  '2. आधार कार्ड की छायाप्रति\n'
  '3. पासपोर्ट साईज फोटो\n'
  '4. राशन कार्ड की छायाप्रति\n'
  '5. मोबाईल नंबर',
    'कैसे और कहाँ से क्या करना है।': 'किसी भी लोक सेवा केंद्र / प्रशिक्षण संस्था / कार्यालय में उपस्थि होकर आनलाईन',
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
        title: Text('प्रधानमंत्री कौशल विकास योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'भारत सरकार के द्वारा प्रधानमंत्री कौशल विकास योजना का प्रारभ वर्ष 2015 में अल्प अवधि के व्यवसायों में निःशुल्क प्रशिक्षण देकर कौशल विकास को बढ़ावा देने के उदेश्य से प्रारंभ की गई थी। वर्ष 2015-16 में योजना का सफलतापूर्वक क्रियान्वयन के पश्चात प्रधानमंत्री कौशल विकास योजना 2.0 (2016-20) का प्रारंभ किया गया जिसमें सेक्टर की संख्या में भौगोलिक दृष्टिकोण के आधार पर बढ़ोतरी की गई है और भारत सरकार की अलग-अलग मिशन एवं कार्यक्रम के साथ जोड़ा गया जैसे उम पद पदकपंए क्पहपजंस प्दकपं एवं बी डींतंज उपेपवद प्रधानमंत्री कौशल विकास योजना 2.0 मार्च 2020 तक थी जिसे प्रवासी श्रमिकों की कुशलता के लिए एक साल के लिए बढ़ाया गया। चडज्ञटल् 2.0 के क्रियान्वयन से प्राप्त जानकारी एवं अध्ययन के पश्चात वर्तमान निति परिवर्तन एवं अलग-अलग सेक्टर्स में हो रहे बदलाव को प्राथमिकता के आधार पर निर्णय लेते हुए कार्यक्रम को गतिशिलता प्रदान करने के उदेश्य से प्रधानमंत्री कौशल विकास योजना 3.0 का क्रियान्वयन किया गया जिसे प्प् फेज में पूरा किया जाना है। प् फेज में पायलट प्रोजेक्ट के आधार पर वर्ष 2020-21 के लिए क्रियान्वित किया गया जिसे पीएमकेवीवाय 3.0 (2020-21) के नाम से जाना जाता है।\n'
  'योजना का प्प् फेज अप्रैल 2021 से मार्च 2026 तक का होगा जिसमें इस योजना का फ्रेमवर्क तैयार करते हुए क्रियान्वयन को शुरू किया जावेगा।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'उक्त योजना का उदेश्य अल्प अवधि के विभिन्न व्यवसायों में देश के युवाओं को प्रशिक्षित कर उनकी कुशलता के विकास में बढावा देना है। साथ ही युवाओं को प्रशिक्षण पश्चात सर्टिफिकेट एवं आर्थिक सहायता प्रदान करना ताकि युवाओं को उद्योगो की मांग के आधार पर रोजगार के योग्य बनाया जा सके।',
    'योजना/जन कल्याणकारी की पात्रता': 'भारतीय नागरिक,\n'
  'आयु 18 वर्ष से 45 वर्ष',
    'आवेदन कैसे करें': 'http://pmkvyofficial.org/'
  'वेबसाईट पर आनलाईन\n',
    'आवश्यक दस्तावेज': '1 आधार कार्ड\n'
                    '2 पास पोर्टसाईज के 2 फोटोग्राफ्स 3 परिवार के किसी एक सदस्य का आधार कार्ड',
    'कैसे और कहाँ से क्या करना है।': 'किसी भी लोकसेवा केंद्र / प्रशिक्षण संस्था / कार्यालय स्थल पर वेब साईट पर ऑन लाईन करना है जिसमें आवेदक को अपनी व्यक्तिगत जानकारी वेब साईट के अनुसार प्रविष्टि करनी है और सबमिट करना है।',
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
        title: Text('प्रधानमंत्री कौशल विकास योजना'),backgroundColor: Color(0xFF49BAEE),
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

