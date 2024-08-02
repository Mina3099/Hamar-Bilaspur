import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'मुख्यमंत्री खाद्यान्न सहायता योजना',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'मुख्यमंत्री खाद्यान्न सहायता योजना': (context) => DetailScreen1(),
    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('मुख्यमंत्री खाद्यान्न सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना / जन कल्याणकारी की पात्रता',
    'योजना/ जन कल्याणकारी की पात्रता',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'इस योजना के अंतर्गत लक्षित गरीब परिवारों का, पात्रता के आधार पर \n'
  '1. अन्त्योदय राशनकार्ड \n'
  '2. प्राथमिकता राशनकार्ड \n'
  '3. नि:शक्तजन राशनकार्ड जारी किया जाता है। \n'
  '4. एक ही परिवार का एक ही राशनकार्ड (राशनकार्ड अधिनियम 2016 अनुसार) \n',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'इस योजना का उद्देश्य लक्षित गरीब परिवारों को न्यूनतम दर पर चावल, शक्कर, केरोसिन प्रदाय किया जाना एवं लाभान्वित हितग्राहीयों को अन्त्योदय राशनकार्ड में 35 किलो चावल, 1 किलो शक्कर, व नमक एवं 1 लिटर केरोसिन प्रति कार्ड । प्राथमिकता राशनकार्ड में प्रति व्यक्ति 7 किलो चावल, 1 किलो शक्कर वं नमक एवं 1 लिटर केरोसिन प्रति कार्ड, टीप: शासन द्वारा निर्धारित दर । निःशक्त राशनकार्ड में निःशुल्क 10 किलो चावल प्रदाय किया जाता है। एपीएल राशनकार्ड : प्रति व्यक्ति 10 किलो, टीप: शासन द्वारा निर्धारित दर |',
    'योजना/जन कल्याणकारी की पात्रता': '1. अन्त्योदय राशनकार्ड हेतु विधवा / परित्यक्ता, बैगा परिवार, निःशक्त परिवार\n'
    '2. प्राथमिकता राशनकार्ड हेतु ग्रामीण स्तर में भूमिहीन मजदूर, लघु/ सीमांत कृष्षक, एवं असंगठित / संगठित मजदूर प्राथमिकता राशनकार्ड हेतु सक्षम अधिकारी सामाजिक, आर्थिक एवं जातीय मापदण्ड पर आधारित जनगणना 2011 में किये गये सर्वे की रिपोर्ट के साथ (परिवार की वरिष्ष्ट महिला, मुखिया के रूप दर्ज) परिवार के सदस्यों का मिलान करेगा। सही पाये जाने पर, परिवार की जानकारी की छायाप्रति आवेदन के साथ संलग्न करेगा।'
    '3. निःशक्तजन राशनकार्ड विकलांग को जारी किया जाता है।'
    '4. एपीएल राशनकार्ड हेतु सभी पात्र है।',
    'आवेदन कैसे करें': 'हितग्राहीयों द्वारा ग्रामीण स्तर पर कार्यालय ग्राम पंचायत में एवं शहरी क्षेत्र में नगर पंचायत / नगर पालिका / नगर निगम कार्यालय में आवेदन प्रस्तुत किया जाना है।',
    'योजना / जन कल्याणकारी की पात्रता': 'ग्रामीण स्तर पर\n'
    '\n'
        '1. प्रपत्र 1 फार्म\n'
  '2. ग्राम पंचायत का प्रस्ताव\n'
  '3. पटवारी प्रतिवेदन\n'
  '4. पात्रता संबंधि प्रमाण पत्र\n'
  '5. हितग्राही व सदस्यों का आधार कार्ड\n'
  '6 श्रम विभाग से जारी प्रमाण पत्र\n'
  '7. वरिष्ष्ट महिला मुखिया का बैंक खाता, शासन के आदेशानुसार दस्तावेजों में बदलाव होता रहता है। (परिवार की परिभाषा राशनकार्ड नियम 2016 अनुसार )\n'
  '\n'
  'राशनकार्ड में सदस्यों का नाम जोडने हेतु\n'
  '1. प्रपत्र 2 फार्म\n'
  '2. राशनकार्ड की छायाप्रति\n'
  '3. आधार कार्ड की छायाप्रति\n'
  'टीप:- (शासन के निर्देशानुसार)\n'
    '\n'
    '\n'
    'शहरी स्तर पर\n'
    '\n'
    ' नवीन राशनकार्ड हेतु\n'
  '1. प्रपत्र 1 फार्म 2 श्रम विभाग से जारी प्रमाण पत्र\n'
  '2. पटवारी प्रतिवेदन\n'
  '3. पात्रता संबंधि प्रमाण पत्र\n'
  '4. हितग्राही व सदस्यों का आधार कार्ड\n'
  '5. वरिष्ष्ट मुखिया का बैंक खाता, शासन के आदेशानुसार दस्तावेजों में बदलाव होता रहता है। (एक परिवार का एक ही राशनकार्ड जारी होगा)\n'
    '\n'
  'राशनकार्ड में सदस्यों का नाम जोडने हेतु\n'
  '1. प्रपत्र 2 फार्म\n'
  '2. राशनकार्ड की छायाप्रति\n'
  '3. आधार कार्ड की छायाप्रति',
    'योजना/ जन कल्याणकारी की पात्रता': 'ग्रामीण स्तर में ग्राम पंचायत सरपंच व सचिव के द्वारा महिला मुखिया का आवेदन का (परिवार का ) परिक्षण उपरांत पात्र पाये जाने पर संबंधित जनपद पंचायत में प्रस्तुत किया जाता है, जनपद पंचायत के द्वारा परीक्षण कर अपने अनुशंसा सहित जिला कार्यालय को प्रेषित कर दिया जाता है। शहरी क्षेत्र में नगर पंचायत / नगर पालिका / नगर निगम में आवेदनों (महिला मुखिया परिवार) का परीक्षण कर पात्र पाये जाने पर अनुशंसा सहित जिला कार्यालय में प्रेषित किया जाता है।',
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
        title: Text('मुख्यमंत्री खाद्यान्न सहायता योजना'), backgroundColor: Color(0xFF49BAEE),
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