import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'मुख्यमंत्री युवा स्वरोजगार योजना',
  'प्रधानमंत्री रोजगार सृजन कार्यक्रम योजना',
  'प्रधानमंत्री सूक्ष्म खाद्य उन्नयन योजना',

  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
  'मुख्यमंत्री युवा स्वरोजगार योजना': (context) => DetailScreen1(),
  'प्रधानमंत्री रोजगार सृजन कार्यक्रम योजना': (context) => DetailScreen2(),
    'प्रधानमंत्री सूक्ष्म खाद्य उन्नयन योजना': (context) => DetailScreen3(),

    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('वाणिज्य और उद्योग '),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'मुख्यमंत्री युवा स्वरोजगार योजना राज्य सरकार की अति महत्वपूर्ण योजना है। इस योजना के तहत युवा उद्यमी को व्यवसाय क्षेत्र में 2 लाख, सेवा क्षेत्र में 10 लाख एवं विनिर्माण क्षेत्र में 25 लाख तक ऋण बैंको के माध्यम से उपब्ध कराया जाता है। योजनांतर्गत समान्य वर्ग के हितग्राहियों को 10 प्रतिशत] अपिव ] विकलांग भूतपूर्व सैनिक अल्पसंख्य महिलाओं को 15 प्रतिशत अ]जाति] अ.ज.जाति को 25 प्रतिशत क्रमशः अधिकतम रू. 1000000 एवं 150000 मार्जिन मनी अनुदान का प्रावधान है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'राज्य के युवाओं को स्व-उद्यम की स्थापना कर आर्थिक दृष्टि से स्वावलंबी एवं आत्म निर्भर बनाने के लिये राज्य शासन द्वारा मुख्यमंत्री युवा स्व-रोजगार योजना घोषित किया गया है।',
    'योजना/जन कल्याणकारी की पात्रता': 'आवेदक छ.ग. राज्य का मूल निवासी हो, आवेदक आठवीं कक्षा उत्तीर्ण हो, आवेदक की आयु 18 से 35 वर्ष के मध्य हो, अपिव] विकलांग] भूतपूर्व सैनिक] अल्पसंख्य] महिलाओं] अ.जाति] एवं अ.ज.जाति आवेदक को 5 वर्ष की छूट ] परिवार की वार्षिक आय रू. 300 लाख से अधिक ना हो|',
    'आवेदन कैसे करें': 'आवेदन कार्यालय जिला व्यापार एवं उद्योग केन्द्र मुंगेली, कलेक्टेट बिल्डिंग, रूम नं. 215 में स्वयं उपस्थित होकर निर्धारित फार्म में आॅफ लाईन पूर्ण आवेदन करें।',
    'आवश्यक दस्तावेज': 'परियोजना प्रतिवेदन, अंक सूची, स्थाई निवास प्रमाण पत्र / राशन कार्ड / मतदाता पहचान प्रमाण पत्र / ड्राइविंग लायसेंस, सक्षम अधिकारी द्वारा जारी जाति / निःशक्तजन ] भूतपूर्व सैनिक] अल्पसंख्यक प्रमाण पत्र] परिवार की वार्षिक आय के संबंध में प्रमाण पत्र] शपथ पत्र] आधार कार्ड पेन कार्ड] फोटो आदि।',
    'कैसे और कहाँ से क्या करना है।': 'जिला व्यापार एवं उद्योग केन्द्र मुंगेली कलेक्टोरेट परिसर, कंपोजिट बिल्डिंग, रूम नं. 215 में स्वयं उपस्थित होकर समस्त आवश्यक दस्तावेज के साथ निर्धारित फार्म में दो प्रतियों में आवेदन करें।',
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
        title: Text('मुख्यमंत्री युवा स्वरोजगार योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्रधानमंत्री रोजगार सृजन योजना केंद्र सरकार की अति महत्वपूर्ण योजना है। इस योजना के तहत नव उद्यमी को सेवा क्षेत्र में रू.10 लाख एवं विनिर्माण क्षेत्र में रू. 25 लाख तक अधिकतम ऋण बैंको के माध्यम से उपलब्ध कराया जाता है। योजनांतर्गत हितग्राहियों को 5-10 प्रतिशत तक आंशदान लगाया जाना है। योजनांतर्गत शहरी क्षेत्र में समान्य वर्ग के हितग्राहियों को परियोजना लागत का 15 प्रतिशत एवं अपिव / अ. जाति/अ.ज.जाति / विकलांग/भूतपूर्व सैनिक] अल्पसंख्यd] महिलाओं को 25 प्रतिशत एवं ग्रामीण क्षेत्र में समान्य वर्ग के हितग्राहियों को 25 प्रतिशत एवं अपिव] अ. जाति] अ.ज.जाति ] विकलांग] भूतपूर्व सैनिक] अल्पसंख्य] महिलाओं को 35 प्रतिशत अनुदान का प्रावधान है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'बेरोजगार युवाओं को स्वरोजगार के माध्यम से सूक्ष्म लघु सेवा एवं उद्योग की स्थापना से देश के ग्रामीण और शहरी क्षेत्र में रोजगार के आवसरों का सृजन कराना।',
    'योजना/जन कल्याणकारी की पात्रता': 'आवेदक की आयु न्यूनतम 18 वर्ष से अधिक हो, पूर्व में राज्य अथवा भारत सरकार की किसी भी योजना से लाभ प्राप्त न किया हो, केवल नवीन परियोजनाओं की स्थापना हेतु, सेवा कार्य हेतु 5-00 लाख रू. एवं विनिर्माण कार्य हेतु 10-00 लाख से अधिक की परियोजना हेतु न्यूतम 8 वीं उत्तीर्ण होना अनिवार्य है। स्वसहायता समूह एवं कापरेटिव सोसायटी जो अन्य योजना से लाभान्वित न हो|',
    'आवेदन कैसे करें': 'आवेदन पीएमईजीपी की साईट\n'
  "www.kviconline.gov.in"
    '\n'
  'आवश्यक जानकारी एवं दस्तावेज संलग्न कर आवेदन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'आधार कार्ड, पेन कार्ड, परियोजना प्रतिवेदन, जाति प्रमाण पत्र, निवास प्रमाण पत्र, आय प्रमाण पत्र, राशन कार्ड, शैक्षणिक योग्यता प्रमाण पत्र, बैंक पास बुक यदि हो तो, यदि इकाई ग्रामीण क्षेत्र में स्थापित हो तो ग्राम पंचायत का अनापत्ती प्रमाण पत्र । आईटीआर की प्रति यदि हो तो ] दुकान स्थापना प्रमाण पत्र यदि हो तो, अनुभाव प्रमाण पत्र यदि हो तो|',
    'कैसे और कहाँ से क्या करना है।': 'आवेदन पीएमईजीपी की साईट\n'
  "www.kviconline.gov.in"
  '\n'
  'किया जा सकता है एवं जिला व्यापार एवं उद्योग केन्द्र मुंगेली कलेक्टोरेट परिसर, कंपोजिट बिल्डिंग, रूम नं. 215 में संपर्क कर योजना प्रभारी से जानकारी प्राप्त की जा सकती है।',
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
        title: Text('प्रधानमंत्री रोजगार सृजन कार्यक्रम योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'असंगठित खाद्य प्रसंस्करण क्षेत्र को कई चुनौतियों का सामना करना पड़ता है, जिससे इनका काम एवं वृद्वि सिमित हो जाती है। इन चुनौतियों में आधुनिक प्रौद्योगिकी एवं उपकरणों की उपलब्धता] प्रशिक्षण, संस्थानिक ऋण की उपलब्धता] उत्पादों की गुणवत्ता नियंत्रण के संबंध में जानकारी में कमी तथा ब्रांडिंग एवं विपणन कौशल में कमी है। इस लिए असंगठित खाद्य प्रसंस्करण के उद्योगों को मूल्य वर्धन तथा आउटपुट हेतु सहयोग योजना के माध्यम से कराना।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'कौषल प्रषिक्षण, खाद्य सुरक्षा मानकों एवं स्वच्छता के संबंध में तकनीकी ज्ञान देने एवं गुणवत्ता सुधार के माध्यम से क्षमता निर्माण प्रौद्योगिकी उन्नयन के लिए मौजूदा सूक्ष्म, खाद्य प्रसंस्करण उद्यमियों को ऋण दिलाना। मौजूदा उद्यमों को विभिन्न सरकारी पंजीकरण हेतु औपचारिक फ्रेमवर्क की ओर जाने में सहायता ब्रांडिंग और विपणन को मजबूत करके एफ.पी.ओ. कृषक उत्पादक संगठनों, स्वयं सहायता समूहों एस.एच.जी उत्पादक सहकारिताओं को सहायता ।',
    'योजना/जन कल्याणकारी की पात्रता': 'उद्यम के स्वामित्व अधिकार के साथ व्यक्तिगत / भागीदार फर्म मौजूदा सूक्ष्म खाद्य उद्यम जो कि सर्वे या रिसोर्सपर्सन द्वारा जांचे गए हों। आवेदक 18 वर्ष से अधिक का हो और कम से कम 8वीं कक्षा की शैक्षणिक योग्यता रखता हो। वित्तीय सहायता प्राप्त करने के लिए एक परिवार से केवल एक व्यक्ति पात्र होगा। समूह यदि है तो कम से कम तीन वर्षों तक व्क्व्च् उपज के प्रसंस्करण में लगा हुआ हो। समूह का न्यूनतम टर्नओवर 1 करोड़ से अधिक नही होना चाहिए।',
    'आवेदन कैसे करें': 'आवेदन आन लाईन तथा आफ लाईन किया जा सकता है। आन लाईन आवेदन हेतु वेबसाइट-\n'
  "mofpi.nic.in",
    'आवश्यक दस्तावेज': 'विद्यमान इकाई होने का प्रमाण एस.एच.जी., ए.पी.ओ. सहकारिताओं के लिए पंजीयन प्रमाण पत्र एवं तीन वर्ष तक कार्यरत होन  का प्रमाण जन्म प्रमाण पत्र, कक्षा 8वीं का अंकसूची, विद्यमान सूक्ष्म खाद्य उद्यम की सर्वे यो रिसोर्सपर्सन का प्रतिवेदन |',
    'कैसे और कहाँ से क्या करना है।': 'जिला व्यापार एवं उद्योग केन्द्र मुंगेली कलेक्टोरेट परिसर कंपोजिट बिल्डिंग, रूम नं. 215 में संपर्क करें।',
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
        title: Text('प्रधानमंत्री सूक्ष्म खाद्य उन्नयन योजना'),backgroundColor: Color(0xFF49BAEE),
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