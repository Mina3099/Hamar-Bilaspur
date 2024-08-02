import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
    'केन्द्र पोषित योजना',
    'राज्य पोषित योजना',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'केन्द्र पोषित योजना': (context) => DetailScreen1(),
    'राज्य पोषित योजना': (context) => DetailScreen2(),
    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('कृषि विभाग जिला मुंगेली, (छ.ग.)'),backgroundColor: Color(0xFF49BAEE),
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
    'प्रधानमंत्री फसल बीमा योजना (PMFBY)',
    'प्रधानमंत्री किसान सम्मान निधि योजना (PM KISAN )',
    'प्रधानमंत्री किसान मान धन योजना (PM-KMY)',
    'सबमिशन आWन एग्रीकल्चर एक्सटेंशन एक्स रि आत्मा',
    'सबमिशन आन सीड एण्ड प्लानटिंग मटेरियल के अंतर्गत बीज ग्राम योजना; च्द्ध',
    'सब मिशन आन एग्रीकल्चर मेकेनाइजेशन योजना अंतर्गत कृषि यंत्रो का वितरण',
    'रेनफेड एरिया डेव्हलपमेंट योजना (RAD)',
    'स्वायल हेल्थ कार्ड योजना',
    'परम्परागत कृषि विकास योजना',
    'प्रधानमंत्री कृषि सिंचाई योजना पर ड्राप मोर क्राप',
    'प्रधानमंत्री कृषि सिंचाई योजना] एकीकृत जलग्रहण प्रबंधन',
    'राष्ट्रीय खाद्य सुरक्षा मिशन चांवल @दलहन',

  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens ={
      'प्रधानमंत्री फसल बीमा योजना (PMFBY)': (context) => DetailScreen1a(),
  'प्रधानमंत्री किसान सम्मान निधि योजना (PM KISAN )': (context) => DetailScreen1b(),
  'प्रधानमंत्री किसान मान धन योजना (PM-KMY)': (context) => DetailScreen1c(),
  'सबमिशन आWन एग्रीकल्चर एक्सटेंशन एक्स रि आत्मा': (context) => DetailScreen1d(),
  'सबमिशन आन सीड एण्ड प्लानटिंग मटेरियल के अंतर्गत बीज ग्राम योजना; च्द्ध': (context) => DetailScreen1e(),
  'सब मिशन आन एग्रीकल्चर मेकेनाइजेशन योजना अंतर्गत कृषि यंत्रो का वितरण': (context) => DetailScreen1f(),
  'रेनफेड एरिया डेव्हलपमेंट योजना (RAD)': (context) => DetailScreen1g(),
  'स्वायल हेल्थ कार्ड योजना': (context) => DetailScreen1h(),
  'परम्परागत कृषि विकास योजना': (context) => DetailScreen1i(),
  'प्रधानमंत्री कृषि सिंचाई योजना पर ड्राप मोर क्राप': (context) => DetailScreen1j(),
  'प्रधानमंत्री कृषि सिंचाई योजना] एकीकृत जलग्रहण प्रबंधन': (context) => DetailScreen1k(),
  'राष्ट्रीय खाद्य सुरक्षा मिशन चांवल @दलहन': (context) => DetailScreen1l(),

    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('कृषि विभाग'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1a
class DetailScreen1a extends StatefulWidget {


  @override
  _DetailScreen1a createState() => _DetailScreen1a();
}

class _DetailScreen1a extends State<DetailScreen1a> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'खरीफ एवं रबी मौसम के लिए फसलों का बीमा',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'प्राकृतिक आपदाओं] कीट एवं रोगों के कारण अधिसूचित फसलों कों क्षति की स्थिति में कृषकों को बीमा कवरेज एवं वित्तीय सहायता प्रदाय करना।',
    'योजना/ जन कल्याणकारी की पात्रता':'अधिसूचित क्षेत्र में अधिसूचित फसल उगाने वाले सभी किसान',
    'आवेदन कैसे करें':'खरीफ मौसम के लिए 15 जुलाई एवं रबी मौसम के लिए 15 दिसम्बर के पूर्व निकटतम राष्ट्रीयकृत बैंक @क्षेत्रीय गामीण बैंक @जिला सहकारी केन्द्रीय बैंक@पाथमिक सहकारी समितियां@लोक सेवा केन्द्र (CSC) द्वारा भारत सरकार की बीमा पोर्टल के माध्यम से बीमा करा सकते है।',
    'आवश्यक दस्तावेज':'1- बीमा हेतु प्रस्ताव पत्र के साथ नवीनतम भूमि प्रमाण पत्र बी-1] पी-2\n'
  '2- फसल बुआई प्रमाण पत्र\n'
  '3- नवीनतम बैंक पासबुक\n'
  '4- आधार कार्ड की छायाप्रति\n',
    'कैसे और कहां से क्या करना है।':'फसल बीमा हेतु क्षेत्रीय ग्रा-कृ-वि-अ से संपर्क कर फसल बआई प्रमाण पत्र प्राप्त कर सकते है। अधिक जानकारी के लिए विकासखंड स्तर पर वरिष्ठ कृषि विकास अधिकारी कार्यालय से संपर्क कर सकेत है।',
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
        title: Text('प्रधानमंत्री फसल बीमा योजना (PMFBY)'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1b
class DetailScreen1b extends StatefulWidget {


  @override
  _DetailScreen1b createState() => _DetailScreen1b();
}

class _DetailScreen1b extends State<DetailScreen1b> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'समस्त किसान परिवारों को आर्थिक सहायता उपलब्ध कराना',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'कृषक परिवारों को प्रत्यक्ष आय सहायता के रूप में 6000 रू की राशि 3 समान किस्तो में प्रदाय की जाती है।',
    'योजना/ जन कल्याणकारी की पात्रता':'समस्त कृषक परिवार जिनका नाम राजस्व भू-अभिलेख में दर्ज है।',
    'आवेदन कैसे करें':'स्वधोषण पत्र सहित निर्धारित प्रारूप में आवश्यक दस्तावेज के साथ क्षेत्रीय ग्रा-कृ-वि-अ-@लोक सेवा केन्द्र @स्वपंजीयन के माध्यम से पंजीयन करा सकते हैं।',
    'आवश्यक दस्तावेज':'1- परिवार धारित भूमि का राजस्व अभिलेख |\n'
  '2- आधार कार्ड की छायाप्रति\n'
  '3. बैंक पासबुक की छायाप्रति\n'
  '4- मोबाईल नंबर एवं पता संबधी जानकारी',
    'कैसे और कहां से क्या करना है।':'कृषक क्षेत्रीय ग्रा-कृ-वि-अ- @लोक सेवा केन्द्र@स्वपंजीयन के माध्यमसे पंजीयन करा सकते हैं।',
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
        title: Text('प्रधानमंत्री किसान सम्मान निधि योजना (pm kisan)'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'लघु एवं सीमांत कृषकों के लिए स्वैच्छिक एवं अंशदायी वृद्धावस्था पेंशन योजना',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'सभी लघु एवं सीमांत किसानों, पुरूष एवं स्त्री दोनों के लिए 60 वर्ष की आयु पूर्ण करने पर 3000 रू की एक सुनिश्चित मासिक पेंशन की व्यवस्था',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी लघु एवं सीमांत कृषक जिनकी आयु 18 से 40 वर्ष है ओर जो अपवर्जन की श्रेणी में नही आते है। इस योजना में शामिल होकर लाभ प्राप्त करने के पात्र है।',
    'आवेदन कैसे करें':'इस योजना में शामिल लघु एवं सीमांत कृषक आधार कार्ड एवं बैंक पास के विवरण के साथ लोक सेवा केन्द्र (CSC)) के माध्यम से पंजीयन करा सकते है।',
    'आवश्यक दस्तावेज':'1- आधार कार्ड की छायाप्रति ।\n'
  '2- बैक पासबुक की छायाप्रति |',
    'कैसे और कहां से क्या करना है।':'निकटतम लोक सेवा केन्द्र (CSC)) से।',
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
        title: Text('प्रधानमंत्री किसान मान धन योजना (PM-KMY)'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1d
class DetailScreen1d extends StatefulWidget {


  @override
  _DetailScreen1d createState() => _DetailScreen1d();
}

class _DetailScreen1d extends State<DetailScreen1d> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'बीज वितरण, कृषक प्रशिक्षण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'कृषकों को उच्च गुणवत्ता युक्त आधार / प्रमाणित बीज वितरण करना कृषकों को अनाज कोठी हेतु सहायता देना',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी वर्ग के कृषकों हेतु प्ररन्तु लघु, सिमात अनुसूचित जाति, जनजाति एवं महिला कृषकों को प्राथमिकता',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'1. ऋण पुस्तिका की छ्याप्रति| \n'
  '2. आधार कार्ड की छायाप्रति ।\n'
  '3. बैंक पासबुक की छायाप्रति|',
    'कैसे और कहां से क्या करना है।':'फसल बीमा हेतु क्षेत्रीय ग्रा- कृ-वि-अ से संपर्क कर फसल बआई प्रमाण पत्र प्राप्त कर सकते है। अधिक जानकारी के लिए विकासखंड स्तर पर वरिष्ठ कृषि विकास अधिकारी कार्यालय से संपर्क कर सकेत है।',
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
        title: Text('सबमिशन आWन एग्रीकल्चर एक्सटेंशन एक्स रि आत्मा'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1e
class DetailScreen1e extends StatefulWidget {


  @override
  _DetailScreen1e createState() => _DetailScreen1e();
}

class _DetailScreen1e extends State<DetailScreen1e> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'टेक्टर] पावर टिलर] स्वचलित शक्ति चलित एवं हस्त@बैल चलित यंत्रों पर 40 से 50 प्रतिशत अनुदान पर वितरण|',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'फार्म पावर उपलब्धता में वृद्धि तथा कृषि कार्य में लगने वाले लागत को कम करने एवं फसल उत्पादन एवं उत्पादकता में वृिद्ध करना',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी वर्ग के कृषक',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'फसल बीमा हेतु क्षेत्रीय ग्रा कृवि अ से संपर्क कर फसल बआई प्रमाण पत्र प्राप्त कर सकते है। अधिक जानकारी के लिए विकासखंड स्तर पर वरिष्ठ कृषि विकास अधिकारी कार्यालय से संपर्क कर सकेत है।',
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
        title: Text('सबमिशन ऑन सीड एण्ड प्लानटिंग मटेरियल के अंतर्गत बीज ग्राम योजना; डैच्द्ध'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1f
class DetailScreen1f extends StatefulWidget {


  @override
  _DetailScreen1f createState() => _DetailScreen1f();
}

class _DetailScreen1f extends State<DetailScreen1f> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'कृषि आधारित फसल पद्यति के साथ उद्यानिकी आधारित फसल वृक्षा] चारा आधारित फसल] पशुधन आधारित फसल] मत्स्य आधारित फसल किसी भी एक फसल पद्यति को अपनाकर योजना का लाभ लिया जा सकता है।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'वर्षा आधारित क्षेत्रों में कृषकों को समन्वित कृषि प्रणाली के माध्यम से जोखित कम कर आजिविका साधन उपलब्ध कराना।',
    'योजना/ जन कल्याणकारी की पात्रता':'क्लस्टर आधार पर सभी वर्ग के कृषक लाभान्वित किये जाते है। क्लस्टर के हेक्टेयर कम से कम 100 हेक्टेयर होना चाहिए।',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन, आधार कार्ड',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('सब मिशन ऑन एग्रीकल्चर मेकेनाइजेशन योजना अंतर्गत कृषि यंत्रो का वितरण'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1g
class DetailScreen1g extends StatefulWidget {


  @override
  _DetailScreen1g createState() => _DetailScreen1g();
}

class _DetailScreen1g extends State<DetailScreen1g> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'कृषि आधारित फसल पद्यति के साथ उद्यानिकी आधारित फसल वृक्षा]चारा आधारित फसल] पशुधन आधारित फसल] मत्स्य आधारित फसल किसी भी एक फसल पद्यति को अपनाकर योजना का लाभ लिया जा सकता है।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'वर्षा आधारित क्षेत्रों में कृषकों को समन्वित कृषि प्रणाली के माध्यम से जोखित कम कर आजिविका साधन उपलब्ध कराना।',
    'योजना/ जन कल्याणकारी की पात्रता':'क्लस्टर आधार पर सभी वर्ग के कृषक लाभान्वित किये जाते है। क्लस्टर के हेक्टेयर कम से कम 100 हेक्टेयर होना चाहिए।',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1, नक्शा, खसरा निर्धारित प्रपत्र में आवेदन, आधार कार्ड',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('रेनफेड एरिया डेव्हलपमेंट योजना (RAD)'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1h
class DetailScreen1h extends StatefulWidget {


  @override
  _DetailScreen1h createState() => _DetailScreen1h();
}

class _DetailScreen1h extends State<DetailScreen1h> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'मृदा परीक्षण कर कृषकों को निःशुल्क स्वालय हेल्थ कार्ड देने का प्रावधान',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'राज्य के समस्त कृषकों को स्वायल हेल्थ कार्ड उपलब्ध कराकर समन्वित एवं संतुलित उर्वरक हेतु प्रोत्साहन करना',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी श्रेणी के कृषकों को लाभान्वित किया जा सकता है।',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन, आधार कार्ड',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('स्वायल हेल्थ कार्ड योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1i
class DetailScreen1i extends StatefulWidget {


  @override
  _DetailScreen1i createState() => _DetailScreen1i();
}

class _DetailScreen1i extends State<DetailScreen1i> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'कृषकों को जैविक रूपांतरण ] आदान प्रक्षेत्र में आदान निर्माण हेतु अधोसंरचना निर्माण के लिये कृषकों के खातों में (DBT) के माध्यम से राशि अंतरण एवं प्रशिक्षण तथा प्रमाणीकरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'प्राकृतिक संसाधनों को संरक्षित कर बाहरी इनपुट पर किसानों की निर्भरता को कम करने के लिए मिट्टी की उर्वरता के रख-रखाव और संवर्धन करना ] सतत् रसायन मुक्त और पौष्टिक खाद्य पदार्थ उत्पन्न करना',
    'योजना/ जन कल्याणकारी की पात्रता':'चयनित कलस्टर में सम्मिलित सभी वर्ग एवं श्रेणी के कृषक',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन, आधार कार्ड',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('प्परम्परागत कृषि विकास योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1
class DetailScreen1j extends StatefulWidget {


  @override
  _DetailScreen1j createState() => _DetailScreen1j();
}

class _DetailScreen1j extends State<DetailScreen1j> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'ड्रीप / स्प्रिंकलर सेट हेतु लघु एवं सिमांत कृषकों को इकाई लागत या वास्तविक लागत पर अनुदान का प्रावधान',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'सिंचाई दक्षता में वृद्धि',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी श्रेणी के कृषक अधिकतम 5-6 हेक्टेयर तक लाभान्वित किये जाते है।',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1, नक्शा, खसरा निर्धारित प्रपत्र में आवेदन, आधार कार्ड',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('प्रधानमंत्री कृषि सिंचाई योजना पर ड्राप मोर क्राप'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1k
class DetailScreen1k extends StatefulWidget {


  @override
  _DetailScreen1k createState() => _DetailScreen1k();
}

class _DetailScreen1k extends State<DetailScreen1k> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'उत्पादन प्रणीली एवं सूक्ष्म उद्यमियों के लिए क्षमता निर्माण आस्था मूलक क्रियाकलाप रिज एरिया उपचार, जल निकास लाईन उपचार मृदा एवं नमी संरक्षण] वन रोपण] बागवानी] चारागाह विकास एवं प्रभावी वर्षा जल प्रबंधन',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'जलग्रहण अपवाह क्षेत्र में मृदा एवं जल संरक्षण का प्रभावी प्रबंधन',
    'योजना/ जन कल्याणकारी की पात्रता':'जलग्रहण क्षेत्र के सभी कृषक लघु सिमांत कृषक परिसम्पत्ति रहित व्यक्तियों को प्राथमिकता',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1, नक्शा, खसरा निर्धारित प्रपत्र में आवेदन, आधार कार्ड',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('प्रधानमंत्री कृषि सिंचाई योजना एकीकृत जलग्रहण प्रबंधन'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen1l
class DetailScreen1l extends StatefulWidget {


  @override
  _DetailScreen1l createState() => _DetailScreen1l();
}

class _DetailScreen1l extends State<DetailScreen1l> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'कलस्टर प्रदर्शन] बीज वितरण] पौध एवं मृदा संरक्षण प्रबंधन] संसाधन संरक्षण तकनीकी उपकरण] फसल पद्यति',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'जिले में राष्ट्रीय खाद सुरक्षा मिशन अंतर्गत धान एवं दलहन फसल के क्षेत्र में उत्पादन एवं उत्पादकता में वृद्धि करना',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी वर्ग के कृषकों हेतु प्ररन्तु लघु, सिमात अनुसूचित जाति जनजाति एवं महिला कृषकों को प्राथमिकता',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1, नक्शा, खसरा निर्धारित प्रपत्र में आवेदन, आधार कार्ड',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('राष्ट्रीय खाद्य सुरक्षा मिशन चांवल@दलहन'),backgroundColor: Color(0xFF49BAEE),
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
  'गोधन न्याय योजना',
  'अक्ति बीज संवर्धन योजना',
  'दलहन बीज प्रोत्साहन योजना',
  'द्विफसलीय क्षेत्र विस्तार योजना',
  'ग्रीष्मकालीन धान के बदले दलहन] तिलहन एवं मक्का फसल प्रोत्साहन योजना',
  'जैविक खेती मिशन योजना',
  'कृषि श्रमिक के दक्षता उन्नयन योजना',
  'शाकम्भरी योजना',
  'किसान समृद्धि योजना',
  'राजीव गांधी किसान न्याय योजना (RGKNY)',
  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens ={
    'गोधन न्याय योजना': (context) => DetailScreen2a(),
    'अक्ति बीज संवर्धन योजना': (context) => DetailScreen2b(),
    'दलहन बीज प्रोत्साहन योजना': (context) => DetailScreen2c(),
    'द्विफसलीय क्षेत्र विस्तार योजना': (context) => DetailScreen2d(),
    'ग्रीष्मकालीन धान के बदले दलहन] तिलहन एवं मक्का फसल प्रोत्साहन योजना': (context) => DetailScreen2e(),
    'जैविक खेती मिशन योजना': (context) => DetailScreen2f(),
    'कृषि श्रमिक के दक्षता उन्नयन योजना': (context) => DetailScreen2g(),
    'शाकम्भरी योजना': (context) => DetailScreen2h(),
    'किसान समृद्धि योजना': (context) => DetailScreen2i(),
    'राजीव गांधी किसान न्याय योजना (RGKNY)': (context) => DetailScreen2j(),

    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('कृषि विभाग'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'छ.ग. शासन की महत्वाकांक्षी गोधन न्याय योजना का शुभारंभ 20 जुलाई 2020 को हुआ । योजनांतर्गत गौठानों में पशुपालकों से 2 रू- प्रति किग्रा की दर से गोबर क्रय किया जाता है। क्रय गोबर से वर्मी कम्पोस्ट एवं अन्य उत्पाद तैयार किए जा रहे है।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'1- पशुपालकों की आय में वृद्धि ।\n'
  '2- पशुधन विचरण एवं खुली चराई पर रोक।\n'
  '3- जैविक खाद के उपयोग को बढ़ावा एवं रासायनिक उर्वरक उपयोग में कमी लाना।\n'
  '4- खरीफ एवं रबी फसल सुरक्षा एवं द्विफसलीय क्षेत्र विस्तार |\n'
  '5- स्थानीय स्तर पर जैविक खाद की उपलब्धता ।\n'
  '6- स्थानीय स्व-सहायता समूहों को रोजगार |\n'
  '7- भूमि की उर्वरता में सुधार।\n'
  '8- विष रहित खाद्य पदार्थों की उपलब्धता एवं सुपोषण ।',
    'योजना/ जन कल्याणकारी की पात्रता':'योजनांतर्गत सभी वर्ग के पशुपालक पत्रा होंगे।',
    'आवेदन कैसे करें':'ग्राम के गौठान में संबंधित नोडल अथवा सचिव से गोबर विक्रेता के रूप गोधन मोबाईल एप के माध्यम से पंजीयन करावें ।',
    'आवश्यक दस्तावेज':'परिचय पत्र राशन कार्ड, आधार कार्ड ] इत्यादि व बैंक विवरण ।',
    'कैसे और कहां से क्या करना है।':'गोठान के नोडल @सचिव से संपर्क करें।',
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
        title: Text('गोधन न्याय योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2b
class DetailScreen2b extends StatefulWidget {


  @override
  _DetailScreen2b createState() => _DetailScreen2b();
}

class _DetailScreen2b extends State<DetailScreen2b> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'बीज उत्पादन एवं वितरण पर अनुदान',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'उच्च गुणवत्ता युक्त आधार एवं प्रमाणित बीज की उचित मूल्य पर उपलब्धता सुनिश्चित करना',
    'योजना/ जन कल्याणकारी की पात्रता':'छ.ग. राज्य बीज प्रमाणिकरण संस्था में पंजीकृत कृषक एवं ऐसे कृषक जिन्होने बीज उत्पादन संचालनालय कृषि अथवा छ.ग. राज्य बीज एवं कृषि विकास निगम लिमिटेड के माध्यम से लिया है।',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('अक्ति बीज संवर्धन योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2c
class DetailScreen2c extends StatefulWidget {


  @override
  _DetailScreen2c createState() => _DetailScreen2c();
}

class _DetailScreen2c extends State<DetailScreen2c> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'10 वर्ष से अधिक अधिसूचित दलहन बीज किस्म पर 1000 प्रति क्विं उत्पादन अनुदान देय बीज उत्पादन पर अनुदान का भुगतान उप संचालक कृषि द्वारा संबंधित संस्था के माध्यम से कृषक को किया जावेगा।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'दलहन बीज उत्पादन हेतु प्रोत्साहन',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी वर्ग के कृषकों हेतु परन्तु लघु] सिमात अनुसूचित जाति, जनजाति एवं महिला कृषकों को प्राथमिकता',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('दलहन बीज प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2d
class DetailScreen2d extends StatefulWidget {


  @override
  _DetailScreen2d createState() => _DetailScreen2d();
}

class _DetailScreen2d extends State<DetailScreen2d> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'प्रति कृषक न्यूनतम 0-1 हेक्टेयर एवं अधिकतम 2 हेक्टेयर क्षेत्र तक सहायता की पात्रता होगी।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'कृषकों को द्विफसलीय खेती के लिए प्रोत्साहित करना । रबी फसलों के उन्नत कृषि तकनीक अपनाने हेतु कृषकों को प्रोत्साहित कर रबी फसलों की उत्पादन @उत्पादकता में वृद्धि करना',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी वर्ग के कृषकों हेतु प्ररन्तु लघु] सिमात अनुसूचित जाति जनजाति एवं महिला कृषकों को प्राथमिकता आवेदन कैसे करें',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('द्विफसलीय क्षेत्र विस्तार योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2e
class DetailScreen2e extends StatefulWidget {


  @override
  _DetailScreen2e createState() => _DetailScreen2e();
}

class _DetailScreen2e extends State<DetailScreen2e> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'प्रति कृषक न्यूनतम 0-4 हेक्टेयर के लिए एवं अधिकतम 2 हेक्टेयर के लिए अनुदान देय होगा।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'ग्रीष्मकालीन धान के विकल्प के रूप में दलहन तिलहन एवं मक्का फसल के क्षेत्र वृद्धि कर उत्पादन को बढ़ावा देना',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी वर्ग के कृषकों हेतु प्ररन्तु लघु सिमात अनुसूचित जाति जनजाति एवं महिला कृषकों को प्राथमिकता',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1, नक्शा, खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('ग्रीष्मकालीन धान के बदले दलहन तिलहन एवं मक्का फसल प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2f
class DetailScreen2f extends StatefulWidget {


  @override
  _DetailScreen2f createState() => _DetailScreen2f();
}

class _DetailScreen2f extends State<DetailScreen2f> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'जैविक फसल प्रदर्शन जैविक कृषि तकनीक से संबंधित प्रशिक्षण ] भ्रमण का प्रावधान] जैविक क्षेत्रों के सामुहिक प्रमाणीकरण हेतु अनुदान का प्रावधान] जैविक खाद कम्पोस्ट खाद उत्पादन इकाई की स्थापना',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'जिला में जैविक खेती द्वारा लागत में कमी एवं टिकाऊ उत्पादकता प्राप्त करना प्रमाणित जैविक खेती को बढ़ावा देना',
    'योजना/ जन कल्याणकारी की पात्रता':'चयनित कलस्टर में सम्मिलित सभी वर्ग एवं श्रेणी के कृषक',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('जैविक खेती मिशन योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2g
class DetailScreen2g extends StatefulWidget {


  @override
  _DetailScreen2g createState() => _DetailScreen2g();
}

class _DetailScreen2g extends State<DetailScreen2g> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'कृषि कार्यों हेतु उपयोगी कृषि यंत्र कीट कृषि मजदूरों को निःशुल्क, यंत्रों के उपयोग एवं रख-रखाव के संबंध में कृषक समुह को दो दिवसीय प्रशिक्षण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'कृषि मजदूरों के कार्य को सरल बनाने एवं उनके समय की बचत',
    'योजना/ जन कल्याणकारी की पात्रता':'पंजीकृत कृषि मजदूर समूह',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1, नक्शा, खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('कृषि श्रमिक के दक्षता उन्नयन योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2h
class DetailScreen2h extends StatefulWidget {


  @override
  _DetailScreen2h createState() => _DetailScreen2h();
}

class _DetailScreen2h extends State<DetailScreen2h> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'कूप निर्माण हेतु अधिकतम वास्तविक लागत का 50 प्रतिशत जो भी कम हो अनुदान देय है। सिंचाई पम्प जैसे डीजल, विद्युत, पेट्रोल पम्प पर अनुदान का प्रावधान',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'सिंचाई संसाधनों का विकास करना',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी श्रेणी लघु/ सिमांत कृषक',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1 नक्शा खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'चेम्प्स के माध्यम से पंजीयन कराकर',
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
        title: Text('शाकम्भरी योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2i
class DetailScreen2i extends StatefulWidget {


  @override
  _DetailScreen2i createState() => _DetailScreen2i();
}

class _DetailScreen2i extends State<DetailScreen2i> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'नलकूप खनन एवं पम्प प्रतिस्थापन हेतु अनुसूचित जाति@ अन्य पिछड़ा वर्ग / सामान्य वर्ग के कृषकों को अनुदान दिया जाता है।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'प्रदेश में उपलब्ध भू-जल का नलकूपों द्वारा समुचित उपयोग एवं फसलों को सिंचाई सुविधा उपलब्ध कराकर उत्पादकता एवं फसल सघनता में वृद्धि करना।',
    'योजना/ जन कल्याणकारी की पात्रता':'सभी श्रेणी के कृषक योजना में लाभान्वित किये जाते है परन्तु लघु सिमांत कृषकों को प्राथमिकता दी जाती है।',
    'आवेदन कैसे करें':'क्षेत्रीय ग्रामीण कृषि विस्तार अधिकारी से सम्पर्क कर',
    'आवश्यक दस्तावेज':'बी. 1, नक्शा, खसरा निर्धारित प्रपत्र में आवेदन',
    'कैसे और कहां से क्या करना है।':'खण्ड स्तर पर व.कृ.वि.अ. कार्यालय से सम्पर्क कर सकते है।',
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
        title: Text('किसान समृद्धि योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2j
class DetailScreen2j extends StatefulWidget {


  @override
  _DetailScreen2j createState() => _DetailScreen2j();
}

class _DetailScreen2j extends State<DetailScreen2j> {
  final List<String> items = [
    'योजना / जन कल्याणकारी कार्य का विवरण',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ',
    'योजना/ जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहां से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना / जन कल्याणकारी कार्य का विवरण':'योजनांतर्गत पंजीकृत कृषकों को फसल के लिए निर्धारित राशि प्रति एकड़ की दर से आदान सहायता राशि किश्तों में कृषकों के खाते में DBT के माध्यम से भुगतान किया जाता है।',
    'योजन / जन कल्याणकारी कार्य का उदेश्य एवं लाभ':'फसल क्षेत्राच्छादन] उत्पादन एवं उत्पादकता में वृद्धि] फसल के काश्त लागत की प्रतिपूर्ति कर कृषकों के शुद्ध आय में वृद्धि करना ] कृषि में अधिक निवेश हेतु प्रोत्साहन एवं कृषि को लाभ के व्यवसाय के रूप में स्थापित करना।',
    'योजना/ जन कल्याणकारी की पात्रता':'योजनातर्गत सम्मिलित फसल खरीफ मौसम में थान, मक्का, सोयाबीन, मूगफली, तिल, अरहर, मूंग, उड़द, कुल्थी, रामतिल, कोदो-कुटकी, रागी एवं रबी मे गन्ना फसल बोने वाले सभी कृषक जिनके द्वारा पंजीयन कराया गया है।',
    'आवेदन कैसे करें':'ग्रामीण कृषि विस्तार अधिकारी द्वारा सत्यापन पश्चात पात्र कृषकों का प्राथमिक सहकारी समितियों के माध्यम से पंजीयन किया जाता है।',
    'आवश्यक दस्तावेज':'निर्धारित प्रारूप में आवेदनं ।',
    'कैसे और कहां से क्या करना है।':'कृषक क्षेत्रीय ग्रा.कृ.वि.अ./ प्राथमिक सहकारी समितियों के माध्यम से पंजीयन करा सकते हैं।',
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
        title: Text('राजीव गांधी किसान न्याय योजना (RGKNY)'),backgroundColor: Color(0xFF49BAEE),
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