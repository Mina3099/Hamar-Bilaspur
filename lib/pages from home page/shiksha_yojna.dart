import 'package:flutter/material.dart';

// Main Screen
class DestinationScreen extends StatelessWidget {
  final String title;

  DestinationScreen({required this.title});

  final List<String> items = [
    'नि:शुल्क पाठ्यपुस्तकों का प्रदाय',
    'नि:शुल्क गणवेश प्रदाय योजना',
    'सरस्वती सायकल योजना',
    'छात्र दुर्घटना बीमा योजना',
    'मध्याह्न भोजन योजना',
    'बालिका प्रोत्साहन योजना',
    'राष्ट्रीय साधन सह प्रावीण्य छात्रवृत्ति',
    'कन्या साक्षरता प्रोत्साहन योजना',
    'अस्वच्छ धंधा छात्रवृत्ति योजना',
    'मुख्यमंत्री ज्ञान प्रोत्साहन योजना',
    'राज्य छात्रवृत्ति योजना (प्री मैट्रिक एवं पोस्ट मैट्रिक)',
    'केंद्र प्रवर्तित छात्रवृत्ति योजना (प्री मैट्रिक व पोस्ट मैट्रिक)',
    'नि:शुल्क एवं अनिवार्य बाल शिक्षा का अधिकार अधिनियम 2009 के अंतर्गत निजी शालाओं में नि:शुल्क प्रवेश',
    'कस्तूरबा गांधी आवासीय बालिका विद्यालय',
  ];

  // Mapping each item to its corresponding screen
  final Map<String, Widget Function(BuildContext)> itemScreens = {
    'नि:शुल्क पाठ्यपुस्तकों का प्रदाय': (context) => DetailScreen1(),
    'नि:शुल्क गणवेश प्रदाय योजना': (context) => DetailScreen2(),
    'सरस्वती सायकल योजना': (context) => DetailScreen3(),
    'छात्र दुर्घटना बीमा योजना': (context) => DetailScreen4(),
    'मध्याह्न भोजन योजना': (context) => DetailScreen5(),
    'बालिका प्रोत्साहन योजना': (context) => DetailScreen6(),
    'राष्ट्रीय साधन सह प्रावीण्य छात्रवृत्ति': (context) => DetailScreen7(),
    'कन्या साक्षरता प्रोत्साहन योजना': (context) => DetailScreen8(),
    'अस्वच्छ धंधा छात्रवृत्ति योजना': (context) => DetailScreen9(),
    'मुख्यमंत्री ज्ञान प्रोत्साहन योजना': (context) => DetailScreen10(),
    'राज्य छात्रवृत्ति योजना (प्री मैट्रिक एवं पोस्ट मैट्रिक)': (context) => DetailScreen11(),
    'केंद्र प्रवर्तित छात्रवृत्ति योजना (प्री मैट्रिक व पोस्ट मैट्रिक)': (context) => DetailScreen12(),
  'नि:शुल्क एवं अनिवार्य बाल शिक्षा का अधिकार अधिनियम 2009 के अंतर्गत निजी शालाओं में नि:शुल्क प्रवेश' : (context) => DetailScreen13(),
  'कस्तूरबा गांधी आवासीय बालिका विद्यालय': (context) => DetailScreen14(),

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
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ',
    'योजना/जन कल्याणकारी की पात्रता',
    'आवेदन कैसे करें',
    'आवश्यक दस्तावेज',
    'कैसे और कहाँ से क्या करना है।',
  ];

