import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'महात्मा गाँधी राष्ट्रीय ग्रामीण रोजगार गारंटी योजना',
  'राष्ट्रीय ग्रामीण आजीविका मिशन "बिहान "',
  'प्रधानमंत्री आवास योजना (ग्रामीण)',
  'स्वच्छ भारत मिशन (ग्रामीण)',
  'श्रद्धांजलि योजना',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'महात्मा गाँधी राष्ट्रीय ग्रामीण रोजगार गारंटी योजना': (context) => DetailScreen1(),
    'राष्ट्रीय ग्रामीण आजीविका मिशन "बिहान "': (context) => DetailScreen2(),
    'प्रधानमंत्री आवास योजना (ग्रामीण)': (context) => DetailScreen3(),
    'स्वच्छ भारत मिशन (ग्रामीण)': (context) => DetailScreen4(),
    'श्रद्धांजलि योजना': (context) => DetailScreen5(),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': '• देश के ग्रामीण क्षेत्रो में निवासरत परिवारों की आजीविका को सूरक्षा प्रदान करने हेतु राष्ट्रीय ग्रामीण रोजगार गारंटी अधिनियम 2005 दिनांक 23 अगस्त 2005 को पारित किया गया एवं इस अधिनियम की अधिसूचना दिनांक 07 सितम्बर 2005 को जारी की गई।\n'
    '• नरेगा अधिनियम 2005 की धारा 4 (1) अंतर्गत 02 फरवरी 2006 से महात्मा गांधी राष्ट्रीय ग्रामीण रोजगार योजना छत्तीसगढ में प्रारंभ की गई एवं प्रथम चरण में ही बिलासपुर जिले से अविभाजित मुंगेली में 02 फरवरी 2006 से योजना प्रभावशील है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'इस अधिनियम का उद्देश्य ग्रामीण क्षेत्रों में उस प्रत्येक परिवार, जिनके व्यस्क सदस्य अकुशल शारीरिक कार्य करने के इच्छुक हो, को एक वित्तीय वर्ष में 100 दिन का गारंटीयुक्त रोजगार प्रदान करके आजीविका को सूरक्षा प्रदान करना है।\n'
  '• छत्तीसगढ राज्य में योजनांतर्गत पंजीकृत परिवारों को वित्तीय वर्ष 2013-14 से 50 दिवस का अतिरिक्त रोजगार प्रदान की जा रही है, जिसका भूगतान राज्य बजट से किया जाता है ।\n'
  '• वन अधिकार पट्टाधारक परिवारों को 50 दिवस का अतिरिक्त रोजगार केन्द्र सरकार द्वारा दिया जाता है।\n'
  '• पलायन को रोकने में सहायक ।\n'
  '• ग्रामीण क्षेत्रों में स्थायी परिसंम्पत्ति का सृजन होगा।\n'
  '• काम न मिलने पर बेरोजगारी भत्ते की पात्रता ।\n'
  '5 किमी की परिधि से बाहर कार्य करने पर यात्रा भत्ता के रूप में मजदूरी की 10 प्रतिशत अतिरिक्त राशि |\n'
  'मनरेगा अधिनियम 2005 की धारा 6 उपधारा (1) के तहत भारत सरकार द्वारा राज्य के लिये निर्धारित मजदूरी दर देय होगा । (वित्तीय वर्ष 2020-21 हेतु 190 रू)\n'
  '• मनरेगा पैरा-5 अंतर्गत पात्र हितग्राहियों के निजी भूमि पर अधिकतम 3 लाख तक के कार्य कराये जा सकते है ।\n'
  'विगत 12 माह में न्यूनतम 50 दिवस कार्य किये गर्भवती महिला को निर्धारित अकुशल श्रमिक दर के आधार पर 30 दिवस के बराबर मातृत्व भत्ता (2 जीवित बच्चो तक) हेतु पात्र होंगे।',
    'योजना/जन कल्याणकारी की पात्रता': 'जॉब कार्ड व रोजगार हेतु पात्रता - ग्रामीण क्षेत्र में निवासरत हर परिवार के अकुशल काम करने के इच्छुक वयस्क सदस्य जो उस ग्राम पंचायत का स्थानीय निवासी हो, जॉब कार्ड पंजीयन एवं योजना का लाभ लेने हेतु पात्र होगा।\n'
  'निजी भूमि पर कार्य हेतु पात्रता मनरेगा पैरा-5 अंतर्गत आने वाले परिवार जिसका प्राथमिकता क्रम इस प्रकार होगा-\n'
  '1. अनुसूचित जाति\n'
  '2. अनुसूचित जनजाति\n'
  '3. घुमन्तू जनजाति\n'
  '4. अधिसूचना मेसे निकाली गई जनजाति\n'
  '5. गरीबी रेखा से नीचे के परिवार\n'
  '6. महिला / दिव्यांग मुखिया वाले परिवार\n'
  '7. भूमि सुधार क हितग्राही\n'
  '8. इंदिरा / प्रधानमंत्री आवास योजना (ग्रा.) के हितग्राही\n'
  '9. वनाधिकार मान्यता अधिनियम 2006 के लाभार्थी\n'
  '10. लघु एवं सीमांत कृषक\n'
  '11. 10 एकड़ तक के भूमि स्वामी (केवल मनरेगा के तहत जल ग्रहण क्षेत्र के अंतर्गत)\n',
    'आवेदन कैसे करें' :'• जॉब कार्ड पंजीकरण हेतु परिशिष्ट बी-1 अथवा सादे कागज में ग्राम पंचायत के पास जमा कराया जा सकता है, आवेदन में परिवार के उन सभी वयस्क सदस्यों के नाम होने चाहिये जो अकुशल शारीरिक श्रम करने को तैयार हो, उनकी उम्र, लिंग, अनु. जाति / अनु. जनजाति श्रेणी आदि का भी उल्लेख होना चाहिये।\n'
  '• कार्य की मांग- काम के लिये आवेदन सादे कागज पर लिखित में व्यक्तिगत , संयुक्त रूप से साधारणतः ग्राम पंचायत के पास ही जमा कराया जाना है, जिसमें जॉब कार्ड नंबर , कार्य हेतु इच्छुक तारीख , कितने दिन का कार्य की आवश्यकता है, इत्यादि विवरण हो \n',
    'आवश्यक दस्तावेज': '• जॉब कार्ड पहचान पत्र / आधारकार्ड, फोटो, बैंक खाता पासबुक की छायाप्रति\n'

  '• कार्य की मांग- लिखित अथवा मौखिक मांगपत्र जिसे रोजगार सहायक द्वारा लिखित में कार्यक्रम अधिकारी के पास जमा किया जावेगा।\n',
    'कैसे और कहाँ से क्या करना है।': 'जॉब कार्ड पंजीकरण हेतु परिशिष्ट बी-1 अथवा सादे कागज में ग्राम पंचायत के पास जमा कराया जा सकता है। कार्य की मांग काम के लिये आवेदन साधारणतः ग्राम पंचायत के पास ही जमा कराया जाना है, इसके अतिरिक्त अन्य विकल्प न हो तो अधिनियम (अनुसूची ॥ अनुच्छेद 9) प्रावधान अनुसार कार्यक्रम अधिकारी के पास आवदेन जमा किया जा सकता है।',
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
        title: Text('महात्मा गाँधी राष्ट्रीय ग्रामीण रोजगार गारंटी योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': '1- समूह गठित कर महिलाओं का संगठित करना ।\n'
  '2- समूह को चक्रिय निधि / सामूदायिक निवेश कोष / आपदा प्रबंधन को की राशि जारी करना ।\n'
  '3- समूह गठित कर महिलाओं को आजीविका से जोड़ना ।\n'
  '4- समूहों को ऋण के माध्यम से आर्थिक सहायता प्रदान करना।\n',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'समूह गठन कर महिलाओं को आत्मनिर्भर बनाने एवं उन्हें आजीविका से जोड़कर उनकी आर्थिक स्थिति मजबूत करने के प्रयास करना ।',
    'योजना/जन कल्याणकारी की पात्रता': '18-60 वर्ष की महिलाओं की पात्रता एवं संबंधित ग्राम पंचायत की महिलायें।',
    'आवेदन कैसे करें': 'अपने ग्राम पंचायत की सक्रिय महिला से संपर्क कर महिला स्व-सहायता समूह का प्रपत्र तैयार कर जनपद पंचायत में जमा करे।',
    'आवश्यक दस्तावेज': '1- आधार कार्ड\n'
  '2- राशन कार्ड (परिवार विवरण)\n'
  '3- बैंक खाता का विवरण\n',
    'कैसे और कहाँ से क्या करना है।': 'अपने ग्राम पंचायत की सक्रिय महिला से संपर्क कर महिला स्व-सहायता समूह का प्रपत्र तैयार कर जनपद पंचायत में जमा करे।',
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
        title: Text('राष्ट्रीय ग्रामीण आजीविका मिशन "बिहान"'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्रधानमंत्री आवास योजना (ग्रा.) अंतर्गत आवास निर्माण रसोई सहित 25 वर्ग मीटर किया जाता है। राशि 1.20 लाख चार किस्तों में लाभार्थी के खाते में हस्तांतरित की जाती है मनरेगा से 90/95 दिनों की अकुशल मजदूरी भुगतान किया जाता है|',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'इस योजना का सभी बेघर परिवारों और कच्चे तथा टूटे फूटे मकानों में रहने वाले परिवारों को बुनियादी सुविधाओं से युक्त पक्का मकान उपलब्ध करना है पक्के आवास निर्माण के लिए लाभार्थी को 1.20 लाख प्रदान किया जाता है|',
    'योजना/जन कल्याणकारी की पात्रता': 'प्रधानमंत्री आवास योजना (ग्रामीण) के अंतर्गत पात्र लाभार्थियों के दायरे में बिपीएल सूचि के स्थान पर SECC-2011 के आकड़ो के अनुसार सभी बेघर परिवार और 01 एवम 2 कमरा कच्ची दिवार / कच्चा छत युक्त मकानों में रहने वाले परिवार पात्रता रखता है|',
    'आवेदन कैसे करें': 'योजनान्तर्गत SECC - 2011 में सर्वेक्षित ऐसे हितग्राही जिनका आवास 0, 1, एवम 2 कमरा कच्ची दिवार कच्चा छत के हैं उनका नाम आवास सॉफ्ट में इन्द्राज किया गया था, वर्तमान में सिर्फ उन्हें ही प्रधानमंत्री आवास योजना (ग्रामीण) से लाभान्वित किया जा सका है। अन्य आवेदन के आधार पर लाभान्वित नहीं किया जा सकता।',
    'आवश्यक दस्तावेज': 'चयनित हितग्राही का आधारकार्ड, बैंक पासबुक, जाबकार्ड, मोबाइल नम्बर, आधार सहमति पत्र, इत्यादि.|',
    'कैसे और कहाँ से क्या करना है।': 'ऑनलाईन संस्था प्रमुख द्वारा किया जाता है।',
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
        title: Text('प्रधानमंत्री आवास योजना (ग्रामीण)'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'स्वच्छ भारत मिशन (ग्रामीण) अंतर्गत व्यक्तिगत शौचालय निर्माण कार्य । राशि 12 हजार रू. पात्र लाभार्थी के खाते में हस्तांतरित की जाती है ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'इस योजना का उद्देश्य समस्त परिवारों में शौचालय की उपलब्धता हो तथा कोई भी खुले में शौच करने न जाये।',
    'योजना/जन कल्याणकारी की पात्रता': 'ग्राम में निवासरत् ऐसे परिवार जो मूल परिवार से पृथक हो चुके हो, जिनका राशन कार्ड पृथक से निर्मित हो, ऐसे बढ़े हुए परिवार समस्त BPL/APL SC/ST तथा APL ऐसे परिवार Small Marginal/ Land Less Labor/ Women Headed/ PWD Headed Family जिन्हे पूर्व में शौचालय के लिए किसी भी योजना से लाभ न मिला हो ।',
    'आवेदन कैसे करें': 'पात्र व्यक्ति जिनको शौचालय की आवश्यकता है वे अपना आवेदन ग्राम पंचायत के माध्यम से कर सकते है ।',
    'आवश्यक दस्तावेज': 'चयनित हितग्राही का आधारकार्ड, बैंक पासबुक, मोबाइल नम्बर.',
    'कैसे और कहाँ से क्या करना है।': 'स्वच्छ भारत मिशन (ग्रामीण) अंतर्गत ग्राम पंचायत से प्राप्त आवेदन का पुनः सत्यापन कर हितग्राहियों का चयन किया जाता है।',
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
        title: Text('स्वच्छ भारत मिशन (ग्रामीण)'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'ग्रामीण क्षेत्रों में निवासरत परिवार जो सामाजिक आर्थिक जनगणना के अनुसार अनिवार्यतः शामिल सूचकांक या वंचन सूचकांक के दायरे में आने वाले परिवार के मुखिया या किसी कमाऊ सदस्य की मृत्यु होने पर उनके अंतिम संस्कार के लिए तत्काल रूपये 2000-00 एकमुश्त वित्तीय सहायता उपलब्ध कराने का प्रावधान है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'श्रद्धांजलि योजना का उद्देश्य ग्रामीण क्षेत्रों में निवासरत परिवार जो सामाजिक आर्थिक जनगणना के अनुसार अनिवार्यतः शामिल सूचकांक या वंचन सूचकांक के दायरे में आने वाले परिवार के मुखिया या किसी कमाऊ सदस्य की मृत्यु होने पर उनके अंतिम संस्कार के लिए तत्काल रूपये 2000-00 एकमुश्त वित्तीय सहायता उपलब्ध कराने का प्रावधान है|',
    'योजना/जन कल्याणकारी की पात्रता': 'सामाजिक आर्थिक जनगणना के अनुसार अनिवार्यतः शामिल सूचकांक या वंचन सूचकांक|',
    'आवेदन कैसे करें': 'ग्राम पंचायत के माध्यम से जनपद पंचायत को',
    'आवश्यक दस्तावेज': 'मृत्यु प्रमाण पत्र सामाजिक आर्थिक जनगणना के शामिल सूचकांक या वंचन सूचकांक की सूची कैसे और कहां से क्या करना है।',
    'कैसे और कहाँ से क्या करना है।': 'मृत्यु होने पर संबंधित ग्राम पंचायत के सरपंच @सचिव द्वारा मृत व्यक्ति के आश्रितों को तत्काल ग्राम पंचायतों द्वारा स्वयं की निधि, अधोसंरचना, राज्य प्रवर्तित योजनाओं के ब्याज की राशि मूलभूत कार्यो 14 वे वित्त आयोग की राशि का उपयोग तत्कालिक रूप से किया जा सकेगा तथा योजना के तहत धनराशि प्राप्त होने पर व्यय राशि का समायोजन तत्काल किया जावेगा',
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
        title: Text('श्रद्धांजलि योजना'),backgroundColor: Color(0xFF49BAEE),
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
