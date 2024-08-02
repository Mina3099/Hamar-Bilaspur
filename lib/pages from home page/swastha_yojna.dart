import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
    'मुख्यमंत्री बाल श्रवण योजना',
    'मुख्यमंत्री बालहृदय सुरक्षा योजना',
    'संजीवनी कोष योजना',
    'जननी सुरक्षा योजना',
    'मुख्यमंत्री दवा पेटी योजना',
    'डॉ. खूबचंद बघेल स्वास्थ्य सहायता योजना, मुख्यमंत्री विशेष स्वसहायता योजना एवं आयुष्मान भारत- प्रधानमंत्री जन आरोग्य योजना',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'मुख्यमंत्री बाल श्रवण योजना': (context) => DetailScreen1(),
    'मुख्यमंत्री बालहृदय सुरक्षा योजना': (context) => DetailScreen2(),
    'संजीवनी कोष योजना': (context) => DetailScreen3(),
    'जननी सुरक्षा योजना': (context) => DetailScreen4(),
    'मुख्यमंत्री दवा पेटी योजना': (context) => DetailScreen5(),
    'डॉ. खूबचंद बघेल स्वास्थ्य सहायता योजना, मुख्यमंत्री विशेष स्वसहायता योजना एवं आयुष्मान भारत- प्रधानमंत्री जन आरोग्य योजना': (context) => DetailScreen6(),
    //'': (context) => DetailScreen7(),


    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('योजना/जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का उद्देश्य',
    'योजना/ जन कल्याणकारी कार्य का लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'जन्मजात बधिरता एवं छोटे बच्चों में बधिरता से होने वाले दुष्प्रभाव को कम करना एवं उनमें भाषा एवं वाणी का विकास करना ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य': 'जन्मजात बधिरता एवं छोटे बच्चों में बधिरता से होने वाले दुष्प्रभाव को कम करना एवं उनमें भाषा एवं वाणी का विकास करना ।',
    'योजना/ जन कल्याणकारी कार्य का लाभ':'इस योजना के तहत श्रवण बाधित बच्चे के कान के भीतर कॉक्लियर मशीन लगायी जाती है। यह मशीन उन्हीं बच्चों में लगाई जाती है, जिसे सुनाई देने वाली मशीन लगाने के बाद भी सुनाई नहीं देता। यह काफी महंगा आपरेशन है। राज्य शासन द्वारा बी.पी.एल. परिवार के लिए 6 लाख एवं सामान्य परिवारों के लिए 4 लाख रूपए की सहायता राशि स्वीकृत की जाती है, लेकिन गरीबी रेखा श्रेणी के परिवारों को अधिकतम सहायता राशि रू. 5.70 लाख रूपयें एवं गरीबी रेखा के ऊपर जीवन यापन करने वाले परिवार के मरीजों को 3.70 लाख रूपए की सहायता दी जाती है। शेष तीस हजार रूपये स्पीच थेरापी पर व्यय किया जाता है।',
    'योजना/जन कल्याणकारी की पात्रता':'हितग्राही को छत्तीसगढ़ का मूल निवासी होना आवश्यक है। श्रवण बाधित बच्चे की आयु एक से सात वर्ष के बीच होना चाहिए। एक से चार वर्ष तक की आयु के बच्चों को प्राथमिकता दी जाती है। गरीबी रेखा के नीचे जीवन यापन करने वाले तथा सामान्य श्रेणी के हितग्राही भी आवेदन कर सकते हैं।',
    'आवेदन कैसे करें': 'बच्चे में श्रवण बाधिता की पुष्टि होने के बाद निर्धारित आवेदन-पत्र सिविल सर्जन के माध्यम से योजना के राज्य नोडल अधिकारी, संचालनालय स्वास्थ्य और परिवार कल्याण संचालनालय पुराना नर्सेस हॉस्टल रायपुर को प्रस्तुत करना होगा। आवेदन पत्र के साथ कॉक्लियर इम्पलांट सर्जरी की अनुशंसा की छायाप्रति, मूल निवास प्रमाण पत्र और यदि आवेदक गरीबी रेखा श्रेणी का है, तो बी.पी.एल. का प्रमाण-पत्र प्रस्तुत करना होगा। आवेदन पत्र सभी जिला चिकित्सालय, राज्य नोडल अधिकारी स्वास्थ्य और परिवार कल्याण संचालनालय रायपुर एवं डॉ. भीमराव अम्बेडकर अस्पताल रायपुर के कॉक्लियर इम्पलांट केन्द्र से प्राप्त किए जा सकते हैं।',
    'कैसे और कहाँ से क्या करना है।': 'स्वास्थ्य एवं परिवार कल्याण संचालनालय, पुराना नर्सिंग हॉस्टल रायपुर अथवा जिलों में मुख्य चिकित्सा एवं स्वास्थ्य अधिकारी ।',
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
        title: Text('योजना/जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का उद्देश्य',
    'योजना/ जन कल्याणकारी कार्य का लाभ',
        'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्रदेश के एक से पन्द्रह वर्ष आयु तक के हृदय रोग से पीड़ित बच्चों को हृदय रोग से मुक्ति दिलाना। इसके अन्तर्गत सात प्रकार के हृदय रोगों का सरकारी खर्चे पर इलाज और हृदय की शल्य क्रिया मान्यता प्राप्त चिकित्सालयों में कराई जाती है। योजना की शुरूआत 28 जुलाई 2008 को मुख्यमंत्री डॉ. रमन सिंह के द्वारा हुई ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य': 'प्रदेश के एक से पन्द्रह वर्ष आयु तक के हृदय रोग से पीड़ित बच्चों को हृदय रोग से मुक्ति दिलाना । इसके अन्तर्गत सात प्रकार के हृदय रोगों का सरकारी खर्चे पर इलाज और हृदय की शल्य क्रिया मान्यता प्राप्त चिकित्सालयों में कराई जाती है। योजना की शुरूआत 28 जुलाई 2008 को मुख्यमंत्री डॉ. रमन सिंह के द्वारा हुई ।',
    'योजना/ जन कल्याणकारी कार्य का लाभ':'योजना के अन्तर्गत हृदय रोग से पीड़ित बच्चों के आपरेशन के लिए अधिकतम एक लाख तीस हजार रूपए जटिल शल्य क्रिया के लिए 1 लाख 50 हजार और यदि हृदय का बाल्ब बदला जाता है, तो उसके लिए पचास हजार रूपए अलग से दिए जाने का प्रावधान। अधिकतम तीन सप्ताह तक मरीज और उसके परिजनों के ठहरने और भोजन की व्यवस्था अस्पताल प्रबंधन द्वारा की जाती है।',
        'योजना/जन कल्याणकारी की पात्रता':'आवेदक छत्तीसगढ़ का मूल निवासी हो। इलाज कराने के लिए आर्थिक रूप से सक्षम ना हो। गरीबी रेखा सूची में नाम होने की अनिवार्यता नहीं ।',
    'आवेदन कैसे करें': 'जिलों के मुख्य चिकित्सा एवं स्वास्थ्य अधिकारी अथवा प्रमुख चिकित्सक सह अस्पताल अधीक्षक कार्यालय से आवेदन पत्र निःशुल्क प्राप्त किया जा सकता है। आवेदन पत्र में गरीबी रेखा के नीचे जीवन यापन करने का प्रमाण पत्र अथवा कमजोर आर्थिक स्थिति का प्रमाण पत्र कार्यपालक अधिकारी ( तहसीलदार) से लेना आवश्यक बीमारी के संबंध में सिविल सर्जन का प्रमाण पत्र संलग्न करना अनिवार्य है।',
    'कैसे और कहाँ से क्या करना है।': 'स्वास्थ्य एवं परिवार कल्याण संचालनालय, पुराना नर्सिंग हॉस्टल रायपुर अथवा जिलों में मुख्य चिकित्सा एवं स्वास्थ्य अधिकारी ।',
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
        title: Text('योजना/जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का उद्देश्य',
    'योजना/ जन कल्याणकारी कार्य का लाभ',
        'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'गरीबी रेखा के नीचे जीवन यापन करने वाले परिवार के सदस्यों को गंभीर बीमारियों के ईलाज के लिए सहायता देना।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य': 'गरीबी रेखा के नीचे जीवन यापन करने वाले परिवार के सदस्यों को गंभीर बीमारियों के ईलाज के लिए सहायता देना ।',
    'योजना/ जन कल्याणकारी कार्य का लाभ':'इस योजना के अन्तर्गत पात्र व्यक्ति को अधिकतम डेढ़ लाख रूपए तक की सहायता दी जाती है। मस्तिष्क में चोट हेतु 2 लाख एवं किडनी प्रत्यारोपण हेतु 3 लाख रूपए की सहायता राशि दी जाती है। संजीवनी कोष के अन्तर्गत 30 प्रकार गंभीर बीमारियों हेतु सहायता राशि दिये जाने का प्रावधान है। दिसम्बर 2018 से अक्टुबर 2020 तक कुल 68 हितग्राही को लाभ प्राप्त हुआ',
        'योजना/जन कल्याणकारी की पात्रता':'छत्तीसगढ़ का मूल निवासी एवं गरीबी रेखा सूची में नाम होना अनिवार्य है। मुख्यमंत्री खाद्यान्न सहायता योजना के हितग्राही परिवार को भी कलेक्टर का प्रमाण पत्र होने पर योजना का लाभ दिया जा सकता है।',
    'आवेदन कैसे करें': 'जिले के मुख्य चिकित्सा एवं स्वास्थ्य अधिकारी अथवा सिविल सर्जन कार्यालय से आवेदन प्राप्त कर संबंधित कलेक्टर कार्यालय में जमा किए जा सकते हैं।',
    'कैसे और कहाँ से क्या करना है।': 'आवेदन पत्र कलेक्टर कार्यालय में जमा करना होगा।',
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
        title: Text('योजना/जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का उद्देश्य',
    'योजना/ जन कल्याणकारी कार्य का लाभ',
        'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'संस्थागत प्रसव की बढ़ावा देकर मातृ एवं शिशु मृत्यु दर में कमी लाना ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य': 'संस्थागत प्रसव की बढ़ावा देकर मातृ एवं शिशु मृत्यु दर में कमी लाना ।',
    'योजना/ जन कल्याणकारी कार्य का लाभ':'ग्रामीण क्षेत्र की महिलाओं को संस्थागत प्रसव कराने पर हितग्राही को 1400 रूपए, शहरी क्षेत्र की गर्भवती महिलाओं को संस्थागत प्रसव कराने पर 1000 रूपए की प्रोत्साहल राशि दी जाती है। ग्रामीण क्षेत्रों गर्भवती माता को स्वास्थ्य केन्द्र तक लाने के लिए मितानिन को 300 रूपए परिवहन खर्च और शहरी क्षेत्रों में गर्भवती माता को स्वास्थ्य केन्द्र तक लाने के लिए मितानिन को 200 रूपए परिवहन खर्च हेतु प्रोत्साहन राशि दी जाती है। अपने घर में मितानिन अथवा ए. एन. एम. की देखरेख में प्रसव कराने पर भी (केवल बी.पी.एल. परिवार को ) महिला को 500 रूपए तक की सहायता दी जाती है',
        'योजना/जन कल्याणकारी की पात्रता':'गर्भवती महिलाएं।',
    'आवेदन कैसे करें': 'उपस्वास्थ्य केन्द्र, प्राथमिक स्वास्थ्य केन्द्र, सामुदायिक स्वास्थ्य केन्द्र अथवा जिला अस्पताल या निजी पंजीकृत अस्पताल में प्रसव पश्चात् लाभ लिया जा सकता है।',
    'कैसे और कहाँ से क्या करना है।': 'उप स्वास्थ्य केन्द्र, सामुदायिक स्वास्थ्य केन्द्र, जिला अस्पताल अथवा किसी भी शासकीय अस्पताल में प्रसव कराकर योजना का लाभ लिया जा सकता है तथा पंजीकृत निजी चिकित्सालय में पात्र बी.पी.एल. राशन कार्ड वाले भी योजना का लाभ ले सकते हैं।',
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
        title: Text('योजना/जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का उद्देश्य',
    'योजना/ जन कल्याणकारी कार्य का लाभ',
        'योजना/जन कल्याणकारी की पात्रता',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'उल्टी, दस्त, सर्दी-खांसी आदि बीमारियों के दवा वितरण के लिए प्रशिक्षत मितानिनों को दवा उपलब्ध कराना ।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य': 'उल्टी, दस्त, सर्दी-खांसी आदि बीमारियों के दवा वितरण के लिए प्रशिक्षत मितानिनों को दवा उपलब्ध कराना ।',
    'योजना/ जन कल्याणकारी कार्य का लाभ':'इस योजना के अन्तर्गत मितानिन ग्रामीण क्षेत्रों में उल्टी, दस्त, सर्दी-खासी आदि सामान्य बीमारियों के उपचार के लिए निःशुल्क दवा वितरित की जाती है।',
        'योजना/जन कल्याणकारी की पात्रता':'आमजन ।',
    'कैसे और कहाँ से क्या करना है।': 'संबंधित ग्राम की मितानिन से संपर्क करें।',
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
        title: Text('योजना/जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का उद्देश्य',
  'योजना/ जन कल्याणकारी कार्य का लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'योजना अंतर्गत परिवारों को निःशुल्क स्वास्थ्य का लाभ देना, देश के किसी भी शासकीय अस्पताल और मान्यता प्राप्त निजी चिकित्सालय में निःशुल्क इलाज |',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य': 'योजना अंतर्गत परिवारों को निःशुल्क स्वास्थ्य का लाभ देना, देश के किसी भी शासकीय अस्पताल और मान्यता प्राप्त निजी चिकित्सालय में निःशुल्क इलाज |',
    'योजना/ जन कल्याणकारी कार्य का लाभ':'अ. डॉ. खूबचंद बघेल स्वास्थ्य सहायता योजना- ऐसे पात्र परिवार जिनका नाम म्ब्ब् सर्वे सूची 2011 में है व अन्त्योदय कार्डधारी एवं प्राथमिकता राशन कार्डधारी है, को मान्यता प्राप्त शासकीय एवं निजी चिकित्सालयों में रू. 5 लाख तक निःशुल्क ईलाज की सुविधा । ऐसे पात्र परिवार जिनका नाम म्ब्ब्ब् सर्वे सूची 2011 में नहीं है, को मान्यता प्राप्त शासकीय एवं निजी चिकित्सालयों में रू. 50 हजार तक निःशुल्क ईलाज की सुविधा । ब.) मुख्यमंत्री विशेष स्वसहायता योजना- मान. मुख्य मंत्री के अनुमोदन उपरांत मान्यता प्राप्त शासकीय एवं निजी चिकित्सालयों में रू. 20 लाख तक दुर्लभ बिमारी हेतु निःशुल्क ईलाज की सुविधा । स . ) आयुष्मान भारत- प्रधानमंत्री जन आरोग्य योजना- ऐसे पात्र परिवार जिनका नाम म्ब्ब् सर्वे सूची 2011 में है व अन्त्योदय कार्डधारी एवं प्राथमिकता राशन कार्डधारी है, को मान्यता प्राप्त शासकीय एवं निजी चिकित्सालयों में रू. 5 लाख तक निःशुल्क ईलाज की सुविधा । ऐसे पात्र परिवार जिनका नाम म्ब्ब् सर्वे सूची 2011 में नही है, को मान्यता प्राप्त शासकीय एवं निजी चिकित्सालयों में रू.50 हजार तक निःशुल्क ईलाज की सुविधा । ',
    'योजना/जन कल्याणकारी की पात्रता':'अ. डॉ. खूबचंद बघेल स्वास्थ्य सहायता योजना 1. छत्तीसगढ़ का मूल निवासी । 2. राशन कार्ड एवं आधार कार्ड धारी। ब. मुख्यमंत्री विशेष स्वसहायता योजना 1. छत्तीसगढ़ का मूल निवासी । 2. राशन कार्ड एवं आधार कार्ड धारी। स. आयुष्मान भारत- प्रधानमंत्री जन आरोग्य योजना 1. भारतीय निवासी 2. राशन कार्ड एवं आधार कार्ड धारी।',
    'कैसे और कहाँ से क्या करना है।': 'निकटम स्वास्थ्य केन्द्र, स्वास्थ्य कार्यकर्ता, मितानिन, आयुष्मान मित्र ।',
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
        title: Text('योजना/जन कल्याणकारी कार्य'),backgroundColor: Color(0xFF49BAEE),
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
