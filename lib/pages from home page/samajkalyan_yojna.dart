import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'सामाजिक सहायता कार्यक्रम अंतर्गत संचालित पेंशन योजनाऐं',
  'निःशक्त कल्याण',
  'वृद्धाश्रम का संचालन',
  'तृतीय लिंग कल्याण',
  'माता-पिता एवं वरिष्ठ नागरिक का भरण-पोषण और कल्याण अधिनियम, 2007',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'सामाजिक सहायता कार्यक्रम अंतर्गत संचालित पेंशन योजनाऐं': (context) => DetailScreen1(),
    'निःशक्त कल्याण': (context) => DetailScreen2(),
    'वृद्धाश्रम का संचालन': (context) => DetailScreen3(),
    'तृतीय लिंग कल्याण': (context) => DetailScreen4(),
    'माता-पिता एवं वरिष्ठ नागरिक का भरण-पोषण और कल्याण अधिनियम, 2007': (context) => DetailScreen5(),
    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('समाज कल्याण विभाग'),backgroundColor: Color(0xFF49BAEE),
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
  'इंदिरा गांधी राष्ट्रीय वृद्धा पेंशन योजना',
  'इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना',
  'इंदिरा गांधी राष्ट्रीय निःशक्त पेंशन योजना',
  'सामाजिक सुरक्षा पेंशन योजना',
  'सुखद सहारा पेंशन योजना',
  'मुख्यमंत्री पेंशन योजना',
  'राष्ट्रीय परिवार सहायता योजना',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
  'इंदिरा गांधी राष्ट्रीय वृद्धा पेंशन योजना': (context) => DetailScreen1a(),
  'इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना' : (context) => DetailScreen1b(),
  'इंदिरा गांधी राष्ट्रीय निःशक्त पेंशन योजना' : (context) => DetailScreen1c(),
  'सामाजिक सुरक्षा पेंशन योजना' : (context) => DetailScreen1d(),
  'सुखद सहारा पेंशन योजना' : (context) => DetailScreen1e(),
  'मुख्यमंत्री पेंशन योजना' : (context) => DetailScreen1f(),
    'राष्ट्रीय परिवार सहायता योजना' : (context) => DetailScreen1g(),


    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('सामाजिक सहायता कार्यक्रम अंतर्गत संचालित पेंशन योजनाऐं'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreen2
class DetailScreen2 extends StatefulWidget {


  @override
  _DetailScreen2 createState() => _DetailScreen2();
}

class _DetailScreen2 extends State<DetailScreen2> {
  final List<String> items = [
  'दिव्यांग विवाह प्रोत्साहन योजना',
  'निःषक्तजनों के लिए स्वरोजगार हेतु ऋण योजना',
  'सामथ्र्य विकास योजना',
  'दिव्यांग छात्रवृत्ति',
  'दिव्यांग छात्रगृह योजना',
  'सिविल सेवा प्रोत्साहन योजना',
  'षिक्षा प्रोत्साहन योजना',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
  'दिव्यांग विवाह प्रोत्साहन योजना' : (context) => DetailScreen2a(),
  'निःषक्तजनों के लिए स्वरोजगार हेतु ऋण योजना'  : (context) => DetailScreen2b(),
  'सामथ्र्य विकास योजना'  : (context) => DetailScreen2c(),
  'दिव्यांग छात्रवृत्ति' : (context) => DetailScreen2d(),
  'दिव्यांग छात्रगृह योजना' : (context) => DetailScreen2e(),
  'सिविल सेवा प्रोत्साहन योजना' : (context) => DetailScreen2f(),
    'षिक्षा प्रोत्साहन योजना'  : (context) => DetailScreen2g(),


    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('निःशक्त कल्याण'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'वृद्धाश्रम का संचालन',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': '60 वर्ष या इससे अधिक आयु के निराश्रित वृद्धजनों को निःशुल्क भोजन, आश्रय, चिकित्सीय देखभाल मनोरंजनात्मक सुविधाएं आदि उपलब्ध कराना।',
    'योजना/जन कल्याणकारी की पात्रता': 'इसके लिए आयु 60 वर्ष से अधिक होना चाहिए तथा परिवार से परित्यक्त होना अनिवार्य है।',
    'आवेदन कैसे करें': 'आवेदन करने की आवश्यकता नही है, आश्रम / कार्यालय से संपर्क करने से प्रवेश दिया जाता है।',
    'आवश्यक दस्तावेज': 'आवश्यक दस्तावेज उपलब्ध होने पर आधार कार्ड की आवश्यकता होती है, जिससे संबंधित वृद्ध का पूर्ण पता उपलब्ध हो जाता हैं।',
    'कैसे और कहाँ से क्या करना है।': 'उप संचालक समाज कल्याण विभाग, जिला कार्यालय मुंगेली या वृद्धाश्रम रामगढ़ मुंगेली में संपर्क कर सकते है।',
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
        title: Text('वृद्धाश्रम का संचालन'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'छ. ग. देश का पहला राज्य, जिसने अपने युवाओं को उनके मन पसंद व्यवसायों में कौशल प्रशिक्षण पाने हेतु कौशल विकास अधिकार अधिनियम 2013 बनाया गया। जिसके अंतर्गत युवाओं को उनके मन पसंद व्यवसायों में तकनीकी प्रशिक्षण पाने का अधिकार प्राप्त हुआ है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पढाई छोढ़ चुके या कम पढे लिखे युवाओं को हुनरमंद बनाने के लिए राज्य में कौशल विकास योजना का संचालन किया जा रहा है। इस योजना के अंतर्गत राज्य के आर्थिक विकास के साथ-साथ युवाओं को प्रशिक्षित कर अधिक से अधिक संख्या में रोजगार / स्वरोजगार के अवसर प्रदान करना|',
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
        title: Text('तृतीय लिंग कल्याण'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': '60 वर्ष एवं 60 वर्ष से अधिक आयु के वृद्ध व्यक्तियों को भरण-पोषण दिलाना ।\n'
  'भरण पोषण सगे पुत्र, पुत्री, सौतेले पुत्र, सौतेले पुत्री, नाती, नातीन, पोता, पोती, बहु से प्राप्त किया जा सकता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'वरिष्ठ नागरिकों के भरण पोषण संबंधी समस्याओं का निराकरण करना ।\n'
  'लाभ:- भरण-पोषण का संदाय भरण पोषण की राशि\n'
  '1) आवेदन की तारीख से अथवा\n'
  '2) आदेश की तारीख से देय हो सकेगी।',
    'योजना/जन कल्याणकारी की पात्रता': 'माता-पिता द्वारा किसी भी पुत्र से भरण-पोषण की मांग की जा सकती है। माता-पिता का भरण पोषण करना पुत्र का कर्तव्य है।',
    'आवेदन कैसे करें': 'अनुविभागीय अधिकारी (रा.) के पास एक सादे कागज में भरण पोषण पाने के लिए आवेदन किया जा सकता है।\n'
  '1) धारा 4 के अधीन भरण-पोषण हेतु आवेदन\n'
  '2) वरिष्ठ नागरिक या माता-पिता, यथास्थिति, द्वारा या \n'
  '3) यदि व असमर्थ है, तो उसके द्वारा प्राधिकृत किसी अन्य व्यक्ति या संगठन द्वारा किया गया जा सकेगा, या\n'
  '4) अधिकरण स्वप्रेरणा से संज्ञान ले सकेगा।',
    'आवश्यक दस्तावेज': 'कोई आवश्यक दस्तावेज वांछित नही है।',
    'कैसे और कहाँ से क्या करना है।': 'अनुविभागीय अधिकारी (रा.) के पास एक सादे कागज में भरण पोषण पाने के लिए आवेदन किया जा सकता है।\n'
  'पक्षकार को अपनी पैरवी स्वयं करनी होगी या भरण-पोषण अधिकारी उनका प्रतिनिधित्व कर सकेगा।\n'
  'वृद्ध व्यक्ति को एक व्यक्ति से अधिकतम राशि रूपये 10,000/- (अक्षरी राशि रूपये दस हजार मात्र) पाने का प्रावधान है।',
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
        title: Text('माता-पिता एवं वरिष्ठ नागरिक का भरण-पोषण और कल्याण अधिनियम, 2007'),backgroundColor: Color(0xFF49BAEE),
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
                    height: 70, // Fixed height for all cards
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 8.0),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': '60 वर्ष से 79 आयु वर्ग वृद्धजन को 350/- रूपये 80 वर्ष या ऊपर आयु वर्ग के वृद्धजन को 650/- रूपये प्रतिमाह पेंशन प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'यह भारत सरकार एवं राज्य सरकार के संयुक्त वित्तीय संसाधन से संचालित है, गरीबी रेखा के नीचे जीवन यापन करने वाले वृद्धजनों को आर्थिक सहायता प्रदान कर सम्मान पूर्वक जीवन-यापन करने हेतु सहयोग करना ।\n'
    '\n'
  'लाभ:- 350/- एवं 650/- रूपये प्रतिमाह प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': '60 वर्ष या अधिक आयु के वृद्धजन गरीबी रेखा से नीचे जीवन यापन करने वाले परिवार की सूची में होना अनिवार्य है।',
    'आवेदन कैसे करें': 'योजनांतर्गत ग्रामीण क्षेत्र के आवेदक ग्राम पंचायत में तथा नगरीय क्षेत्र के आवेदक नगर पंचायत/नगर पालिका में आवेदन पत्र प्रस्तुत कर सकते है।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. ग्राम पंचायत का प्रस्ताव',
    'कैसे और कहाँ से क्या करना है।': 'ग्राम पंचायत में आवेदन करना है, पंचायत का प्रस्ताव के साथ सचिव / सरपंच के माध्यम से जनपद पंचायत में जमा किया जाना है, उसके बाद एन.एस.ए.पी. पेंशन साईट में ऑन लाईन करते हुए हितग्राही को डी.बी.टी. के माध्यम से पेंशन राशि का भुगतान किया जाता है।',
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
        title: Text('इंदिरा गांधी राष्ट्रीय वृद्धा पेंशन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '40 से 59 वर्ष आयु वर्ग की विधवा महिला को 350/- रूपये प्रतिमाह पेंशन प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'गरीबी रेखा के नीचे जीवन यापन करने वाले विधवाओं को आर्थिक सहायता प्रदान कर सम्मान पूर्वक जीवन-यापन \n'
    'लाभ:- 350/- रूपये प्रतिमाह प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': '40 से 59 वर्ष आयु वर्ग की विधवा महिला तथा आवेदक का नाम गरीबी रेखा से नीचे जीवन यापन करने वाले परिवार की सूची में होना अनिवार्य है।',
    'आवेदन कैसे करें': 'योजनांतर्गत ग्रामीण क्षेत्र के आवेदक ग्राम पंचायत में तथा नगरीय क्षेत्र के आवेदक नगर पंचायत/नगर पालिका में आवेदन पत्र प्रस्तुत कर सकते है।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. ग्राम पंचायत का प्रस्ताव',
    'कैसे और कहाँ से क्या करना है।': 'ग्राम पंचायत में आवेदन करना है, पंचायत का प्रस्ताव के साथ सचिव / सरपंच के माध्यम से जनपद पंचायत में जमा किया जाना है, उसके बाद एन. एस. ए. पी. पेंशन साईट में आन लाईन करते हुए हितग्राही को डी.बी.टी. के माध्यम से पेंशन राशि का भुगतान किया जाता है।',
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
        title: Text('इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'बहु निःशक्त से तात्पर्य एक से अधिक प्रकार की निःशक्तता, को 500/- रूपये प्रतिमाह पेंशन प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'गरीबी रेखा के नीचे जीवन यापन करने वाले निःशक्तजनों को आर्थिक सहायता प्रदान कर सम्मान पूर्वक जीवन-यापन करने हेतु सहयोग करना\n'
  'लाभ:- 500/- रूपये प्रतिमाह प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': '18 से 79 वर्ष आयु के गंभीर एवं बहु निःशक्तता गंभीर निःशक्त से तात्पर्य किसी एक प्रकार की बहुनिःशक्तता से तात्पर्य एक से अधिक प्रकार की निःशक्तता। आवेदक का नाम गरीबी रेखा से नीचे जीवन यापन करने वाले परिवार की सूची में होना अनिवार्य है|',
    'आवेदन कैसे करें': 'योजनांतर्गत ग्रामीण क्षेत्र के आवेदक ग्राम पंचायत में तथा नगरीय क्षेत्र के आवेदक नगर पंचायत/नगर पालिका में आवेदन पत्र प्रस्तुत कर सकते है।|',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. ग्राम पंचायत का प्रस्ताव',
    'कैसे और कहाँ से क्या करना है।': 'ग्राम पंचायत में आवेदन करना है, पंचायत का प्रस्ताव के साथ सचिव / सरपंच के माध्यम से जनपद पंचायत में जमा किया जाना है, उसके बाद एन. एस. ए. पी. पेंशन साईट में आन लाईन करते हुए हितग्राही को डी. बी. टी. के माध्यम से पेंशन राशि का भुगतान किया जाता है।',
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
        title: Text('इंदिरा गांधी राष्ट्रीय निःश्क्त पेंशन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '(1) 6-17 वर्ष आयु वर्ग के निःशक्त बच्चे, जिसमें 6-14 आयु वर्ग के निःशक्त बच्चे जो अध्ययनरत नही है, उन्हें पात्रता नही होगी\n'
  '(2) 18 वर्ष या अधिक आयु के सामान्य निःशक्त व्यक्ति\n'
  '(3) बौने व्यक्ति को 350/- रूपये प्रतिमाह पेंशन प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'गरीबी रेखा के नीचे जीवन यापन करने वाले निःशक्त शालेय छात्रों एवं निःशक्त व्यक्तियों को आर्थिक सहायता प्रदान कर सम्मान पूर्वक जीवन यापन करने हेतु सहयोग करना।\n'
    'लाभ:- 350/- रूपये प्रतिमाह प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': '(1) 6-17 वर्ष आयु वर्ग के निःशक्त बच्चे, जिसमें 6-14 आयु वर्ग के निःशक्त बच्चे जो अध्ययनरत नही है, उन्हें पात्रता नही होगी\n'
      '(2) 18 वर्ष या अधिक आयु के सामान्य निःशक्त व्यक्ति\n'
    '(3) बौने व्यक्ति।\n'
  'आवेदक का नाम गरीबी रेखा से नीचे जीवन यापन करने वाले परिवार की सूची में नाम होना अनिवार्य है',
    'आवेदन कैसे करें': 'योजनांतर्गत ग्रामीण क्षेत्र के आवेदक ग्राम पंचायत में तथा नगरीय क्षेत्र के आवेदक नगर पंचायत/नगर पालिका में आवेदन पत्र प्रस्तुत कर सकते है।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. ग्राम पंचायत का प्रस्ताव',
    'कैसे और कहाँ से क्या करना है।': 'ग्राम पंचायत में आवेदन करना है, पंचायत का प्रस्ताव के साथ सचिव / सरपंच के माध्यम से जनपद पंचायत में जमा किया जाना है, उसके बाद एन. एस. ए. पी. पेंशन साईट में आन लाईन करते हुए हितग्राही को डी.बी.टी. के माध्यम से पेंशन राशि का भुगतान किया जाता है।',
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
        title: Text('सामाजिक सुरक्षा पेंशन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '(1) 18-39 वर्ष आयु वर्ग की विधवा\n'
  '(2) 18 वर्ष या उससे अधिक आयु के परित्यक्त महिलाएं को 350/- रूपये प्रतिमाह पेंशन प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'गरीबी रेखा के नीचे जीवन यापन करने वाले विधवा / परित्यक्त महिलाओं को आर्थिक सहायता प्रदान कर सम्मान पूर्वक जीवन-यापन करने हेतु सहयोग करना।\n'
  'लाभ:- 350/- रूपये प्रतिमाह प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': '(1) 18-39 वर्ष आयु वर्ग की विधवा\n'
        '(2) 18 वर्ष या उससे अधिक आयु के परित्यक्त महिलाएं ।\n'
        'आवेदक का नाम गरीबी रेखा से नीचे जीवन यापन करने वाले परिवार की सूची में नाम होना अनिवार्य है',
    'आवेदन कैसे करें': 'योजनांतर्गत ग्रामीण क्षेत्र के आवेदक ग्राम पंचायत में तथा नगरीय क्षेत्र के आवेदक नगर पंचायत/नगर पालिका में आवेदन पत्र प्रस्तुत कर सकते है।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. ग्राम पंचायत का प्रस्ताव',
    'कैसे और कहाँ से क्या करना है।': 'ग्राम पंचायत में आवेदन करना है, पंचायत का प्रस्ताव के साथ सचिव / सरपंच के माध्यम से जनपद पंचायत में जमा किया जाना है, उसके बाद एन. एस. ए. पी. पेंशन साईट में आन लाईन करते हुए हितग्राही को डी. बी. टी. के माध्यम से पेंशन राशि का भुगतान किया जाता है।',
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
        title: Text('सुखद सहारा पेंशन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'इसके लिए वृद्धा की आयु 60 वर्ष\n'
    '\n'
        'विधवा तथा परित्यक्ता महिलाओं के लिए 18 वर्ष से अधिक होना अनिवार्य है, को 350/- रूपये प्रतिमाह पेंशन प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'सामाजिक, आर्थिक एवं जाति जनगणना 2011 की सर्वे सूची के आधार पर वरिष्ठ नागरिकों एवं विधवा, परित्यक्त महिलाओं को लक्षित किया गया है।\n'
    '\n'
  'लाभ:- 350/- रूपये प्रतिमाह प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': 'इसके लिए वृद्धा की आयु 60 वर्ष एवं विधवा तथा परित्यक्ता महिलाओं के लिए 18 वर्ष से अधिक होना अनिवार्य है। आवेदक का नाम गरीबी रेखा से नीचे जीवन यापन करने वाले परिवार की सूची में नाम होना अनिवार्य है।',
    'आवेदन कैसे करें': 'योजनांतर्गत ग्रामीण क्षेत्र के आवेदक ग्राम पंचायत में तथा नगरीय क्षेत्र के आवेदक नगर पंचायत/नगर पालिका में आवेदन पत्र प्रस्तुत कर सकते है।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. ग्राम पंचायत का प्रस्ताव',
    'कैसे और कहाँ से क्या करना है।': 'ग्राम पंचायत में आवेदन करना है, पंचायत का प्रस्ताव के साथ सचिव / सरपंच के माध्यम से जनपद पंचायत में जमा किया जाना है, उसके बाद एन. एस. ए. पी. पेंशन साईट में आन लाईन करते हुए हितग्राही को डी. बी. टी. के माध्यम से पेंशन राशि का भुगतान किया जाता है।',
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
        title: Text('मुख्यमंत्री पेंशन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'गरीबी रेखा के नीचे जीवन यापन करने वाले परिवार के ऐसे सदस्य की मृत्यु होने पर जिसकी कमाई से ही परिवार का अधिकांश गुजारा चलता हो तथा आयु 18 से 59 आयु वर्ग के हों ऐसे परिवार के वारिस मुखिया को रूपये 20000/- एकमुश्त आर्थिक सहायता प्रदाय की जाती है।\n'
    'मृतक की आयु मृत्यु दिनंाक से 18 वर्ष से अधिक तथा 60 वर्ष से कम हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'गरीबी रेखा के नीचे जीवन यापन करने वाले परिवार के ऐसे सदस्य की मृत्यु होने पर जिसकी कमाई से ही परिवार का अधिकांश गुजारा चलता हो तथा आयु 18 से 59 आयु वर्ग के हों ऐसे परिवार के वारिस मुखिया को आर्थिक सहायता प्रदान करना।\n'
    '\n'
  'लाभ:- रूपये 20000/- एकमुश्त आर्थिक सहायता प्रदाय की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': 'इस योजना के लिए मृतक की आयु 18 से 59 आयु वर्ग के हो तथा आवेदक 60 वर्ष से अधिक न हो आवेदक का नाम गरीबी रेखा से नीचे जीवन यापन करने वाले परिवार की सूची में नाम होना अनिवार्य है|',
    'आवेदन कैसे करें': 'योजनांतर्गत ग्रामीण क्षेत्र के आवेदक ग्राम पंचायत में तथा नगरीय क्षेत्र के आवेदक नगर पंचायत/नगर पालिका में आवेदन पत्र प्रस्तुत कर सकते है।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. मृतक का आधार कार्ड\n'
  '6. मृत्यु प्रमाण पत्र\n'
  '7. ग्राम पंचायत का प्रस्ताव',
    'कैसे और कहाँ से क्या करना है।': 'ग्राम पंचायत में आवेदन करना है, पंचायत का प्रस्ताव के साथ सचिव / सरपंच के माध्यम से जनपद पंचायत में जमा किया जाना है, उसके बाद जनपद पंचायत शिक्षा स्थाई समिति के अनुमोदन उपरांत जिला कार्यालय समाज कल्याण विभाग को प्रकरण उपलब्ध कराया जाता है, उसके बाद एन. एस. ए. पी. पेंशन साईट में आन लाईन करते हुए हितग्राही को डी.बी.टी. के माध्यम से पेंशन राशि का भुगतान किया जाता है।',
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
        title: Text('राष्ट्रीय परिवार सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'उद्देष्य - निःशक्त व्यक्तियों के सामाजिक पुनर्वास के दृष्टि से विवाह हेतु आर्थिक सहयोग प्रदान करना ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': '(1) दम्पति में एक दिव्यंाग होने पर 50000/- एकमुश्त सहायता राशि प्रदान की जाती है।\n'
  '(2) दम्पति में दोनों दिव्यांग होने पर 100000/- एकमुश्त सहायता राशि प्रदान की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': '40 प्रतिशत या उससे अधिक निःशक्त व्यक्ति, छत्तीसगढ़ का निवासी हो । आयु 18 वर्ष से कम तथा 45 वर्ष से अधिक न हो।',
    'आवेदन कैसे करें': 'आवेदक को निर्धारित प्रपत्र में आवेदन पत्र संबंधित जनपद पंचायत में प्रस्तुत करना होगा।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. आय प्रमाण पत्र\n'
  '3. जाति प्रमाण पत्र\n'
  '4. निवास प्रमाण पत्र\n'
  '5. विवाह प्रमाण पत्र\n'
  '6. विवाह निमंत्रण कार्ड\n'
  '7. आधार कार्ड का छायाप्रति\n'
  '8. दंपत्ति का संयुक्त पासपोर्ट साईज फोटो\n'
  '9. निःशक्तता प्रमाण पत्र\n'
  '10. विवाह का फोटो\n'
  '11. बैंक पासबुक का छायाप्रति\n'
  '12. प्रथम विवाह का शपथ',
    'कैसे और कहाँ से क्या करना है।': 'आवेदक को निर्धारित प्रपत्र में आवेदन पत्र संबंधित जनपद पंचायत में प्रस्तुत करना होगा, जनपद पंचायत मुख्य कार्यपालन अधिकारी के अनुशंसा सहित उक्त आवेदन पत्र समाज कल्याण विभाग को प्राप्त होने के पश्चात कलेक्टर के अनुमोदन होने के उपरांत हितग्राही को सीधे उनके खाते के माध्यम से प्रोत्साहन राशि का भुगतान किया जाता है।',
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
        title: Text('दिव्यांग विवाह प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'निःशक्त व्यक्तियों को अर्थिक संसाधन उपलब्ध कराते हुए रोजगार हेतु व्यवस्था सुनिश्चित करना।\n'
  'नोट -\n'
  'ऋण अधिकतम 10 वर्ष के भीतर वापस किए जा सकेंगे। निःशक्त महिलाओं के लिए ब्याज दर में 1 प्रतिशत की छूट। | स्वरोजगार स्थापित करने के लिए 1 लाख रूपए तक की ऋण मात्र 6 प्रतिशत ब्याज पर उपलब्ध कृषि कार्य हेतु 5 लाख रू. तक के ऋण 6 प्रतिशत ब्याज पर उपलब्ध उत्पादकता कारखाने खोलने के लिए 5 लाख रू. तक के ऋण तकनीकी शिक्षा हेतु ऋण प्रदान किया जाता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'निःशक्त व्यक्तियों को अर्थिक संसाधन उपलब्ध कराते हुए रोजगार हेतु व्यवस्था सुनिश्चित करना।\n'
  'योजनांतर्गत निम्न ब्याज दरों पर ऋण उपलब्ध होगा:-\n'
    '\n'
    '',
    'योजना/जन कल्याणकारी की पात्रता': 'दिव्यांगता 40 प्रतिशत या उससे अधिक निःशक्तता, आयु 18 से 55 वर्ष, वार्षिक आय शहरी क्षेत्र में 1 लाख रू. प्रतिवर्ष तथा ग्रामीण क्षेत्र में 80000 रू. प्रतिवर्ष रू. से अधिक न हों।',
    'आवेदन कैसे करें': 'आवेदन पत्र निर्धारित प्रारूप में उप संचालक समाज कल्याण में प्रस्तुत करना होगा।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. आय प्रमाण पत्र\n'
  '3. निवास प्रमाण पत्र\n'
  '4. आधार कार्ड का छायाप्रति\n'
  '5. आवेदक का पासपोर्ट साईज फोटो एवं पोस्ट कार्ड साईज फोटो\n'
  '6. निःशक्तता प्रमाण पत्र\n'
  '7. प्रस्तावित व्यावसाय सामग्री का कोटेशन\n'
  '8. जमानतदार का पर्ची / वेतन पत्रक',
    'कैसे और कहाँ से क्या करना है।': 'आवेदन पत्र में उल्लेखित परियोजनाओं का भौतिक एवं वित्तीय संसाधन की जांच संबंधित समाज शिक्षा संगठक से कराकर उप संचालक समाज कल्याण के अनुशंसा के साथ प्रकरण स्वीकृति हेतु छ.ग. निःशक्तजन वित्त एवं विकास निगम रायपुर को प्रेषित् किए जाते है, प्रकरण स्वीकृति के पश्चात हितग्राही द्वारा सामग्री प्राप्ति उपरांत उसके सहमति के आधार पर संबंधित मेसर्स को चेक के माध्यम से राशि भुगतान किया जाता है।',
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
        title: Text('निःषक्तजनों के लिए स्वरोजगार हेतु ऋण योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'राज्य के समस्त पात्र निःशक्तजनों को कृत्रिम अंग / सहायक उपकरण उपलब्ध कराकर उनकी गतिशीलता को बढ़ावा देना ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'योजनांतर्गत दिव्यांग व्यक्तियों को निःशुल्क ट्रायसायकल, बैसाखी, श्रवण यंत्र, ब्रेल कीट, व्हील चेयर, टेप रिकार्डर, केलीपर्स तथा कृत्रिम अंग प्रदान किए जाते है। इस योजना में अधिकतम रू. 6900/- तक की राशि के उपकरण प्रदान किये जाने का प्रावधान है',
    'योजना/जन कल्याणकारी की पात्रता': 'निःशक्त, बौद्धिकता, बहुनिःशक्तता से पीड़ित हो । निःशक्तता 40 प्रतिशत या उससे अधिक हो। माता-पिता/अभिभावक या स्वयं की मासिक आय 5000/- प्रतिमाह होने पर उन्हें निःशुल्क तथा जिसकी आय 5001 रू. से 8000 रू. के मध्य है तो संसाधन की 50 प्रतिशत राशि जमा करने पर संसाधन प्रदाय किए जाने का प्रावधान है।',
    'आवेदन कैसे करें': 'निर्धारित प्रपत्र मं आवेदन उप संचालक समाज कल्याण विभाग को प्रस्तुत किया जाना होगा।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. आय प्रमाण पत्र\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. निःशक्तता प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'निःशक्त हितग्राहियों को सहायक उपकरण के लिए आवेदन पत्र सीधे जिला कार्यालय समाज कल्याण विभाग को उपलब्ध कराते हुए सहायक उपकरण प्राप्त कर सकते है।',
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
        title: Text('सामथ्र्य विकास योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': '40 प्रतिशत या उससे अधिक के निःशक्त जिन्होने 40 प्रतिशत अंको के साथ परीक्षा उत्तीर्ण की हो तथा उनके परिवार की मासिक आय 8000/- से अधिक नहीं है। ',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'ऐसे निःशक्त छात्र/छात्राओं को जो अध्ययनरत है, अध्ययन में प्रोत्साहन के लिए निःशक्त छात्रवृत्ति दिया जाने का प्रावधान है ताकि वे सामान्य बच्चों की भांति अध्ययन कर सके।',
    'योजना/जन कल्याणकारी की पात्रता': 'ऐसे 40 प्रतिशत या उससे अधिक के निःशक्त जिन्होंने 40 प्रतिशत अंको के साथ परीक्षा उत्तीर्ण की हो तथा उनके परिवार की मासिक आय 8000 /- से अधिक नही है। ऐसे पात्रताधारी छात्र/छात्राओं को नियमानुसार छात्रवृत्ति प्रतिमाह प्रदान किया जाता है।',
    'आवेदन कैसे करें': 'निर्धारित प्रपत्र में आवेदन संस्था प्रमुख के माध्यम से उप संचालक समाज कल्याण विभाग को प्रस्तुत किया जाना होगा।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का छायाप्रति\n'
  '3. आधार कार्ड का छायाप्रति\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. निःशक्तता प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'निर्धारित प्रपत्र मं े आवेदन पत्र जिस स्कूल / संस्था में अध्ययनरत है, उस स्कूल / संस्था प्रमुख के माध्यम से उप संचालक समाज कल्याण विभाग को प्रस्तुत किया जाना होगा, उसके बाद कार्यालय द्वारा उनके बैंक खाता में सीधे एन.ई.एफ.टी. के माध्यम से छात्रवृत्ति की राशि प्रदान की जाती है।',
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
        title: Text('दिव्यांग छात्रवृत्ति'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पांच दिव्यांगों के समूह के लिए (देष में कहीं भी)\n'
    'A श्रेणी के शहर हेतु 10000/-\n'
    'B श्रेणी के शहर हेतु 7000/- (प्रतिमाह किराया)\n'
    'C श्रेणी के शहर हेतु 5000/-',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अध्ययनरत दिव्यांग छात्र/छात्राओं को घर के बाहर शिक्षा ग्रहण करने के लिए प्रेरित कर लाभ प्राप्त किये जाने हेतु छात्रगृह योजना प्रदान की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': 'दिव्यांगता 40 प्रतिशत या उससे अधिक निःशक्त व्यक्ति, छत्तीसगढ़ का निवासी हो । दिव्यांग छात्र/छात्राओं की समूह में कम से कम पांच सदस्य होना अनिवार्य है।',
    'आवेदन कैसे करें': 'आवेदक को निर्धारित प्रपत्र में आवेदन पत्र जिले के उप संचालक समाज कल्याण विभाग के कार्यालय में प्रस्तुत करना होगा।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. आय प्रमाण पत्र\n'
  '3. निवास प्रमाण पत्र\n'
  '4. आधार कार्ड का फोटोकॉपी\n'
  '5. निःशक्तता प्रमाण पत्र\n'
  '6. मकान मालिक का किराया नामा एवं बैंक पासबुक',
    'कैसे और कहाँ से क्या करना है।': 'आवेदक को निर्धारित प्रपत्र में आवेदन पत्र संबंधित जिला कार्यालय समाज कल्याण विभाग में पूर्ण जानकारी सहित प्रस्तुत करना होगा, उसके बाद योजना की राशि सीधे संबंधित के खाते में एन.ई.एफ.टी. के माध्यम से हस्तांतरित की जाती हैं।',
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
        title: Text('दिव्यांग छात्रगृह योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'लोक सेवा आयोग/संघ लोक सेवा आयोग\n'
  '1) प्रारम्भिक उत्तीर्ण होने पर रूपये 20000/-\n'
  '2) मुख्य परीक्षा में उत्तीर्ण होने पर रूपये 30000/-\n'
  '3) संघ लोक सेवा आयोग में चयन होने पर रूपये 50000/-',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'दिव्यांग छात्र/छात्राओं जो लोक सेवा आयोग एवं संघ सेवा आयोग की परीक्षा में शामिल होने के पश्चात प्रारम्भिक, मुख्य परीक्षा एवं चयन होने पर इस योजना का लाभ प्रोत्साहन के रूप में प्रदाय किया जाता हैं।',
    'योजना/जन कल्याणकारी की पात्रता': 'दिव्यांगता 40 प्रतिशत या उससे अधिक निःशक्त व्यक्ति, छत्तीसगढ़ का निवासी हो। परीक्षा उत्तीर्ण करने के छः माह के भीतर आवेदन करने पर प्रोत्साहन राशि प्राप्त करने की पात्रता होगी।',
    'आवेदन कैसे करें': 'आवेदक को निर्धारित प्रपत्र में आवेदन पत्र जिले के उप संचालक समाज कल्याण विभाग के कार्यालय में प्रस्तुत करना होगा।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. आय प्रमाण पत्र\n'
  '3. निवास प्रमाण पत्र\n'
  '4. आधार कार्ड का फोटोकॉपी\n'
  '5. निःशक्तता प्रमाण पत्र\n'
  '6. परीक्षा उत्तीर्ण करने का सूची\n'
  '7. बैंक पासबुक',
    'कैसे और कहाँ से क्या करना है।': 'आवेदक को निर्धारित प्रपत्र में आवेदन पत्र संबंधित जिला कार्यालय समाज कल्याण विभाग, में पूर्ण जानकारी सहित प्रस्तुत करना होगा, उसके बाद कलेक्टर के अनुमोदन होने के उपरांत हितग्राही को सीधे उनके खाते के माध्यम से प्रोत्साहन राशि का भुगतान किया जाता है।',
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
        title: Text('सिविल सेवा प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'जिला स्तर पर (एक मुष्त)\n'
  '1) माध्यमिक परीक्षा में सर्वाधिक अंक पर 2000/-\n'
  '2) उच्चतर माध्यमिक परीक्षा में सर्वाधिक अंक पर 5000/-\n'
  '3) आई. टी. आई/ पॉलीटेक्नीक में स्नातक एवं स्नातकोत्तर में अध्ययन पर 6000/-\n'
  '4) चिकित्सा/ तकनीकी / व्यावसायिक में स्नातक एवं स्नातकोत्तर में अध्ययन पर 12000/-',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अध्ययनरत दिव्यांग छात्र/छात्राओं को कक्षा में सर्वाधिक अंक प्राप्त करने पर शिक्षा के प्रति प्रोत्साहित करने के लिए यह राशि वर्ष में एक बार प्रदान की जाती है।',
    'योजना/जन कल्याणकारी की पात्रता': 'छात्र/छात्राओं का दिव्यांगता 40 प्रतिशत या उससे अधिक हो तथा निःशक्त व्यक्ति, छत्तीसगढ़ का निवासी हो।',
    'आवेदन कैसे करें': 'निर्धारित प्रपत्र में आवेदन संस्था प्रमुख के माध्यम से उप संचालक समाज कल्याण विभाग को प्रस्तुत किया जाना होगा।',
    'आवश्यक दस्तावेज': '1. निर्धारित प्रारूप में आवेदन पत्र\n'
  '2. बैंक पासबुक का फोटोकॉपी\n'
  '3. आधार कार्ड का फोटोकॉपी\n'
  '4. आवेदक का पासपोर्ट साईज फोटो\n'
  '5. निःशक्तता प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'निर्धारित प्रपत्र मं आवेदन पत्र जिस स्कूल / संस्था में अध्ययनरत है, उस स्कूल / संस्था प्रमुख के माध्यम से उप संचालक समाज कल्याण विभाग को प्रस्तुत किया जाना होगा, उसके बाद योजना की राशि सीधे संबंधित के खाते में एन.ई.एफ.टी. के माध्यम से हस्तांतरित की जाती हैं।',
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
        title: Text('षिक्षा प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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
