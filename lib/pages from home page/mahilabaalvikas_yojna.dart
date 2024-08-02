import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
  'पूरक पोषण आहार कार्यक्रम',
  'किशोरी बालिकाओं को पूरक पोषण आहार',
  'महतारी जतन योजना',
  'महिला जागृति शिविर',
  'दिशा दर्शन भ्रमण कार्यक्रम',
  'मुख्यमंत्री कन्या विवाह योजना',
  'नोनी सुरक्षा योजना',
  'प्रधानमंत्री मातृत्व वंदना योजना',
  'सुकन्या समृद्धि योजना',
  'मुख्यमंत्री बाल संदर्भ योजना',
  'नवा बिहान योजना',
  'पोषण अभियान',
  'एकीकृत बाल संरक्षण योजना',
      'वन स्टॉप सेंटर',
  'छत्तीसगढ़ महिला कोष',
  'सक्षम योजना',
  'स्वावलंबन योजना',
  'मुख्यमंत्री सुपोषण अभियान (डी.एम.एफ.)',
  'राष्ट्रीय पोषण अभियान',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
  'पूरक पोषण आहार कार्यक्रम' : (context) => DetailScreen1(),
  'किशोरी बालिकाओं को पूरक पोषण आहार'  : (context) => DetailScreen2(),
  'महतारी जतन योजना' : (context) => DetailScreen3(),
  'महिला जागृति शिविर' : (context) => DetailScreen4(),
  'दिशा दर्शन भ्रमण कार्यक्रम'   :(context) => DetailScreen5(),
  'मुख्यमंत्री कन्या विवाह योजना' : (context) => DetailScreen6(),
  'नोनी सुरक्षा योजना' : (context) => DetailScreen7(),
  'प्रधानमंत्री मातृत्व वंदना योजना' : (context) => DetailScreen8(),
  'सुकन्या समृद्धि योजना' : (context) => DetailScreen9(),
  'मुख्यमंत्री बाल संदर्भ योजना' : (context) => DetailScreen10(),
  'नवा बिहान योजना' : (context) => DetailScreen11(),
  'पोषण अभियान' : (context) => DetailScreen12(),
  'एकीकृत बाल संरक्षण योजना'  : (context) => DetailScreen13(),
  'वन स्टॉप सेंटर' : (context) => DetailScreen14(),
  'छत्तीसगढ़ महिला कोष': (context) => DetailScreen15(),
  'सक्षम योजना' : (context) => DetailScreen16(),
  'स्वावलंबन योजना' : (context) => DetailScreen17(),
  'मुख्यमंत्री सुपोषण अभियान (डी.एम.एफ.)': (context) => DetailScreen18(),
    'राष्ट्रीय पोषण अभियान' : (context) => DetailScreen19(),

    // Add other mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('महिला एवं बाल विकास'),backgroundColor: Color(0xFF49BAEE),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('पूरक पोषण आहार कार्यक्रम'),
          backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'जिले में एकीकृत बाल विकास सेवाएँ (आई.सी.डी.एस) अंतर्गत आँगनवाडी केन्द्रों द्वारा दी जाने वाली छः सेवाओं में से पूरक पोषण आहार एक महत्वपूर्ण सेवा हैं। आँगनवाडी केन्द्रों के माध्यम से 6 माह से 3 वष आयु के बच्चों, 3 वर्ष से 6 वर्ष आयु के बच्चों तथा गर्भवती व शिशुवती महिलाओं को पूरक पोषण आहार का प्रदाय किया जाता हैं। हितग्राहियों को वर्तमान में प्रदाय किये जा रहे पूरक पोषण आहार का विवरण निम्नानुसार हैं-\n'
          '\n'
          'रेडी-टू-ईट फूड-\n'
          '\n'
        '6 माह से 3 वर्ष के आयु के सामान्य बच्चों को 135 ग्राम, 6 माह से 3 वष आयु के गंभीर कुपोषित बच्चों को 211 ग्राम तथा गर्भवती व शिशुवती महिलाओं को 165 ग्राम रेडी-टू-ईट फूड का प्रदाय प्रतिदिन के मान से टेक होम राशन के अंतर्गत साप्ताहिक रूप से किया जाता हैं। गेहूँ आधारित रेडी-टू-ईट फूड का निर्माण एवं प्रदाय का कार्य महिला स्व सहायता समूहों द्वारा किया जा रहा हैं।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('किशोरी बालिकाओं को पूरक पोषण आहार'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'किशोरी बालिकाओं के सशक्तिकरण से योजना के अंतर्गत 11 से 14 वर्ष आयु की शाला त्यागी किशोरी बालिकाओ को भी पूरक पोषण आहार का प्रदाय किया जा रहा है ।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('महतारी जतन योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
         'योजना के तहत आंगनवाड़ी केन्द्र के माध्यम से आकर्षक थाली गर्भवती महिलाओं को पृथक-पृथक मेन्यू अनुसार प्रदाय की जा रही है, जिसमें चावल, दाल, रोटी, रसेदार व सूखी सब्जी, अचार, पापड़ सलाद आदि दिया जा रहा है। इसके अतिरिक्त महिलाओं को घर ले जाने हेतु प्रतिदिन 75 ग्राम के मान से (सप्ताह में 06 दिवस हेतु) 450 ग्राम का साप्ताहिक पैकेट रेडी टू ईट दिया जाने का प्रावधान है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('महिला जागृति शिविर'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
            'महिलाओं को उनके कानूनी अधिकारों, प्रावधानों के प्रति जागृत करना, विभिन्न सामाजिक कुप्रथाओं के विरूद्ध महिलाओं को जागृत व संगठित करना तथा विभिन्न योजनाओं की जानकारी देकर उन्हें योजनाओं का लाभ उठाने के लिए प्रेरित करना ।\n'
          '\n'
            'आयोजन-\n'
            'विभाग द्वारा इस हेतु जिले के ग्राम पंचायतों, जनपद एवं जिला स्तरों पर समय-समय पर महिला जागृति शिविरों का आयोजन किया जाता है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('दिशा दर्शन भ्रमण कार्यक्रम'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'स्थानीय महिला स्व सहायता समूहों की सदस्यों को महिलाओं द्वारा संचालित सफल स्व. सहा. समूहों का अध्ययन भ्रमण कार्यक्रम कराया जाता है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('मुख्यमंत्री कन्या विवाह योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
         'गरीब परिवारों को कन्या के विवाह के संदर्भ में होने वाली आर्थिक कठिनाईयों का निवारण, विवाह के अवसर पर होने वाले • फिजूलखर्ची को रोकना एवं सादगीपूर्ण विवाहों को बढ़ावा देने, सामूहिक विवाहों के आयोजन के माध्यम से मनोबल, आत्मसम्मान में वृद्धि एवं उनकी सामाजिक स्थिति में सुधार, सामूहिक विवाहों का प्रोत्साहन तथा विवाहों में दहेज के लेन-देन की रोकथाम करना।\n'
         'कन्यादान योजना-\n'
            'योजनांतर्गत सहायताः-\n'
            'गरीबी रेखा से नीचे जीवन यापन करने वाले परिवारधमुख्यमंत्री खाद्यान्न योजना अन्तर्गत कार्डधारी परिवार की 18 वष से अधिक आयु की अधिकतम दो कन्याओं को योजना अन्तर्गत लाभ दिलाया जाना है। योजना अन्तर्गत प्रत्येक कन्या के विवाह हेतु अधिकतम 25,000/- रूपये की राशि व्यय किए जाने का प्रावधान है। इसमें से वर-वधु हेतु श्रृंगार सामग्री पर राशि 5,000/- रूपये, अन्य उपहार सामग्री पर राशि 14,000/- रूपये, वधु को बैंक ड्राफ्ट के रूप में राशि 1,000/- रूपये तथा सामूहिक विवाह आयोजन पर प्रति कन्या राशि 5,000/- रूपये तक व्यय की जा सकती है। राज्य शासन द्वारा मुख्यमंत्री कन्या विवाह योजना अन्तर्गत विधवा अनाथ निराश्रित कन्याओं को भी शामिल किया गया है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('नोनी सुरक्षा योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'राज्य में घटते बाल लिंगानुपात तथा बालिकाओं के प्रति समाज में सकरात्मक सोच बढ़ाने के लिये "नोनी सुरक्षा योजना" शीर्षक से नवीन योजना 01.04.2014 से लागू की गई।\n'
        'उद्देश्य -\n'
        '1. प्रदेश में बालिकाओं के शैक्षणिक तथा स्वास्थ्य की स्थिति में सुधार लाना।\n'
        '2. बालिकाओं के अच्छे भविष्ष्य की आधारशिला रखना।\n'
        '3. बालिका भूरण हत्या रोकने और बालिकाओं के जन्म के प्रति जनता में सकरात्मक सोच लाना एवं बाल विवाह की रोकथाम ।\n',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('प्रधानमंत्री मातृत्व वंदना योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
            'प्रधान मंत्री मातृत्व वंदना योजना का उद्देश्य -\n'
                'काम करने वाली महिलाओं की मजदूरी के नुकसान की भरपाई करने के लिए मुआवजा देना और उनके उचित आराम और पोषण को सुनिश्चित करना। गर्भवती महिलाओं और स्तनपान कराने वाली माताओं के स्वास्थ्य में सुधार और नकदी प्रोत्साहन के माध्यम से अधीन पोषण के प्रभाव को कम करना ।\n'
                '\n'
                'योजना के लाभ -\n'
                'इस योजना से गर्भवती महिलाओं और स्तनपान कराने वाली माताओं को पहले जीवित बच्चे के जन्म के दौरान फायदा होगा। योजना की लाभ राशि क्ठज् के माध्यम से लाभार्थी के बैंक खाते में सीधे भेज दी जाएगी। रिपोर्ट के मुताबिक, सरकार निम्नलिखित किश्तों में राशि का भुगतान करेगी।\n'
                '1. पहली किस्तरू 1000 रुपए गर्भावस्था के पंजीकरण के समय| \n'
                '2. दूसरी किस्तरू 2000 रुपए, यदि लाभार्थी छह महीने की गर्भावस्था के बाद कम से कम एक प्रसवपूर्व जांच कर लेते हैं।\n'
                '3. तीसरी किस्तरू 2000 रुपए, जब बच्चे का जन्म पंजीकृत हो जाता है और बच्चे को ठब्ळए व्च्टए क्च्ज् और हेपेटाइटिस-ठ सहित पहले टीके का चक्र शुरू होता है।\n',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('सुकन्या समृद्धि योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'सुकन्या समृद्धि योजना का उद्देश्य बेटियों की पढ़ाई और उनकी शादी पर आने वाले खर्च को आसानी से पूरा करना है। योजना के अंतर्गत बेटी की पढ़ाई व शादी के लिए डाक विभाग के पास "सुकन्या समृद्धि योजना" का अकाउंट खुलवाया जा सकता है। डाक विभाग के किसी भी पोस्ट ऑफिस के साथ अकाउंट खोलने के लिए सुविधा सेंटर में भी अलग काउंटर खुलेगा। यहां जरूरी डॉक्यूमेंट्स जमा कराने के बाद अकाउंट खुलया जा सकेगा।\n'
        '\n'
        'यह है योजना-\n'
        '1. सुकन्या समृद्धि योजना अकाउंट में बेटी के नाम से एक साल में 1 हजार से लेकर 1 लाख पचास हजार रुपए जमा कर सकता है।\n'
        '2. यह पैसा अकाउंट खुलने के 14 साल तक ही जमा करवाना होगा और यह खाता बेटी के 21 साल की होने पर ही मैच्योर होगा।\n'
        '3. योजना के नियमों के अंतर्गत बेटी के 18 साल के होने पर आधा पैसा निकलवा सकते हैं।\n'
        '4. 21 साल के बाद खाता बंद हो जाएगा और पैसा पालक को मिल जाएगा।\n'
          '5. अगर बेटी की 18 से 21 साल के बीच शादी हो जाती है तो अकांउट उसी वक्त बंद हो जाएगा।\n'
          '6. अकाउंट में अगर पेमेंट लेट हुई तो सिर्फ 50 रुपए की पैनल्टी लगाई जाएगी।\n',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('मुख्यमंत्री बाल संदर्भ योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
           'मुख्यमंत्री बाल संदर्भ योजना वर्ष 2009 से प्रारंभ की गई है। गंभीर कुपोषित बच्चों को कुपोषण के चक्र से बाहर लाकर कुपोषण की दर में कमी हेतु योजना का संचालन किया जा रहा है। योजना के तहत गंभीर कुपोषित एवं संकटग्रस्त बच्चों को चिकित्सकीय परीक्षण की सुविधा, चिकित्सक द्वारा लिखी गई दवाएं तथा आवश्यकतानुसार बाल रोग विशेषज्ञों की परामर्श की सुविधा उपलब्ध कराई जाती है।\n'
            '1. प्रत्येक विकासखंड में माह में 2 दिवस संदर्भ दिवस के रूप में चिन्हांकित करने का प्रयास।\n'
        '2. बच्चों के संक्रमण की पहचान ।\n'
        '3. निजी चिकित्सा परीक्षण संस्थान में अधिकतम 300/-रूपये सीमा तक स्वास्थ्य जाँच की व्यवस्था ।\n'
        '4. एक हितग्राही को वष भर में अधिकतम 500/-रूपये तक की दवाएं तथा आवश्यकता होने पर चिकित्सा अधिकारी के परामर्श से इससे अधिक राशि की दवाए भी उपलब्ध कराई जा सकेगी।\n'
        '5. निजी शिशु रोग विशेषज्ञ की सेवा पर सम्मान स्वरूप 1000/- रूपये का मानदेय एवं 500/- रुपये तक यात्रा व्यय का प्रावधान।\n'
        'इसके अतिरिक्त वर्ष 2016-17 से आवश्यकता पड़ने पर कुपोषित बच्चों के परिवहन के लिए भी आंगनबाड़ी कार्यकर्ताओं को राशि उपलब्ध कराई गई है।',

          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('नवा बिहान योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'घरेलू हिंसा से महिलाओं का संरक्षण अधिनियम 2005 के क्रियान्वयन के लिए राज्य शासन द्वारा नवाबिहान योजना संचालित है। अधिनियम के प्रावधानों के अनुसार प्रत्येक जिले में महिला संरक्षण अधिकारी की पदस्थापना की गई है। सुविधा व सहायता:-योजना के अंतर्गत पीड़ित महिला को आवश्यकतानुसार विधिक सलाह, परामर्श, चिकित्सा, सुविधा, परिवहन तथा आश्रय सुविधा उपलब्ध कराने हेतु प्रावधान रखा गया है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('पोषण अभियान'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
         'भारत सरकार द्वारा कुपोषण के स्तर में कमी लाने के लिए एक वृहत अभियान के रूप में पोषण अभियान का शुभारंभ किया गया है। यह शुभारंभ 08 मार्च 2018 को माननीय प्रधानमंत्री द्वारा झुंझूनू, राजस्थान में किया गया है। पोषण अभियान देश के सभी राज्यों में वित्तीय वर्ष 2017-18 से आगामी तीन वषों में चरण बद्ध तरीके से लागू किया जा रहा है। प्रथम चरण में राज्य के 12 जिलों को लिया गया था तथा द्वितीय चरण वर्ष 2018-19 से शेष 15 जिलों को लिया गया है। इस प्रकार राज्य के सभी 27 जिलों में पोषण अभियान क्रियान्वित है। पोषण अभियान के लक्ष्य एवं घटकों का विवरण निम्नानुसार है/-\n'
         'अभियान के लक्ष्य -\n'
            'पोषण अभियान का लक्ष्य राष्ट्रीय स्तर पर निर्धारित किया गया है, जिसके अनुसार 0 से 6 वर्ष आयु समूह के बच्चों, गर्भवती महिलाओं एवं धात्री माताओं में विद्यमान कपोषण स्तर को चरण बद्ध तरीके से प्रति वर्ष 02 प्रतिशत की कमी लाते हुए 03 वषों में 06 प्रतिशत की कमी लाना लक्षित किया गया है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('एकीकृत बाल संरक्षण योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'किशोर न्याय अधिनियम समेकित बाल संरक्षण योजना के अन्तर्गत राज्य में संस्थागत देखरेख कार्यक्रम संचालित किये जा रहे हैं। । देखेरख एवं संरक्षण की आवश्यकता वाले बालकों के लिए जिले में बालगृह, संचालित है। बाल कल्याण समिति किशोर न्याय अधिनियम के अन्तर्गत बाल कल्याण समिति सुरक्षा एवं संरक्षण की आवश्यकता वाले बालकों के संबंध में निर्णय देने के लिए सक्षम प्राधिकारी है। राज्य के सभी 27 जिलों में बालक कल्याण समिति गठित है।\n'
            'समिति में एक अध्यक्ष एवं 4 सदस्य (एक महिला सदस्य) होते हैं। यह समिति मजिस्टेट के रूप में कार्य करती है और इन्हें वह सभी शक्तियां प्राप्त है जो दंड प्रक्रिया संहिता 1973 (1974 का दो) द्वारा किसी महानगरीय न्यायिक मजिस्ट्रेट को प्रदत्त की गई है ।\n'
      'समिति का गठन राज्य स्तरीय चयन समिति जो कि उच्च न्यायालय के सेवा निवृत्त न्यायाधीश की अध्यक्षता में गठित की गई है, के द्वारा किया जाता है ।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('वन स्टॉप सेंटर'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'महिलाओं को एकीकृत रूप से सहायता उपलब्ध कराने के लिए भारत शासन, महिला एवं बाल विकास विभाग मंत्रालय द्वारा राज्य सरकार की सहायता से प्रदेश के प्रत्येक जिले में वन स्टॉप सेंटर संचालन की स्वीकृति दी गई है। वन स्टॉप सेंटर में सभी वर्ग की महिलाओं (18 वर्ष से कम उम्र की बालिकाएं भी सम्मिलित है) को सलाह, सहायता, मार्गदर्शन एवं संरक्षण प्रदाय किया जायेगा।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('छत्तीसगढ़ महिला कोष'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
         'उद्देश्य:-\n'
         'छत्तीसगढ़ राज्य में महिलाओं को समाजिक एवं आर्थिक रूप से सशक्त किये जाने के उद्देश्य से छत्तीसगढ़ महिला कोष्ष द्वारा महिला स्व-सहायता समूहों को आसान शर्तों पर ऋण उपलब्ध कराना।\n'
        'पात्रता एवं ऋण योजना अंतर्गत 3 प्रतिवर्ष वाषिक साधारण ब्याज दर पर प्रथम बार में 50 हजार रूपये तक ( वसूली 24 किस्तों में) तथा द्वितीय बार में 2 लाख रूपये तक का ऋण ( वसूली 36 किस्तों में ) प्रदाय किया जाता है।\n'
      'यौन उत्पीड़न एवं एच. आई. व्ही. पीड़ित महिलाओं को शासकीय चिकित्सक द्वारा प्रदाय चिकित्सा प्रमाण पत्र के आधार पर आर्थिक गतिविधियों से जोड़े जाने हेतु प्राथमिकता के आधार पर पात्रता की अन्य शर्ते पूर्ण करने पर ऋण प्रदान किया जा सकेगा|\n'
    'इन महिलाओं को जिला प्रबंधक, छत्तीसगढ़ महिला कोष्ष के माध्यम से प्रस्तुत प्रस्तावों पर जिला कलेक्टर स्वीकृति उपरांत 10000/-रूपये (शब्दों में रूपये दस हजार मात्र) का व्यक्तिगत ऋण 3 प्रतिशत साधारण ब्याज की दर पर उपलब्ध कराये जायेंगे। इन महिलाओं द्वारा स्व-सहायता समूह का गठन किये जाने पर समूह को 1.00 लाख (शब्दों में रूपये एक लाख मात्र) की ऋण राशि 3 प्रतिशत साधारण ब्याज की दर पर स्वीकृत की जावेगी। यह ऋण जिला कलेक्टर के अनुमोदन से संबंधित जिला प्रबंधक प्रदान करेंगे। योजना के तहत अन्य शर्ते यथावत रहेंगी। तृतीय लिंग (ज्वंदे ळमदकमत) हितग्राही भी इन योजना का लाभ लेने की पात्रता रखेगी।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('सक्षम योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'पात्रता:-\n'
          'प्रदेश में गरीबी रेखा अन्तर्गत जीवन-यापन करने वाली ऐसी महिलाओं जिनके पति की मृत्यु हो चुकी है अथवा 35 से 45 आयु वर्ग की अविवाहित महिलाएं अथवा कानूनी तौर पर तलाकशुदा महिलायें यौन उत्पीड़न, एचआईवी पाजिटिव एवं तृतीय लिंग (ज्वंदे ळमदकमत) हितग्राही भी योजना का लाभ लेने की पात्रता रखेगी।\n'
        'ऋण-\n'
          'स्वयं का व्यवसाय आरम्भ करने हेतु आसान शर्तो पर 1.00 लाख रूपये तक का ऋण प्रदाय किया जाता है। उक्त ऋण की वापसी 5 वषों में केवल 6.5 प्रतिशत साधारण वाषिक ब्याज दर पर किस्तों में की जाती है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('स्वावलंबन योजना'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'ऐसी महिलाओं जिनके पति की मृत्यु हो चुकी है अथवा 35 से 45 आयु वर्ग की अविवाहित महिलाओं अथवा कानूनी तौर पर तलाकशुदा महिलाओं को कौशल प्रशिक्षण उपलब्ध कराया जाता है यौन उत्पीड़न, एचआईवी पाजिटिव एवं तृतीय लिंग (ज्तंदे ळमदकमत) हितग्राही भी योजना का लाभ लेने की पात्रता रखेगी।\n'
          'प्रशिक्षण:-\n'
        'समस्त प्रशिक्षण मुख्यमंत्री कौशल विकास योजनांतर्गत व्ही.टी.पी. के माध्यम से दिये जाते है।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('मुख्यमंत्री सुपोषण अभियान (डी.एम.एफ.)'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'छत्तीसगढ़ राज्य में 06 वर्ष से कम आयु के बच्चों में व्याप्त कुपोषण एवं एनीमिया तथा 15 से 49 वर्ष आयु वर्ग की महिलाओं में व्याप्त एनीमिया एक चुनौती है जिसे जड़ से समाप्त करने का निर्णय लिया गया।',
          style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('राष्ट्रीय पोषण अभियान'),
        backgroundColor: Color(0xFF49BAEE),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'भारत सरकार द्वारा कुपोषण को दूर करने के लिए जीवनचक्र एप्रोच अपनाकर चरणबद्ध ढंग से पोषण अभियान चलाया जा रहा है, भारत सरकार द्वारा 0 से 06 वर्ष तक के बच्चों एवं गर्भवती एवं धात्री माताओ के स्वास्थ्य एवं पोषण स्तर में समयबद्ध तरीके से सुधार हेतु महत्वाकांक्षी राष्ट्रीय पोषण मिशन का गठन किया गया है।',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}