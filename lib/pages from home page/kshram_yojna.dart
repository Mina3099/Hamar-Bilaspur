import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'छत्तीसगढ भवन एंव अन्य सन्निर्माण कर्मकार कल्याण मंडल',
  'छत्तीसगढ़ असंगठित कर्मकार राज्य सामाजिक सुरक्षा मण्डल'
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'छत्तीसगढ भवन एंव अन्य सन्निर्माण कर्मकार कल्याण मंडल': (context) => DetailScreenA(),
    'छत्तीसगढ़ असंगठित कर्मकार राज्य सामाजिक सुरक्षा मण्डल': (context) => DetailScreenB(),

    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('योजना / जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreenA
class DetailScreenA extends StatefulWidget {


  @override
  _DetailScreenA createState() => _DetailScreenA();
}

class _DetailScreenA extends State<DetailScreenA> {
  final List<String> items = [

  'मुख्यमंत्री निर्माण श्रमिक मृत्यु एवं दिव्यांग सहायता योजना',
  'भगिनी प्रसूति सहायता योजना',
  'नौनिहाल छात्रवृत्ति सहायता योजना',
  'मेधावी छात्र-छात्रा शिक्षा प्रोत्साहन योजना',
  'मुख्यमंत्री श्रमिक औजार सहायता योजना',
  'मुख्यमंत्री सायकल सहायता योजना',
  'मुख्यमंत्री सिलाई मशीन सहायता योजना',
  'मुख्यमंत्री निर्माण मजदूर कौशल विकास परिवार सशक्तिकरण योजना',
  'दुर्घटना में चिकित्सा सहायता योजना',
  'अटल पेंशन योजना',
  'निर्माण श्रमिक ई-रिक्शा सहायता योजना',
  'सुरक्षा उपकरण सहायता योजना',

  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'मुख्यमंत्री निर्माण श्रमिक मृत्यु एवं दिव्यांग सहायता योजना': (context) => DetailScreenA1(),
    'भगिनी प्रसूति सहायता योजना': (context) => DetailScreenA2(),
    'नौनिहाल छात्रवृत्ति सहायता योजना': (context) => DetailScreenA3(),
    'मेधावी छात्र-छात्रा शिक्षा प्रोत्साहन योजना': (context) => DetailScreenA4(),
    'मुख्यमंत्री श्रमिक औजार सहायता योजना': (context) => DetailScreenA5(),
    'मुख्यमंत्री सायकल सहायता योजना': (context) => DetailScreenA6(),
    'मुख्यमंत्री सिलाई मशीन सहायता योजना': (context) => DetailScreenA7(),
    'मुख्यमंत्री निर्माण मजदूर कौशल विकास परिवार सशक्तिकरण योजना': (context) => DetailScreenA8(),
    'दुर्घटना में चिकित्सा सहायता योजना': (context) => DetailScreenA9(),
    'अटल पेंशन योजना': (context) => DetailScreenA10(),
    'निर्माण श्रमिक ई-रिक्शा सहायता योजना': (context) => DetailScreenA11(),
    'सुरक्षा उपकरण सहायता योजना': (context) => DetailScreenA12(),

    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('छत्तीसगढ भवन एंव अन्य सन्निर्माण कर्मकार कल्याण मंडल'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenB
class DetailScreenB extends StatefulWidget {


  @override
  _DetailScreenB createState() => _DetailScreenB();
}

class _DetailScreenB extends State<DetailScreenB> {
  final List<String> items = [

    'मुख्यमंत्री असंगठित कर्मकार सायकल सहायता योजना',
    'मुख्यमंत्री असंगठित कर्मकार सिलाई मशीन सहायता योजना',
    'असंगठित कर्मकार समाचार-पत्र हाकर सायकल सहायता योजना',
    'मुख्यमंत्री असंगठित कर्मकार गंभीर बीमारी चिकित्सा सहायता योजना',
    'मुख्यमंत्री राउत, चरवाहा एवं दूध दूहने वाले सायकल सहायता योजना',
    'मुख्यमंत्री कोटवार सायकल एवं टार्च सहायता योजना',
    'प्रधानमंत्री जीवन ज्योति बीमा योजना (CONVERGED)',
    'ई-रिक्शा सहायता योजना',
    'ई-ठेला सहायता योजना',
    'कचरा बिनने वाले हेतु सुरक्षा उपकरण सहायता योजना',
    'असंगठित कर्मकार मृत्यु एवं दिव्यांग सहायता योजना',
    'असंगठित कर्मकार प्रसूति सहायता योजना',
    'असंगठित कर्मकारों के बच्चों हेतु छात्रवृत्ति सहायता योजना',
    'सफाई कर्मकार कौशल उन्नयन योजना',
    'सफाई कर्मकार के बच्चे हेतु छात्रवृत्ति योजना',
    'सफाई कर्मकार गंभीर बीमारी चिकित्सा सहायता योजना',
        'सफाई कर्मकार पुत्र/पुत्री सायकल सहायता योजना',
    'सफाई कर्मकार प्रसूति सहायता योजना',
    'सफाई कर्मकार हेतु आवश्यक उपकरण सहायता योजना',
    'ठेका श्रमिक, हमाल श्रमिक एवं घरेलू महिला कामगारों हेतु गंभीर बीमारी चिकित्सा सहायता योजना',
    'ठेका श्रमिक, घरेलू महिला कर्मकार एवं हमाल श्रमिकों के बच्चों हेतु छात्रवृत्ति योजना',
    'महिला ठेका श्रमिक, घरेलू महिला कामगार एवं महिला हमाल श्रमिक प्रसूति सहायता योजना',
    'हमाल हेतु जूता, हुक एवं महिला हमाल हेतु सूपा और टोकरी सहायता योजना',
    'घरेलू महिला कामगार सायकल, छतरी, चप्पल / जूता सहा. यो.',
    'घरेलू कामगार कौशल उन्नयन एवं ठेका श्रमिक, हमाल तथा घरेलू महिला कामगार परिवार सशक्तिकरण योजना',

  ];


  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {

    'मुख्यमंत्री असंगठित कर्मकार सायकल सहायता योजना': (context) => DetailScreen1(),
    'मुख्यमंत्री असंगठित कर्मकार सिलाई मशीन सहायता योजना': (context) => DetailScreen2(),
    'असंगठित कर्मकार समाचार-पत्र हाकर सायकल सहायता योजना': (context) => DetailScreen3(),
    'मुख्यमंत्री असंगठित कर्मकार गंभीर बीमारी चिकित्सा सहायता योजना': (context) => DetailScreen4(),
    'मुख्यमंत्री राउत, चरवाहा एवं दूध दूहने वाले सायकल सहायता योजना': (context) => DetailScreen5(),
    'मुख्यमंत्री कोटवार सायकल एवं टार्च सहायता योजना': (context) => DetailScreen6(),
    'प्रधानमंत्री जीवन ज्योति बीमा योजना (CONVERGED)': (context) => DetailScreen7(),
    'ई-रिक्शा सहायता योजना': (context) => DetailScreen8(),
    'ई-ठेला सहायता योजना': (context) => DetailScreen9(),
    'कचरा बिनने वाले हेतु सुरक्षा उपकरण सहायता योजना': (context) => DetailScreen10(),
    'असंगठित कर्मकार मृत्यु एवं दिव्यांग सहायता योजना': (context) => DetailScreen11(),
    'असंगठित कर्मकार प्रसूति सहायता योजना': (context) => DetailScreen12(),
    'असंगठित कर्मकारों के बच्चों हेतु छात्रवृत्ति सहायता योजना': (context) => DetailScreen13(),
    'सफाई कर्मकार कौशल उन्नयन योजना': (context) => DetailScreen14(),
    'सफाई कर्मकार के बच्चे हेतु छात्रवृत्ति योजना': (context) => DetailScreen15(),
    'सफाई कर्मकार गंभीर बीमारी चिकित्सा सहायता योजना': (context) => DetailScreen16(),
    'सफाई कर्मकार पुत्र/पुत्री सायकल सहायता योजना': (context) => DetailScreen17(),
    'सफाई कर्मकार प्रसूति सहायता योजना': (context) => DetailScreen18(),
    'सफाई कर्मकार हेतु आवश्यक उपकरण सहायता योजना': (context) => DetailScreen19(),
    'ठेका श्रमिक, हमाल श्रमिक एवं घरेलू महिला कामगारों हेतु गंभीर बीमारी चिकित्सा सहायता योजना': (context) => DetailScreen20(),
    'ठेका श्रमिक, घरेलू महिला कर्मकार एवं हमाल श्रमिकों के बच्चों हेतु छात्रवृत्ति योजना': (context) => DetailScreen21(),
    'महिला ठेका श्रमिक, घरेलू महिला कामगार एवं महिला हमाल श्रमिक प्रसूति सहायता योजना': (context) => DetailScreen22(),
    'हमाल हेतु जूता, हुक एवं महिला हमाल हेतु सूपा और टोकरी सहायता योजना': (context) => DetailScreen23(),
    'घरेलू महिला कामगार सायकल, छतरी, चप्पल / जूता सहा. यो.': (context) => DetailScreen24(),
    'घरेलू कामगार कौशल उन्नयन एवं ठेका श्रमिक, हमाल तथा घरेलू महिला कामगार परिवार सशक्तिकरण योजना': (context) => DetailScreen25(),

    // Add other mappings here
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('छत्तीसगढ़ असंगठित कर्मकार राज्य सामाजिक सुरक्षा मण्डल'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA1
class DetailScreenA1 extends StatefulWidget {


  @override
  _DetailScreenA1 createState() => _DetailScreenA1();
}

class _DetailScreenA1 extends State<DetailScreenA1> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत हितग्राही के गृह से काम पर जाने कार्य अवधि तथा कार्य स्थल से गृह वापसी तक हुए किसी दुर्घटना मृत्यु अपंगता को माना जायेगा। 18 से 60 वर्ष की उम्र के निर्माणी श्रमिक योजना हेतु पात्र होगें। हितग्राही निर्माण श्रमिक की मृत्यु उपरान्त 90 दिवस के भीतर आवेदन प्रस्तुत करना आवश्यक है। आत्मदाह मादक द्रवों या पदार्थों के सेवन से हुई मृत्युकानून का उल्लंघन करते हुए मारपीट से हुई मृत्यु में योजना का लाभ नही मिलेगा।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत निर्माणी श्रमिक के मृत्यु होने पर रू. 1,00,000/- एवं स्थायी दिव्यांगता पर 50,000/- दिया जाना प्रावधानित है।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत हितग्राही के गृह से काम पर जाने कार्य अवधि तथा कार्य स्थल से गृह वापसी तक हुए किसी दुर्घटना मृत्यु अपंगता को माना जायेगा। 18 से 60 वर्ष की उम्र के निर्माणी श्रमिक योजना हेतु पात्र होगें। हितग्राही निर्माण श्रमिक की मृत्यु उपरान्त 90 दिवस के भीतर आवेदन प्रस्तुत करना आवश्यक है। आत्मदाह मादक द्रवों या पदार्थों के सेवन से हुई मृत्युकानून का उल्लंघन करते हुए मारपीट से हुई मृत्यु में योजना का लाभ नही मिलेगा।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, मृत्यु प्रमाण पत्र / स्थायी दिव्यांगता होने संबंधी डॉक्टर द्वारा जारी प्रमाण पत्र, मृतक एवं नॉमिनी का आधार कार्ड, बैंक पासबुक।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री निर्माण श्रमिक मृत्यु एवं दिव्यांग सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA2
class DetailScreenA2 extends StatefulWidget {


  @override
  _DetailScreenA2 createState() => _DetailScreenA2();
}

class _DetailScreenA2 extends State<DetailScreenA2> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'महिला निर्माणी श्रमिक का स्वयं पंजीयन आवश्यक। महिला श्रमिक के गर्भधारण की अधिकृत सत्यापन डाक्टर एएनएम अथवा मितानीन के व्दारा होना अनिवार्य सार्वजनिक एवं शासकीय संस्थानों में कार्य कर रहे निर्माण श्रमिक की पत्नि को योजना का लाभ देय नही होगा। प्रसूति योजना का लाभ अधिकतम दो बार के प्रसव हेतु दिया जाना है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'रूपयें 10000 प्रसूति लाभ जिसमें से रू 5000. गर्भधारण के प्रथम तिमाही एवं शेष रू 5000 जन्म के पश्चात भुगतान ।',
    'योजना/जन कल्याणकारी की पात्रता': 'महिला निर्माणी श्रमिक का स्वयं पंजीयन आवश्यक महिला श्रमिक के गर्भधारण की अधिकृत सत्यापन डाक्टर एएनएम अथवा मितानीन के व्दारा होना अनिवार्य सार्वजनिक एवं शासकीय संस्थानों में कार्य कर रहे निर्माण श्रमिक की पत्नि को योजना का लाभ देय नही होगा । प्रसूति योजना का लाभ अधिकतम दो बार के प्रसव हेतु दिया जाना है।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, जच्चा बच्चा कार्ड (मितानिन द्वारा सत्यापित), जन्म प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('भगिनी प्रसूति सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA3
class DetailScreenA3 extends StatefulWidget {


  @override
  _DetailScreenA3 createState() => _DetailScreenA3();
}

class _DetailScreenA3 extends State<DetailScreenA3> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत हिताधिकारी निर्माण श्रमिकों के पुत्र पुत्रीयो को कक्षा पहली से स्नातक स्नातकोत्तर अध्यन हेतु छात्रवृत्ती देय पंजीकृत निर्माण श्रमिक के पुत्र पुत्रीयो के व्दारा निर्धारित प्रपत्र में संबंधित विद्यालय महाविद्यालय के संस्था प्रमुख व्दारा दिया गया अध्यनरत प्रमाण पत्र संलग्न करना होगा।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'रूपयें 1000 से 10000 तक।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत हिताधिकारी निर्माण श्रमिकों के पुत्र पुत्रीयो को कक्षा पहली से स्नातक स्नातकोत्तर अध्यन हेतु छात्रवृत्ती देय पंजीकृत निर्माण श्रमिक के पुत्र पुत्रीयो के व्दारा निर्धारित प्रपत्र में संबंधित विद्यालय महाविद्यालय के संस्था प्रमुख व्दारा दिया गया अध्यनरत प्रमाण पत्र संलग्न करना होगा।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, नौनिहाल छात्रवृत्ति प्रमाण पत्र, बैंक पासबुक, बच्चे का आधार कार्ड, प्रचार्य द्वारा जारी प्रमाण पत्र, छात्रवृत्ति न प्राप्त करने का प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('नौनिहाल छात्रवृत्ति सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA4
class DetailScreenA4 extends StatefulWidget {


  @override
  _DetailScreenA4 createState() => _DetailScreenA4();
}

class _DetailScreenA4 extends State<DetailScreenA4> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत निर्माण श्रमिक के प्रथम दो बच्चे जो 75 प्रतिशत से अधिक प्राप्तांक होने पर छत्तीसगढ़ माध्यमिक शिक्षा मंडल के 10 एवं 12 बोर्ड की परीक्षा में मेरिट में प्रथम 10 में आने पर रूपये एक लाख पंजीकृत श्रमिकों के पुत्र एवं पुत्रियों को दी जाएगी मेधावी छात्रछात्रा शिक्षा प्रोत्साहन योजना के अतिरिक्त आईटीआई इंजीनियरिंग मेडिकल ला डेन्टल नर्सिग पालिटेक्निक कृषि महाविद्यालय में प्रवेश लेकर अध्ययनरत हितग्राहीयों के बच्चों का प्रवेश शुल्क समस्त शैक्षणिक शुल्क छात्रावास में रहने एवं भोजन होने वाला व्यय की पूर्ति मंडल व्दारा किया जायेगा।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'रूपये 5000 से 12500 तक',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत निर्माण श्रमिक के प्रथम दो बच्चे जो 75 प्रतिशत से अधिक प्राप्तांक होने पर छत्तीसगढ़ माध्यमिक शिक्षा मंडल के 10 एवं 12 बोर्ड की परीक्षा में मेरिट में प्रथम 10 में आने पर रूपयें एक लाख पंजीकृत श्रमिकों के पुत्र एवं पुत्रियों को दी जाएगी मेधावी छात्रछात्रा शिक्षा प्रोत्साहन योजना के अतिरिक्त आईटीआई इंजीनियरिंग मेडिकल ला डेन्टल नर्सिग पालिटेक्निक कृषि महाविद्यालय में प्रवेश लेकर अध्ययनरत हितग्राहीयों के बच्चों का प्रवेश शुल्क समस्त शैक्षणिक शुल्क छात्रावास में रहने एवं भोजन होने वाला व्यय की पूर्ति मंडल व्दारा किया जायेगा।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, मेधावी छात्रवृत्ति प्रमाण पत्र, पुत्र या पुत्री का 10वीं/12वीं का मार्कशीट, बैंक पासबुक, बच्चे',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('मेधावी छात्र-छात्रा शिक्षा प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA5
class DetailScreenA5 extends StatefulWidget {


  @override
  _DetailScreenA5 createState() => _DetailScreenA5();
}

class _DetailScreenA5 extends State<DetailScreenA5> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'निर्माण श्रमिक जिस भी प्रवर्ग जैसे राजमिस्त्री इलेक्ट्रिशियन प्लम्बर कारपेन्टर कुली पेन्टर में पंजीकृत हो उक्त श्रमिक उसी प्रवर्ग के औजर आवेदन हेतु पात्र होंगे',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'प्रवर्ग के अनुसार औजार कीट',
    'योजना/जन कल्याणकारी की पात्रता': 'निर्माण श्रमिक जिस भी प्रवर्ग जैसे राजमिस्त्री इलेक्ट्रिशियन प्लम्बर कारपेन्टर कुली पेन्टर में पंजीकृत हो उक्त श्रमिक उसी प्रवर्ग के औजर आवेदन हेतु पात्र होंगे',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, बैंक पासबुक व आधार कार्ड',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री श्रमिक औजार सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA6
class DetailScreenA6 extends StatefulWidget {


  @override
  _DetailScreenA6 createState() => _DetailScreenA6();
}

class _DetailScreenA6 extends State<DetailScreenA6> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'हितग्राही महिला श्रमिक पंजीकृत हो एवं हितग्राही महिला श्रमिक की आयु 18 वर्ष से 35 वर्ष होना आवश्यक है। लाभ की पात्रता पंजीयन के 90 दिवस के उपरान्त मंडल में पंजीकृत पुरूष हितग्राही जिनकी आयु 18 से 50 वर्ष हो को मंडल व्दारा सायकल प्रदान किया जायेगा। प्रथम चरण में दिसम्बर 2015 तक पंजीकृत उल्लेखित आयु समूह के पुरूषों को योजना का लाभ प्रदाय किया जायेगा।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सायकल प्रति हितग्राही |',
    'योजना/जन कल्याणकारी की पात्रता': 'हितग्राही महिला श्रमिक पंजीकृत हो एवं हितग्राही महिला श्रमिक की आयु 18 वर्ष से 35 वर्ष होना आवश्यक है। लाभ की पात्रता पंजीयन के 90 दिवस के उपरान्त मंडल में पंजीकृत पुरूष हितग्राही जिनकी आयु 18 से 50 वर्ष हो को मंडल व्दारा सायकल प्रदान किया जायेगा। प्रथम चरण में दिसम्बर 2015 तक पंजीकृत उल्लेखित आयु समूह के पुरूषों को योजना का लाभ प्रदाय किया जायेगा।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, बैंक पासबुक व आधार कार्ड |',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री सायकल सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA7
class DetailScreenA7 extends StatefulWidget {


  @override
  _DetailScreenA7 createState() => _DetailScreenA7();
}

class _DetailScreenA7 extends State<DetailScreenA7> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत निमार्ण महिला श्रमिक जिनकी आयु 18 से 50 वर्ष हो महिला निर्माण श्रमिक की पंजीयन 90 दिन पूर्ण हो चुकी है। मुख्यमंत्री कौशल विकास एवं परिवार सशक्तिकरण योजना के अंतर्गत टेलरिंग में प्रशिक्षण प्राप्त हो राज्य शासन द्वारा संचालित किसी समांतर योजना के अंतर्गत सिलाई मशीन अथवा सिलाई मशीन मूल्य के बराबर राशि प्राप्त नहीं किया हो मंडल द्वारा संचालित मुख्यमंत्री सायकल सहायता योजना अंतर्गत सायकल या उसके मूल्य के बराबर राशि प्राप्त न हुआ हो',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सिलाई मशीन प्रति हितग्राही',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत निमार्ण महिला श्रमिक जिनकी आयु 18 से 50 वर्ष हो महिला निर्माण श्रमिक की पंजीयन 90 दिन पूर्ण हो चुकी है। मुख्यमंत्री कौशल विकास एवं परिवार सशक्तिकरण योजना के अंतर्गत टेलरिंग में प्रशिक्षण प्राप्त हो राज्य शासन द्वारा संचालित किसी समांतर योजना के अंतर्गत सिलाई मशीन अथवा सिलाई मशीन मूल्य के बराबर राशि प्राप्त नहीं किया हो मंडल द्वारा संचालित मुख्यमंत्री सायकल सहायता योजना अंतर्गत सायकल या उसके मूल्य के बराबर राशि प्राप्त न हुआ हो',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, कौशल विकास योजना से प्राप्त प्रशिक्षण प्रमाण पत्र, बैंक पासबुक एवं आधार कार्ड।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री सिलाई मशीन सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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


// DetailScreenA8
class DetailScreenA8 extends StatefulWidget {


  @override
  _DetailScreenA8 createState() => _DetailScreenA8();
}

class _DetailScreenA8 extends State<DetailScreenA8> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'निर्माण पंजीकृत श्रमिक एवं उनके प्रथम दो संतान जिनकी आयु 18 से 50 आयु समूह के हो|',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत निर्माण मजदूर के कौशल उन्नयन हेतु प्रशिक्षण पंजीकृत निर्माण मजदूर जिस ट्रेड में कार्य करतें हैए उसका प्रमाण पत्र प्रदाय करना। पंजीकृत निर्माण मजदूर के परिवार के सदस्यों को उनकी रूचि अनुसार विभिन्न ट्रेड में प्रशिक्षण करना। प्रशिक्षण अवधि में मानदेय भुगतान।',
    'योजना/जन कल्याणकारी की पात्रता': 'निर्माण पंजीकृत श्रमिक एवं उनके प्रथम दो संतान जिनकी आयु 18 से 50 आयु समूह के हो |',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, बैंक पासबुक व आधार कार्ड।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री निर्माण मजदूर कौशल विकास परिवार सशक्तिकरण योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA9
class DetailScreenA9 extends StatefulWidget {


  @override
  _DetailScreenA9 createState() => _DetailScreenA9();
}

class _DetailScreenA9 extends State<DetailScreenA9> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्रदेश के निर्माण श्रमिकों का किसी भी जिले में पंजीयन होना अनिवार्य ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत हितग्राही कों चिकित्सा सहायता रूपयें 20000 अथवा इलाज में हुये वास्तविक व्यय जो कम हो संबंधित चिकित्सा को प्रदाय किया जायेंगा।',
    'योजना/जन कल्याणकारी की पात्रता': 'प्रदेश के निर्माण श्रमिकों का किसी भी जिले में पंजीयन होना अनिवार्य ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, डॉक्टर द्वारा जारी प्रमाण पत्र, बीमारी से सबंधित दस्तावेज, बैंक पासबुक व आधार कार्ड।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('दुर्घटना में चिकित्सा सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA10
class DetailScreenA10 extends StatefulWidget {


  @override
  _DetailScreenA10 createState() => _DetailScreenA10();
}

class _DetailScreenA10 extends State<DetailScreenA10> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'आयु सीमा 18 से 40 वर्ष के पंजीकृत कर्मकारों के लिए प्रभावशील ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत मजदूर को प्रतिवर्ष रूपयें 1000 जमा करना होगा। पीएफआरडी व्दारा केन्द्रांश राशि के रूप में प्रति श्रमिक रूपये 1000 जमा किया जायेगा एवं प्रति वर्ष प्रति श्रमिक रूपयें 1000 मंडल द्वारा प्रदाय किया जावेगा।',
    'योजना/जन कल्याणकारी की पात्रता': 'आयु सीमा 18 से 40 वर्ष के पंजीकृत कर्मकारों के लिए प्रभावशील ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, बैंक पासबुक व आधार कार्ड।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('अटल पेंशन योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA11
class DetailScreenA11 extends StatefulWidget {


  @override
  _DetailScreenA11 createState() => _DetailScreenA11();
}

class _DetailScreenA11 extends State<DetailScreenA11> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'समूह के सभी सदस्य श्रमिक के रूप में पजीकृत होना चाहिए आयु 18 से 50 वर्ष के आयु के होना चाहिए |',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'इस योजना के तहत निर्माणी श्रमिकों के द्वारा स्व सहायता समूह को राशि 100000 रूपये अंशदान के रूप में मण्डल द्वारा प्रदाय किया जावेगा।',
    'योजना/जन कल्याणकारी की पात्रता': 'समूह के सभी सदस्य श्रमिक के रूप में पजीकृत होना चाहिए आयु 18 से 50 वर्ष के आयु के होना चाहिए |',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, आधार कार्ड, बैंक पासबुक, बैंक से लिया गया लोन का सत्यापित प्रमाण, ड्राईविंग लाइसेंस ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('निर्माण श्रमिक ई-रिक्शा सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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



// DetailScreenA12
class DetailScreenA12 extends StatefulWidget {


  @override
  _DetailScreenA12 createState() => _DetailScreenA12();
}

class _DetailScreenA12 extends State<DetailScreenA12> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'इस योजना के अन्तर्गत पंजीकृत निर्माणी श्रमिकों को एक बार योजना का लाभ दिया जावेगा।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'योजना के तहत हेलमेंट जूता दास्ताना सेटी जैकेट एवं मास्क हेतु अथवा 1500 रूपये जो भी कम हो प्रदाय किया जाता है।',
    'योजना/जन कल्याणकारी की पात्रता': 'इस योजना के अन्तर्गत पंजीकृत निर्माणी श्रमिकों को एक बार योजना का लाभ दिया जावेगा।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'पंजीकृत श्रमिक का पंजीयन कार्ड, बैंक पासबुक |',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र से आनलाईन आवेदन किया जा सकता है।',
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
        title: Text('सुरक्षा उपकरण सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत महिला असंगठित कर्मकार जिसकी आयु 18 से 40 वर्ष हो ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सायकल प्रति हितग्राही अथवा सीएसआईडीसी द्वारा सायकल हेतु निर्धारित दर (शासन से प्राप्त निर्देशानुसार दोनों में से एक)',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत महिला असंगठित कर्मकार जिसकी आयु 18 से 40 वर्ष हो ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री असंगठित कर्मकार सायकल सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'दर्जी प्रवर्ग में पंजीकृत महिला असंगठित कर्मकार, जिसकी आयु 18 से 50 वर्ष हो, जो सिलाई, कढ़ाई, दर्जी का कार्य करती हो या किसी नियोजक के यहां कार्यरत हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सिलाई मशीन प्रति हितग्राही अथवा सीएसआईडीसी द्वारा सिलाई मशीन हेतु निर्धारित दर राशि (शासन से प्राप्त निर्देशानुसार दोनों में से एक)',
    'योजना/जन कल्याणकारी की पात्रता': 'दर्जी प्रवर्ग में पंजीकृत महिला असंगठित कर्मकार, जिसकी आयु 18 से 50 वर्ष हो, जो सिलाई, कढ़ाई, दर्जी का कार्य करती हो या किसी नियोजक के यहां कार्यरत हो ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री असंगठित कर्मकार सिलाई मशीन सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'मण्डल में समाचार-पत्र बांटने वाले प्रवर्ग में पंजीकृत हो, योजना का लाभ राज्य शासन के समानांतर किसी अन्य योजना का लाभ प्राप्त नहीं कर रहा हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सायकल प्रति हितग्राही अथवा सीएसआईडीसी द्वारा सायकल हेतु निर्धारित दर राशि (शासन से प्राप्त निर्देशानुसार दोनों में से एक)',
    'योजना/जन कल्याणकारी की पात्रता': 'मण्डल में समाचार-पत्र बांटने वाले प्रवर्ग में पंजीकृत हो, योजना का लाभ राज्य शासन के समानांतर किसी अन्य योजना का लाभ प्राप्त नहीं कर रहा हो।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('असंगठित कर्मकार समाचार-पत्र हाकर सायकल सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत ठेका श्रमिक, हमाल एवं घरेलू कामकाजी महिला, जिसकी आयु 18 से 60 वर्ष हो, को किडनी, कैंसर, सिकलसेल एनीमिया, हृदय रोग, एड्स एवं लकवा जैसे गंभीर बीमारी पर चिकित्सा सहातया हेतु 90 दिवस पूर्व पंजीयन आवश्यक है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत असंगठित कर्मकार को किडनी, कैंसर, सिकलसेल एनीमिया, हृदय रोग, एड्स एवं लकवा रोग के इलाज हेतु राशि रू.50 हजार की चिकित्सा सहायता',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत ठेका श्रमिक, हमाल एवं घरेलू कामकाजी महिला, जिसकी आयु 18 से 60 वर्ष हो, को किडनी, कैंसर, सिकलसेल एनीमिया, ह्दय रोग, एड्स एवं लकवा जैसे गंभीर बीमारी पर चिकित्सा सहातया हेतु 90 दिवस पूर्व पंजीयन आवश्यक है।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हेतग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, संबंधित बीमारी के संबंध में चिकित्सक (डॉक्टर) द्वारा जारी प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री असंगठित कर्मकार गंभीर बीमारी चिकित्सा सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'मण्डल में राउत, चरवाहा, दूध दुहन वाले प्रवर्ग में पंजीकृत, आयु 18 से 60 वर्ष हो ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सायकल प्रति हितग्राही अथवा सीएसआईडीसी द्वारा सायकल हेतु निर्धारित दर राशि',
    'योजना/जन कल्याणकारी की पात्रता': 'मण्डल में राउत, चरवाहा, दूध दुहन वाले प्रवर्ग में पंजीकृत, आयु 18 से 60 वर्ष हो ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री राउत, चरवाहा एवं दूध दूहने वाले सायकल सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'कोटवार प्रवर्ग में पंजीकृत हो ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सायकल प्रति हितग्राही अथवा सीएसआईडीसी द्वारा सायकल हेतु निर्धारित दर राशि एवं टार्च हेतु 750 रूपये देय होगा|',
    'योजना/जन कल्याणकारी की पात्रता':'कोटवार प्रवर्ग में पंजीकृत हो ।',
    'आवेदन कैसे करें':'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।' ,
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('मुख्यमंत्री कोटवार सायकल एवं टार्च सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत असंगठित कर्मकार जिसकी आयु 18 से 50 वर्ष की हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'योजना के तहत बीमित हितग्राहियों के सामान्य मृत्यु पर 02 लाख एवं दुर्घटना से मृत्यु की स्थिति में 04 लाख दावा राशि हितग्राहियों के आश्रितों को प्रदाय किये जाने का प्रावधान है।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत असंगठित कर्मकार जिसकी आयु 18 से 50 वर्ष की हो।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('प्रधानमंत्री जीवन ज्योति बीमा योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen8
class DetailScreen8 extends StatefulWidget {


  @override
  _DetailScreen8 createState() => _DetailScreen8();
}

class _DetailScreen8 extends State<DetailScreen8> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'सायकल रिक्शा चालक / आटो चालक अथवा पंजीकृत श्रमिकों के पंजीकृत समूह के रूप में पंजीकृत हो एवं पंजीकृत कर्मकार की आयु 18 से 50 वर्ष आयु समूह के हो राज्य शासन के समानांतर किसी अन्य योजना का लाभ नहीं प्राप्त कर रहा हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'प्रति हितग्राही अनुदान राशि रू. 50 हजार',
    'योजना/जन कल्याणकारी की पात्रता': 'सायकल रिक्शा चालक/ आटो चालक अथवा पंजीकृत श्रमिकों के पंजीकृत समूह के रूप में पंजीकृत हो एवं पंजीकृत कर्मकार की आयु 18 से 50 वर्ष आयु समूह के हो राज्य शासन के समानांतर किसी अन्य योजना का लाभ नहीं प्राप्त कर रहा हो।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र एवं बैंक ऋण स्वीकृत दस्तावेज',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('ई-रिक्शा सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen9
class DetailScreen9 extends StatefulWidget {


  @override
  _DetailScreen9 createState() => _DetailScreen9();
}

class _DetailScreen9 extends State<DetailScreen9> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'चाय चाट ठेला लगाने वाले प्रवर्ग में पंजीकृत हो, जिसकी आयु 18 से 50 वर्ष आयु समूह की हो। राज्य शासन के समानांतर किसी अन्य योजना का लाभ नहीं प्राप्त कर रहा हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'प्रति हितग्राही अनुदान राशि रू. 30 हजार',
    'योजना/जन कल्याणकारी की पात्रता': 'चाय चाट ठेला लगाने वाले प्रवर्ग में पंजीकृत हो, जिसकी आयु 18 से 50 वर्ष आयु समूह की हो। राज्य शासन के समानांतर किसी अन्य योजना का लाभ नहीं प्राप्त कर रहा हो।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र एवं बैंक ऋण स्वीकृत दस्तावेज',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('ई-ठेला सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen10
class DetailScreen10 extends StatefulWidget {


  @override
  _DetailScreen10 createState() => _DetailScreen10();
}

class _DetailScreen10 extends State<DetailScreen10> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'कचरा बिनने वाले प्रवर्ग में पंजीकृत हो, जिसकी आयु 18 से 60 वर्ष आयु समूह की हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत कचरा बिनने वाले को दस्ताना, जूता एवं रेनकोट अथवा सीएसआईडीसी द्वारा निर्धारित दर देय होगा ',
    'योजना/जन कल्याणकारी की पात्रता': 'कचरा बिनने वाले प्रवर्ग में पंजीकृत हो, जिसकी आयु 18 से 60 वर्ष आयु समूह की हो।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('कचरा बिनने वाले हेतु सुरक्षा उपकरण सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen11
class DetailScreen11 extends StatefulWidget {


  @override
  _DetailScreen11 createState() => _DetailScreen11();
}

class _DetailScreen11 extends State<DetailScreen11> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत असंगठित कर्मकार जिसकी आयु 18 से 60 वर्ष की हो।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत असंगठित कर्मकार की मृत्यु होने पर रू. 1,00,000/- एवं स्थायी दिव्यांगता पर 50,000/- दिया जाना प्रावधानित है।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत असंगठित कर्मकार जिसकी आयु 18 से 60 वर्ष की हो।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र एवं मृत्यु प्रमाण पत्र, स्थायी दिव्यांगता प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('असंगठित कर्मकार मृत्यु एवं दिव्यांग सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen12
class DetailScreen12 extends StatefulWidget {


  @override
  _DetailScreen12 createState() => _DetailScreen12();
}

class _DetailScreen12 extends State<DetailScreen12> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत महिला असंगठित कर्मकार को प्रथम एवं द्वितीय प्रसव हेतु।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत महिला कर्मकार को रू. 10000/- प्रति प्रसव प्रथम एवं द्वितीय प्रसव हेतु दिया जाना प्रावधानित है।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत महिला असंगठित कर्मकार को प्रथम एवं द्वितीय प्रसव हेतु |',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र एवं जन्म प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('असंगठित कर्मकार प्रसूति सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen13
class DetailScreen13 extends StatefulWidget {


  @override
  _DetailScreen13 createState() => _DetailScreen13();
}

class _DetailScreen13 extends State<DetailScreen13> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत असंगठित कर्मकार की प्रथम दो पुत्र/पुत्री को कक्षा अनुसार राशि निर्धारित |',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत असंगठित कर्मकार के प्रथम दो संतानों को अध्ययनरत होने पर कक्षावार राशि रू. 500 से रू. 5000 तक वार्षिक प्रोत्साहन राशि |',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत असंगठित कर्मकार की प्रथम दो पुत्र/पुत्री को कक्षा अनुसार राशि निर्धारित |',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र, अंकसूची एवं संबंधित प्राचार्य द्वारा जारी अध्ययन प्रमाण पत्र|',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('असंगठित कर्मकारों के बच्चों हेतु छात्रवृत्ति सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen14
class DetailScreen14 extends StatefulWidget {


  @override
  _DetailScreen14 createState() => _DetailScreen14();
}

class _DetailScreen14 extends State<DetailScreen14> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'सफाई कर्मकार के रूप में पंजीकृत हो|',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत सफाई कर्मकार एवं उनके परिवार के सदस्य को सीएसएसडीए द्वारा चिन्हांकित ट्रेड में प्रशिक्षण |',
    'योजना/जन कल्याणकारी की पात्रता': 'सफाई कर्मकार के रूप में पंजीकृत हो',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('सफाई कर्मकार कौशल उन्नयन योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen15
class DetailScreen15 extends StatefulWidget {


  @override
  _DetailScreen15 createState() => _DetailScreen15();
}

class _DetailScreen15 extends State<DetailScreen15> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'मण्डल में राउत, चरवाहा, दूध दुहन वाले प्रवर्ग में पंजीकृत, आयु 18 से 60 वर्ष हो ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत सफाई कर्मकार के प्रथम दो संतानों को अध्ययनरत होने पर कक्षावार राशि रू. 1000 से रू. 15000 तक वार्षिक प्रोत्साहन राशि',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत असंगठित कर्मकार की प्रथम दो पुत्र/पुत्री को कक्षा अनुसार राशि निर्धारित',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र, अंकसूची एवं संबंधित प्राचार्य द्वारा जारी अध्ययन प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('सफाई कर्मकार के बच्चे हेतु छात्रवृत्ति योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen16
class DetailScreen16 extends StatefulWidget {


  @override
  _DetailScreen16 createState() => _DetailScreen16();
}

class _DetailScreen16 extends State<DetailScreen16> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत सफाई कामगार जिसकी आयु 18 से 60 वर्ष हो, को किडनी, कैंसर, सिकलसेल एनीमिया, हृदय रोग, एड्स एवं लकवा जैसे गंभीर बीमारी पर चिकित्सा सहातया हेतु 90 दिवस पूर्व पंजीयन आवश्यक है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत सफाई कामगार को किडनी, कैंसर, सिकलसेल एनीमिया, हृदय रोग एड्स एवं लकवा रोग के इलाज हेतु राशि रू. 50000/- की चिकित्सा सहायता',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत सफाई कामगार जिसकी आयु 18 से 60 वर्ष हो, को किडनी, कैंसर, सिकलसेल एनीमिया, ह्दय रोग, एड्स एवं लकवा जैसे गंभीर बीमारी पर चिकित्सा सहातया हेतु 90 दिवस पूर्व पंजीयन आवश्यक है।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, संबंधित बीमारी के संबंध में चिकित्सक (डॉक्टर) द्वारा जारी प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('सफाई कर्मकार गंभीर बीमारी चिकित्सा सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen17
class DetailScreen17 extends StatefulWidget {


  @override
  _DetailScreen17 createState() => _DetailScreen17();
}

class _DetailScreen17 extends State<DetailScreen17> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत सफाई कर्मकार के प्रथम दो संतानों को यदि वे शाला / विश्वविद्यालय में अध्ययनरत है तथा शिक्षा विभाग से सायकल सहायता योजना का लाभ प्राप्त नहीं हुआ है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत सफाई कर्मकार के प्रथम दो संतानों को यदि वे शाला / विश्वविद्यालय में अध्ययनरत है तथा शिक्षा विभाग से सायकल सहायता योजना का लाभ प्राप्त नहीं हुआ है को प्रदाय किया जावेगा।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत सफाई कर्मकार के प्रथम दो संतानों को यदि वे शाला / विश्वविद्यालय में अध्ययनरत है तथा शिक्षा विभाग से सायकल सहायता योजना का लाभ प्राप्त नहीं हुआ है |',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र, प्राचार्य द्वारा जारी अध्ययन प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('सफाई कर्मकार पुत्र/पुत्री सायकल सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen18
class DetailScreen18 extends StatefulWidget {


  @override
  _DetailScreen18 createState() => _DetailScreen18();
}

class _DetailScreen18 extends State<DetailScreen18> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत महिला सफाई कर्मकार के रूप में पंजीकृत हो । प्रथम एवं द्वितीय प्रसव पर।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत महिला सफाई कर्मकार को गर्भधारण के तीसरे माह में रू. 5000/- एवं आठवें माह में रू. 5000/- प्रथम एवं द्वितीय प्रसव हेतु दिया जाना प्रावधानित है।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत महिला सफाई कर्मकार के रूप में पंजीकृत हो । प्रथम एवं द्वितीय प्रसव पर।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र, जच्चा बच्चा कार्ड',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('सफाई कर्मकार प्रसूति सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen19
class DetailScreen19 extends StatefulWidget {


  @override
  _DetailScreen19 createState() => _DetailScreen19();
}

class _DetailScreen19 extends State<DetailScreen19> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'सफाई कर्मकार के रूप में पंजीकृत कर्मकार, जिसकी आयु 18 से 60 वर्ष हो ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत सफाई कर्मकार को गमबूट, दस्ताने, मास्क एवं एप्रन अथवा राशि रू. 1000/- दिया जाना प्रावधानित ।',
    'योजना/जन कल्याणकारी की पात्रता': 'सफाई कर्मकार के रूप में पंजीकृत कर्मकार, जिसकी आयु 18 से 60 वर्ष हो ।',
    'आवेदन कैसे करें': 'सफाई कर्मकार के रूप में पंजीकृत कर्मकार, जिसकी आयु 18 से 60 वर्ष हो ।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र |',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('सफाई कर्मकार हेतु आवश्यक उपकरण सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen20
class DetailScreen20 extends StatefulWidget {


  @override
  _DetailScreen20 createState() => _DetailScreen20();
}

class _DetailScreen20 extends State<DetailScreen20> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत ठेका श्रमिक, हमाल एवं घरेलू कामकाजी महिला, जिसकी आयु 18 से 60 वर्ष हो, को किडनी, कैंसर, सिकलसेल एनीमिया, ह्दय रोग, एड्स एवं लकवा जैसे गंभीर बीमारी पर चिकित्सा सहातया हेतु 90 दिवस पूर्व पंजीयन आवश्यक है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत ठेका श्रमिक, हमाल श्रमिक एवं घरेलू महिला कामगारों को किडनी, कैंसर, सिकलसेल एनीमिया, हृदय रोग, एड्स एवं लकवा रोग के इलाज हेतु राशि रू. 50000/- की चिकित्सा सहायता',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत ठेका श्रमिक, हमाल एवं घरेलू कामकाजी महिला, जिसकी आयु 18 से 60 वर्ष हो, को किडनी, कैंसर, सिकलसेल एनीमिया, हृदय रोग, एवं लकवा जैसे गंभीर बीमारी पर चिकित्सा सहातया हेतु 90 दिवस पूर्व पंजीयन आवश्यक है।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, संबंधित बीमारी के संबंध में चिकित्सक (डॉक्टर) द्वारा जारी प्रमाण पत्र ।',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('ठेका श्रमिक, हमाल श्रमिक एवं घरेलू महिला कामगारों हेतु गंभीर बीमारी चिकित्सा सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen21
class DetailScreen21 extends StatefulWidget {


  @override
  _DetailScreen21 createState() => _DetailScreen21();
}

class _DetailScreen21 extends State<DetailScreen21> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत ठेका श्रमिक, घरेलू महिला कर्मकार एवं हमाल की प्रथम दो पुत्र / पुत्री को कक्षा अनुसार राशि निर्धारित |',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत ठेका श्रमिक, घरेलू महिला कामगार एवं हमाल श्रमिक के प्रथम दो संतानों को अध्ययनरत होने पर कक्षावार राशि रू.500 से 5000 तक वार्षिक छात्रवृत्ति राशि |',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत ठेका श्रमिक, घरेलू महिला कर्मकार एवं हमाल की प्रथम दो पुत्र / पुत्री को कक्षा अनुसार राशि निर्धारित |',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र, अंकसूची एवं संबंधित प्राचार्य द्वारा जारी अध्ययन प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('ठेका श्रमिक, घरेलू महिला कर्मकार एवं हमाल श्रमिकों के बच्चों हेतु छात्रवृत्ति योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen22
class DetailScreen22 extends StatefulWidget {


  @override
  _DetailScreen22 createState() => _DetailScreen22();
}

class _DetailScreen22 extends State<DetailScreen22> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत महिला ठेका श्रमिक, घरेलू महिला कामगार एवं महिला हमाल श्रमिक को प्रथम एवं द्वितीय प्रसव हेतु ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत महिला ठेका श्रमिक, घरेलू महिला कामगार एवं महिला हमाल श्रमिक को रू. 10000/- प्रति प्रसव प्रथम एवं द्वितीय प्रसव हेतु दिया जाना प्रावधानित है।',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत महिला ठेका श्रमिक, घरेलू महिला कामगार एवं महिला हमाल श्रमिक को प्रथम एवं द्वितीय प्रसव हेतु ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र एवं जन्म प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('महिला ठेका श्रमिक, घरेलू महिला कामगार एवं महिला हमाल श्रमिक प्रसूति सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen23
class DetailScreen23 extends StatefulWidget {


  @override
  _DetailScreen23 createState() => _DetailScreen23();
}

class _DetailScreen23 extends State<DetailScreen23> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत हमाल श्रमिक, जिसकी आयु 18 से 60 वर्ष के हो',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'पंजीकृत हमाल को जूता हुक एवं महिला हमाल को सूपा टोकरी का लाभ प्रदाय',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('हमाल हेतु जूता, हुक एवं महिला हमाल हेतु सूपा और टोकरी सहायता योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen24
class DetailScreen24 extends StatefulWidget {


  @override
  _DetailScreen24 createState() => _DetailScreen24();
}

class _DetailScreen24 extends State<DetailScreen24> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {

    'योजना/जन कल्याणकारी कार्य का विवरण': 'पंजीकृत घरेलु महिला कर्मकार, जिसकी आयु 18 से 60 वर्ष हो ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'एक सायकल प्रति हितग्राही अथवा सीएसआईडीसी द्वारा सायकल हेतु निर्धारित दर राशि एवं छतरी, चप्पल / जूता हेतु 500 रूपये',
    'योजना/जन कल्याणकारी की पात्रता': 'पंजीकृत घरेलु महिला कर्मकार, जिसकी आयु 18 से 60 वर्ष हो ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',

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
        title: Text('घरेलू महिला कामगार सायकल, छतरी, चप्पल / जूता सहा. यो.'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen25
class DetailScreen25 extends StatefulWidget {


  @override
  _DetailScreen25 createState() => _DetailScreen25();
}

class _DetailScreen25 extends State<DetailScreen25> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'ठेका श्रमिक, घरेलू महिला कामगार एवं हमाल श्रमिक के रूप में पंजीकृत हो ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'घरेलू कामगार एवं उनके परिवार के सदस्यों को एवं ठेका श्रमिक, हमाल श्रमिक के परिवार के सदस्यों को सीएसएसडीए द्वारा चिन्हांकित टेड में प्रशिक्षण |',
    'योजना/जन कल्याणकारी की पात्रता': 'ठेका श्रमिक, घरेलू महिला कामगार एवं हमाल श्रमिक के रूप में पंजीकृत हो ।',
    'आवेदन कैसे करें': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
    'आवश्यक दस्तावेज': 'हितग्राही का पंजीयन कार्ड, बैंक पासबुक, आधार कार्ड, आय प्रमाण पत्र |',
    'कैसे और कहाँ से क्या करना है।': 'आवश्यक दस्तावेज के साथ किसी भी च्वाइस सेंटर / लोक सेवा केन्द्र अथवा श्रम कार्यालय से आवेदन आनलाईन किया जा सकता है।',
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
        title: Text('घरेलू कामगार कौशल उन्नयन एवं ठेका श्रमिक, हमाल तथा घरेलू महिला कामगार परिवार सशक्तिकरण योजना'),backgroundColor: Color(0xFF49BAEE),
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

// DetailScreen26
class DetailScreen26 extends StatefulWidget {


  @override
  _DetailScreen26 createState() => _DetailScreen26();
}

class _DetailScreen26 extends State<DetailScreen26> {
  final List<String> items = [
    'योजना/जन कल्याणकारी कार्य का विवरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': ' ',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': '',
    'योजना/जन कल्याणकारी की पात्रता': '',
    'आवेदन कैसे करें': '',
    'आवश्यक दस्तावेज': '',
    'कैसे और कहाँ से क्या करना है।': '',
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
        title: Text('नि:शुल्क पाठ्यपुस्तकों का प्रदाय'),backgroundColor: Color(0xFF49BAEE),
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