  final Map<String, String> itemDescriptions = {
    'योजना/जन कल्याणकारी कार्य का विवरण': 'समस्त शासकीय अनुदान प्राप्त एवं गैर अनुदान प्राप्त शालाओं के समस्त बालक/बालिकाओं को कक्षा 1ली से कक्षा 10 तक निःशुल्क पाठ्यपुस्तकों का वितरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'प्रारम्भिक शिक्षा के लोकव्यापीकरण के लिए। समस्त शासकीय अनुदान प्राप्त एवं गैर अनुदान प्राप्त शालाओं के समस्त बालक/बालिकाओं को पाठ्य पुस्तकें उपलब्ध कराकर उन्हें शाला जाने के लिए प्रेरित एवं प्रोत्साहित करना',
    'योजना/जन कल्याणकारी की पात्रता': 'कक्षा 1ली से 10वीं तक सभी छात्र-छात्राएं',
    'आवेदन कैसे करें': 'आवेदन आवश्यक नहीं',
    'आवश्यक दस्तावेज': 'आवश्यक दस्तावेजों की जानकारी यहाँ दी जाएगी।',
    'कैसे और कहाँ से क्या करना है।': 'इस योजना का लाभ लेने के लिए शाला में संपर्क करें।',
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'समस्त शासकीय अनुदान प्राप्त एवं गैर अनुदान प्राप्त शालाओं के समस्त बालक/बालिकाओं को कक्षा 1ली से कक्षा 10 तक निःशुल्क पाठ्यपुस्तकों का वितरण',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'प्रारम्भिक शिक्षा के लोकव्यापीकरण के लिए। समस्त शासकीय अनुदान प्राप्त एवं गैर अनुदान प्राप्त शालाओं के समस्त बालक/बालिकाओं को पाठ्य पुस्तकें उपलब्ध कराकर उन्हें शाला जाने के लिए प्रेरित एवं प्रोत्साहित करना',
    'योजना/जन कल्याणकारी की पात्रता': 'कक्षा 1ली से 10वीं तक सभी छात्र-छात्राएं',
    'आवेदन कैसे करें': 'आवेदन आवश्यक नहीं',
    'आवश्यक दस्तावेज': 'आवश्यक दस्तावेजों की जानकारी यहाँ दी जाएगी।',
    'कैसे और कहाँ से क्या करना है।': 'इस योजना का लाभ लेने के लिए शाला में संपर्क करें।',
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
        title: Text('नि:शुल्क गणवेश प्रदाय योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्राथमिक, पूर्व माध्यमिक, हाईस्कूल एवं हायर सेकेण्डरी मंे अध्ययनरत सभी छात्र-छात्राओं को दुर्घटना की स्थिति में बीमा सुरक्षा प्रदान करना|',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'सभी छात्र-छात्राओं को दुर्घटना की स्थिति में बीमा सुरक्षा प्रदान करना इसके अन्तर्गत मृत्यु एवं पूर्ण अपंगता की स्थिति में 1 लाख रू. की क्षतिपूर्ति, आंशिक अपंगता पर 50 हजार रू. की क्षतिपूर्ति एवं भैषेजिक उपचार हेतु 25 हजार रू. क्षतिपूर्ति',
    'योजना/जन कल्याणकारी की पात्रता': 'प्राथमिक, पूर्व माध्यमिक, हाईस्कूल एवं हायर सेकेण्डरी में अध्ययनरत सभी छात्र-छात्राएं',
    'आवेदन कैसे करें': 'निर्धारित प्रपत्र में संस्था प्रमुख के माध्यम से आवेदन कार्यालय जिला शिक्षा अधिकारी मुंगेली में जमा किया जाना है।',
    'आवश्यक दस्तावेज': 'निर्धारित प्रपत्र में जन्म प्रमाण पत्र, मृत्यु प्रमाण पत्र, आधार कार्ड, पुलिस एफ.आई.आर एवं पी.एम. रिपोर्ट की प्रति|',
    'कैसे और कहाँ से क्या करना है।': 'निर्धारित प्रपत्र में संस्था प्रमुख के माध्यम से आवेदन कार्यालय जिला शिक्षा अधिकारी मुंगेली में जमा किया जाना है। परीक्षण उपरांत क्षतिपूर्ती की राशि आवंटन प्राप्त होने के पश्चात प्रदान कीजाती है|',
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
        title: Text('सरस्वती सायकल योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्राथमिक, पूर्व माध्यमिक, हाईस्कूल एवं हायर सेकेण्डरी मंे अध्ययनरत सभी छात्र-छात्राओं को दुर्घटना की स्थिति में बीमा सुरक्षा प्रदान करना',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'सभी छात्र-छात्राओं को दुर्घटना की स्थिति में बीमा सुरक्षा प्रदान करना इसके अन्तर्गत मृत्यु एवं पूर्ण अपंगता की स्थिति में 1 लाख रू. की क्षतिपूर्ति, आंशिक अपंगता पर 50 हजार रू. की ्षतिपूर्ति एवं भैषेजिक उपचार हेतु 25 हजार रू. क्षतिपूर्ति|',
    'योजना/जन कल्याणकारी की पात्रता': 'प्राथमिक, पूर्व माध्यमिक, हाईस्कूल एवं हायर सेकेण्डरी में अध्ययनरत सभी छात्र-छात्राएं|',
    'आवेदन कैसे करें': 'निर्धारित प्रपत्र में संस्था प्रमुख के माध्यम से आवेदन कार्यालय जिला शिक्षा अधिकारी मुंगेली में जमा किया जाना है।',
    'आवश्यक दस्तावेज': 'निर्धारित प्रपत्र में जन्म प्रमाण पत्र, मृत्यु प्रमाण पत्र, आधार कार्ड, पुलिस एफ.आई.आर एवं पी.एम. रिपोर्ट की प्रति|',
    'कैसे और कहाँ से क्या करना है।': 'निर्धारित प्रपत्र में संस्था प्रमुख के माध्यम से आवेदन कार्यालय जिला शिक्षा अधिकारी मुंगेली में जमा किया जाना है। परीक्षण उपरांत क्षतिपूर्ती की राशि आवंटन प्राप्त होने के पश्चात प्रदान की जाती है|',
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
        title: Text('छात्र दुर्घटना बीमा योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'शासकीय विद्यालयों, अनुदान एवं स्थानीय निकायों के साथ बाल श्रमिक विद्यालयों में कक्षा 1ली से 8वीं तक अध्ययनरत छात्र-छात्राओं को मध्यान्ह भोजन योजनान्तर्गत पका हुआ गरम पौष्टिक भोजन उपलब्ध कराया जाता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'विद्यालयों में शाला त्याग दर में कमी आई है, एवं छात्रों में कुपोषण दूर हुए है।|',
    'योजना/जन कल्याणकारी की पात्रता': 'शासकीय विद्यालयों, अनुदान एवं स्थानीय निकायों के साथ बाल श्रमिक विद्यालयों में कक्षा 1 ली से 8वीं तक अध्ययनरत छात्र-छात्राएं।',
    'आवेदन कैसे करें': 'आवश्यक नहीं।',
    'आवश्यक दस्तावेज': 'आवश्यक नहीं|',
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
        title: Text('मध्याह्न भोजन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'कक्षा 9वीं में प्रवेश करने वाले अनु.जा., अनु.ज.जा., बीपीएल परिवार कस्तूरबागांधी आवसीय विद्यालय की छात्राओं को इस योजना के अन्तर्गत बैंक खाते में 3 हजार रू. जमा किया जाता है जोकि 18 वर्ष की आयु पूर्ण करने पर प्रदान की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'बालिका शिक्षा को प्रोत्साहन|',
    'योजना/जन कल्याणकारी की पात्रता': 'कक्षा 9वीं में प्रवेश करने वाले अनु.जा., अनु.ज.जा. बीपीएल परिवार कस्तूरबागांधी आवासीय विद्यालय की छात्राएं|',
    'आवेदन कैसे करें': 'संस्था द्वारा पात्र बालिकाओं का स्कूल स्तर से ऑनलाईन आवेदन किया जाता है।',
    'आवश्यक दस्तावेज': 'प्रमाण पत्र, आधार कार्ड एवं बैंक खाता क्र.|',
    'कैसे और कहाँ से क्या करना है।': 'संस्था द्वारा पात्र बालिकाओं का स्कूल स्तर से ऑनलाईन आवेदन किया जाता है|',
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
        title: Text('बालिका प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'यह केन्द्र प्रवर्तित योजना कक्षा 8वीं एवं 10वीं में मान्यता प्राप्त विद्यालय में अध्ययनरत विद्यार्थी द्वारा प्रथम स्तर के राज्य हेतु आबंटित सीटों पर एससीईआरटी छ.ग. आयोजित होने वाले परीक्षा में शामिल होते है तत्पश्चात द्वितीय स्तर की परीक्षा एनसीईआरटी नई दिल्ली द्वारा आयोजित की जाती है राज्य हेतु आबंटित सीटो के आधार पर तैयार प्रावीण्य सूची के अनुसार द्वितीय स्तर की परीक्षा में चयनित प्रतिभागियों को कक्षा 11वीं एवं 12वीं एवं उच्च शिक्षा हेतु छात्रवृत्ति का लाभ दिया जाता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'उच्च शिक्षा को प्रोत्साहन इस योजना के अन्तर्गत द्वितीय स्तर के परीक्षा में चयनित प्रतिभागियों को मानव संसाधन विकास मंत्रालय नई दिल्ली द्वारा कक्षा 11वीं एवं 12वीं में 1250 रू. स्नातक एवं स्नातकोत्तर कक्षाओं में 2000 रू. एवं पीएचडी में यूजीसी नारस के अनुसार प्रति माह छात्रवृत्ति प्रदान की जाती है|',
    'योजना/जन कल्याणकारी की पात्रता': 'सामान्य श्रेणी के छात्रों के लिए न्यूनतम 55 प्रतिशत एवं अन्य श्रेणी के लिए 50 प्रतिशत अंक होने पर परीक्षा में बैठने की पात्रता है परिवार की वार्षिक आय 1.5 लाख से अधिक न हो|',
    'आवेदन कैसे करें': 'राज्य शैक्षिक अनुसंधान एवं प्रशिक्षण परिषद द्वारा विज्ञप्ति जारी कर ऑफलाईन आवेदन जिले के परीक्षा केन्द्र में जमा किया जाता है।',
    'आवश्यक दस्तावेज': 'जाति प्रमाण पत्र आधार कार्ड एवं बैंक खाता क्र.',
    'कैसे और कहाँ से क्या करना है।': 'जिले के परीक्षा केन्द्र में विद्यार्थी ऑफलाईन आवेदन जमा कर परीक्षा पूर्व प्रवेश पत्र प्राप्त कर सकते है निर्धारित तिथि को विद्यार्थी परीक्षा केन्द्र में अपस्थित होकर परीक्षा में शामिल होंगे',
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
        title: Text('राष्ट्रीय साधन सह प्रावीण्य छात्रवृत्ति'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'कक्षा 6वीं के अ.जा.,अ.ज.जा. के कन्याओं को 500 रू. प्रति छात्र (दस माह हेतु) की प्रोत्साहन राशि बैंक खाते में जमा की जाति है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अ.जा., अ.ज.जा. के कन्याओं को शिक्षा में प्रोत्साहन|',
    'योजना/जन कल्याणकारी की पात्रता': 'कक्षा 6वीं में अध्ययनरत अ.जा., अ.ज.जा. की छात्राएं|',
    'आवेदन कैसे करें': 'छात्रवृत्ति पोर्टल के माध्यम से ऑनलाईन आवेदन|',
    'आवश्यक दस्तावेज': 'जाति प्रमाण पत्र आधार कार्ड एवं बैंक खाता क्र., पूर्व कक्षा का उत्तीर्ण प्रमाण पत्र|',
    'कैसे और कहाँ से क्या करना है।': 'ऑनलाईन संस्था प्रमुख द्वारा किया जाता है|',
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
        title: Text('कन्या साक्षरता प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'अस्वच्छ धंधा में कार्यरत माता पिता के कक्षा 1 ली से 10वीं तक के विद्यार्थियों को अस्वच्छ धंधा छात्रवृत्ति योजना का लाभ दिया जाता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अस्वच्छ धंधा में लगे हुए परिवार के बच्चों की शिक्षा के लिए प्रात्साहन हेतु। इस योजनान्तर्गत छात्रावासी को 8 हजार रू. गैर छात्रावासी को 3 हजार रू. प्रति वर्ष (दस माह हेतु) की छात्रवृत्ति प्रदान की जाती है|',
    'योजना/जन कल्याणकारी की पात्रता': 'विद्यार्थियों को माता पिता के अस्वच्छ धंधा व्यवसाय के प्रमाण पत्र के आधार पर|',
    'आवेदन कैसे करें': 'छात्रवृत्ति पोर्टल के माध्यम से ऑनलाईन आवेदन|',
    'आवश्यक दस्तावेज': 'जाति प्रमाणपत्र आधार कार्ड एवं बैंक खाता क्र. पूर्व कक्षा का उत्तीर्ण प्रमाण पत्र|',
    'कैसे और कहाँ से क्या करना है।': 'ऑनलाईन संस्था प्रमुख द्वारा किया जाता है|',
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
        title: Text('अस्वच्छ धंधा छात्रवृत्ति योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'शालाओं मे बोर्ड परीक्षा में मेरिट में आये अ.जा., अ.ज.जा. के विद्यार्थी जिनके पास छत्तीसगढ़ राज्य स्थायी जाति एवं निवास प्रमाण पत्र धारी नियमित विद्यार्थी को एकमुश्त प्रोत्साहन राशि दी जाती है।।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अ.जा., अ.ज.जा. के मेधावी छात्रों की पढ़ाई निरन्तरता हेतु इस योजना में 15 हजार रू. एकमुश्त प्रोत्साहन राशि एक बार देय है|',
    'योजना/जन कल्याणकारी की पात्रता': 'बोर्ड परीक्षा में मेरिट में आये हुए अ.जा., अ.ज.जा. के विद्यार्थी जिनके पास छत्तीसगढ़ राज्य स्थायी जाति एवं निवास प्रमाण पत्र हो तथा नियमित अध्ययनरत हो|',
    'आवेदन कैसे करें': 'मेरिट के आधार पर सीधे विद्यार्थियो  से शाला स्तर पर आवेदन तथा जिला स्तर से अंतिम परीक्षण उपरांत भुगतान हेतु संचालक लोक शिक्षण संचालनालय छ.ग. को प्रेषित किया जाता है|',
    'आवश्यक दस्तावेज': 'जाति, निवास, आधार, एवं बैक पासबुक की छायाप्रति|',
    'कैसे और कहाँ से क्या करना है।': 'शाला स्तर से प्राप्त आवेदन संबंधित जिला शिक्षा अधिकारी के परीक्षण उपरांत संचालक लोक रायपुर छ.ग. शिक्षण संचालनालय को अग्रेषित किया जाता है।|',
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
        title: Text('मुख्यमंत्री ज्ञान प्रोत्साहन योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'प्री मेट्रिक राज्य छात्रवृत्ति योजनान्तर्गत नियमित रूप से कक्षा 3री से 10वीं में अध्ययनरत अ.जा., अ.ज.जा., तथा अन्य पिछड़ा वर्ग के विद्यार्थी तथा पोस्ट मेट्रिक राज्य छात्रवृत्ति अन्तर्गत अ.जा., अ.ज.जा., तथा अन्य पिछड़ा वर्ग के विद्यार्थियों को प्रति वर्ष छात्रवृत्ति प्रदान की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ':'अ.जा., अ.ज.जा. एवं पिछड़ा वर्ग के विद्यार्थियो को शिक्षा में प्रोत्साहन इस योजना के अन्तर्गत अ.जा., अ.ज.जा. के कक्षा 3री से 5वीं तक की बालिका को 500 रू. प्रति वर्ष कक्षा 6वीं से 8वीं तक अध्ययनरत बालिका को 800 रू. प्रति वर्ष एवं बालक को 600 रू. प्रति वर्ष तथा कक्षा 9वीं से 10वीं के बालिका को 1000 रू. प्रति वर्ष एवं बालक को 800 रू. प्रति वर्ष राज्य छात्रवृत्ति देय है इसी प्रकार अन्य पिछड़ा वर्ग के कक्षा 6वीं से 8वीं तक अध्ययनरत बालिका को 450 रू., बालक को 300 रू., तथा 9वीं से 10वीं में अध्ययनरत बालिका को 600 रू., बालक को 450 रू., तथा कक्षा 11वीं से 12वीं के छात्रावासी बालक को 1000 रू. तथा गैर छात्रावासी को 500 रू. तथा छात्रावासी बालिका को 1100 रू. एवं गैर छात्रावासी को 550 रू. प्रतिवर्ष राज्य छात्रवृत्ति देय है|',
    'योजना/जन कल्याणकारी की पात्रता': 'प्री मेट्रिक छात्रवृत्ति हेतु कक्षा 3री से 10वीं अध्ययनरत अ. जा. अ.ज.जा. तथा पिछड़ा वर्ग के विद्यार्थी जिनके पालक आयकर की सीमा में नहीं आते या 10 एकड़ से अधिक भूमि न हो तथा पोस्ट मेट्रिक (राज्य छात्रवृत्ति) अन्तर्गत 11वीं से 12वीं में अध्ययनरत पिछड़ा वर्ग के विद्यार्थियों के अभिभावक की आय सीमा 1 लाख से अधिक न हो|',
    'आवेदन कैसे करें': 'छात्रवृत्ति पोर्टल के माध्यम से ऑनलाईन आवेदन|',
    'आवश्यक दस्तावेज': 'जाति, निवास, आधार, एवं बैंक पासबुक की छायाप्रति|',
    'कैसे और कहाँ से क्या करना है।': 'छात्रवृत्ति पोर्टल के माध्यम से संबंधित संस्था प्रमुख द्वारा किया जाता है जिसे जिला स्तर से परीक्षण उपरांत स्वीकृति हेतु संचालक लोक शिक्षण संचालनालय रायपुर छ.ग. को प्रेषित किया जाता है|',
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
        title: Text('राज्य छात्रवृत्ति योजना (प्री मेट्रिक एवं पोस्ट मेट्रिक)'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'केन्द्र प्रवर्तित छात्रवृत्ति योजना में प्री मेट्रिक छात्रवृत्ति अन्तर्गत कक्षा 9वीं से 10वीं में नियमित रूप से अध्ययनरत एवं पोस्ट मेट्रिक छात्रवृत्ति में कक्षा 11 वीं से 12वीं में नियमित रूप से अध्ययनरत अ.जा.एवं अ.ज.जा. के छात्रावासी एवं गैर छात्रावासी विद्यार्थियों को प्रति वर्ष छात्रवृत्ति प्रदान की जाती है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अ. जा. एवं अ.ज.जा. के विद्यार्थियों को शिक्षा में प्रोत्साहन|',
    'योजना/जन कल्याणकारी की पात्रता': 'कक्षा 9वीं से 10वीं में अध्ययनरत छात्रावासी विद्यार्थियों को 4500 रू. तथा गैर छात्रावासी को 2250 रू. प्रति वर्ष देय है कक्षा 11वीं से 12वीं में अध्ययनरत छात्रावासी विद्यार्थियों को 3800 रू. तथा गैर छात्रावासी को 2300 रू. प्रति वर्ष देय है।|',
    'आवेदन कैसे करें': 'राष्ट्रीय छात्रवृत्ति पोर्टल के माध्यम से ऑनलाईन आवेदन|',
    'आवश्यक दस्तावेज': 'जाति, निवास, आधार, एवं बैंक पासबुक की छायाप्रति|',
    'कैसे और कहाँ से क्या करना है।': 'ऑनलाईन संस्था प्रमुख द्वारा किया जाता है जो जिला स्तर से परीक्षण उपरांत लोक शिक्षण संचालनालय छ.ग. रायपुर के माध्यम से भुगतान स्वीकृति हेतु भारत शासन को भेजा जाता है|',
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
        title: Text('केन्द्र प्रवर्तित छात्रवृत्ति योजना (प्री मेट्रिक व पोस्ट मेट्रिक)'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'इस योजना के अन्तर्गत मान्यता प्राप्त निजि शालाओं के एन्ट्री क्लास (नर्सरी/केजी-1 /1ली) के कुल दर्ज संख्या के 25 प्रतिशत सीट पर गरीब एवं वंचित समूह के विद्यार्थियों को निःशुल्क प्रवेश दिया जाता है जिसके शिक्षण एवं अन्य शुल्क की प्रतिपूर्ति राज्य शासन द्वारा किया जाता है।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'गरीब एवं वंचित समुह के विद्यार्थियों को गुणवत्ता पूर्ण शिक्षा हेतु प्रोत्साहन|',
    'योजना/जन कल्याणकारी की पात्रता': 'अ.जा. एवं अ.ज.जा. के विद्यार्थियों को जाति प्रमाण पत्र के आधार पर एवं बीपीएल परिवार के सामान्य एवं पिछड़ा वर्ग के विद्यार्थी पात्र है|',
    'आवेदन कैसे करें': 'शिक्षा सत्र प्रारंभ होने के पूर्व छ.ग. शासन के आर. टी. ई पोर्टल के माध्यम से ऑनलाईन आवेदन किया जाता है|',
    'आवश्यक दस्तावेज': 'जाति, निवास, आधार, बीपीएल परिवार सर्वे सूची की प्रमाणित प्रति|',
    'कैसे और कहाँ से क्या करना है।': 'आवेदन किसी ऑनलाईन संेटर से पालक द्वारा स्वयं ऑनलाईन किया जाता है|',
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
        title: Text('निःशुल्क एवं अनिवार्य बाल शिक्षा का अधिकार अधिनियम 2009 के अन्तर्गत निजी शालाओं में निःशुल्क प्रवे योजना'),backgroundColor: Color(0xFF49BAEE),
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
    'योजना/जन कल्याणकारी कार्य का विवरण': 'सुदूर ग्रामीण क्षेत्रों में निवासरत अ.जा., अ.ज.जा, अनय पिछड़ा वर्ग एवं अल्प संख्यक समुदाय वर्ग की उच्च प्राथमिक स्तर की बालिकाओ की शिक्षा को बढ़ावा देने हेतु विकासखण्ड स्तर पर कस्तूरबा गांधी आवासीय विद्यालय प्रारंभ किया गया है।।',
    'योजना/जन कल्याणकारी कार्य का उद्देश्य एवं लाभ': 'अ.जा.,अ.ज.जा.,अन्य पिछड़ा वर्ग एवं अल्प संख्यक समुदाय की अधिक जनसंख्या वाले वे विकासखण्ड जहा पर बड़ी संख्या में बालिकाएं शालाओं से बाहर हो उन्हे शिक्षा के मूल धारा में शामिल करने तथा महिला साक्षरता बढ़ाने हेतु इस विद्यालय को प्रारंभ किया गया है। विद्यालय में कक्षा 6वीं से 8वीं तक निःशुल्क प्रवेश दिया जाता है, विद्यालय पूर्णतः आवासीय है।|',
    'योजना/जन कल्याणकारी की पात्रता': 'अ.जा. एवं अ.ज.जा., अन्य पिछड़ वर्ग अल्प संख्यक समुदाय एवं बी.पी.एल. परिवार से संबंधित कक्षा 6वीं से 8वीं तक अध्ययनरत बालिकाएं।|',
    'आवेदन कैसे करें': 'संबंधित विद्यालय के संस्था प्रमुख को पालक द्वारा आवेदन दिया जाता है।',
    'आवश्यक दस्तावेज': ' निवास, आधार, बीपीएल परिवार सर्वे सूची की प्रमाणित प्रति।',
    'कैसे और कहाँ से क्या करना है।': 'आवेदन संस्था प्रमुख को प्राप्त आवेदन को जिला स्तर पर परीक्षण उपरांत पात्र छात्राओं को विद्यालय में प्रवेश दिया जाता है।',
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
        title: Text('कस्तुरबा गांधी आवासीय बालिका विद्यालय'),backgroundColor: Color(0xFF49BAEE),
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