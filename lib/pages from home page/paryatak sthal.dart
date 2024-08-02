import 'package:flutter/material.dart';

class paryatak extends StatefulWidget {
  const paryatak({Key? key}) : super(key: key);

  @override
  State<paryatak> createState() => _ParyatakState();
}

class _ParyatakState extends State<paryatak> {
  final List<Map<String, dynamic>> items = [
    {'image': 'assets/tala.jpg', 'title': 'ताला', 'route': Page1()},
    //{'image': 'assets/darha.jpg', 'title': 'Page 2', 'route': Page2()},
    {'image': 'assets/malhar.jpg', 'title': 'मल्हार', 'route': Page2()},
    {'image': 'assets/ratanpur.jpg', 'title': 'रतनपुर', 'route': Page3()},
    {'image': 'assets/kananpendari.jpg', 'title': 'कानन पेंडारी', 'route': Page4()},
    {'image': 'assets/darga.jpg', 'title': 'लुतरा शरीफ', 'route': Page5()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('पर्यटक स्थल'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 images per row
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => items[index]['route']),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      items[index]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    items[index]['title'],
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ताला'),
        backgroundColor: Colors.lightBlue,
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'यह अतीत में वापस जाने और कालातीत मूर्तियों द्वारा मंत्रमुग्ध होने जैसा है। निश्चित रूप से अनंत काल और कलात्मक पत्थर की मूर्तियों की भूमि, ताला अमेरिकापा के गांव के पास मनियारी नदी के तट पर स्थित है। अक्सर मेकाला के पांडुवामशियों के अभिलेखों में वर्णित संगमग्राम के रूप में पहचाना जाता है, ताला शिवनाथ और मनियारी नदी के संगम पर स्थित है। देवरानी-जेठानी मंदिरों के लिए सबसे मशहूर, ताला की खोज 1873-74 में जे.डी. वेलगर ने की थी, जो प्रसिद्ध पुरातत्वविद् अलेक्जेंडर कनिंघम के सहायक थे । इतिहासकारों ने दावा किया है कि ताला गांव 7-8 वीं शताब्दी ईस्वी की है।\n'
              '\n'
               'ताला के पास सरगांव में धूम नाथ का मंदिर है। इस मंदिर में भगवान किरारी के शिव स्मारक हैं, और मल्हार यहां से केवल 18 किमी दूर है। ताला बहुमूल्य पुरातात्विक खुदाई की भूमि है जिसने उत्कृष्ट मूर्तिकला के काम को प्रकट किया है। पुरातत्त्वविदों और इतिहासकारों को जटिल रूप से तैयार पत्थर की नक्काशी से मंत्रमुग्ध कर दिया जाता है। इन उत्कृष्ट खुदाई 6 वीं से 10 वीं शताब्दी ईस्वी के दौरान ताला की समृद्धि का वर्णन करती हैं। हालांकि, विभिन्न खुदाई वाले खंडहर प्राप्त हुए और मूर्तिकला-शैली हमें विभिन्न राजवंशों को बताती है जो ताला में शासन करते थे और भगवान शिव के भक्त और शिव धर्म के प्रचारक थे। शायद, यही कारण है कि आज भी शिव भक्त विभिन्न अनुष्ठान करने और पवित्र महामृत्यजय मंत्र का जप करने के लिए यहां मंदिरों को ढूंढ लेते हैं। भगवान शिव के भक्त यहां अपनी प्रार्थनाएं देते हैं और अन्य खुदाई का दौरा भी पसंद करते हैं। ताला निषाद समाज द्वारा निर्मित विभिन्न मंदिरों का भी घर है, जिसमें राम-जानकी मंदिर, स्वामी पूर्णानंद महाजन मंदिर और गोशाला शामिल हैं।\n'
              '\n',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'कैसे पहुँचें:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 10.0),
            Text(
              'बाय एयर\n'
              'बिलासपुर (21 किमी) निकटतम हवाई अड्डा दिल्ली, भोपाल, जबलपुर और प्रयागराज जुड़ा हुआ है। और रायपुर (85 किमी) हवाई अड्डा मुंबई, दिल्ली, नागपुर, हैदराबाद, कोलकाता, बेंगलुरु, विशाखापत्तनम और चेन्नई से जुड़ा हुआ है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'ट्रेन द्वारा\n'
              'बिलासपुर रेलवे स्टेशन (30 किमी) बॉम्बे-हावड़ा मुख्य लाइन से जुड़ा हुआ है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'सड़क के द्वारा\n'
              'बिलासपुर से टैक्सी और नियमित बसें उपलब्ध हैं।',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}



class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('मल्हार'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'मल्हार नगर बिलासपुर से दक्षिण- पश्चिम में बिलासपुर से शिवरीनारायण जाने वाली सडक पर स्थित मस्तूरी से 14 कि.मी. की दूरी पर स्थित है। बिलासपुर जिले में 21.55°  अक्षांस उत्तर एवं 82.20° देशांतर पूर्व में स्थित मल्हार में ताम्र पाषाण काल से लेकर मध्यकाल तक का इतिहास सजीव हो उठता है। कौशमबी से दक्षिण-पूर्वी समुद्र तट की ओर जाने वाला प्राचीन मार्ग भरहुत, बांधवगढ़, अमरकंटक, खरोद, मल्हाशर तथा सिरपुर होकर जगन्नाथपुरी की ओर जाता था। मल्हार के उत्खनन में ईसा की दूसरी शती की ब्राम्हीव लिपी में आलेखित उक मृणमुद्रा प्राप्त हुई है, जिस पर गामस कोसलीाया (कोसली ग्राम की) लिखा है। कोसली या कोसल ग्राम का तादात्यपी मल्हार से 16 किमी उत्त‍र पूर्व में स्थित कोसला ग्राम से स्थित जा सकता है। कोसला गांव से पुराना गढ़ प्राचीर तथा परिखा आज भी विद्यमान है, जो उसकी प्राचीनता को मौर्यो के समयुगीन ले जाती है।वहां कुषाण शासक विमकैडफाइसिस का एक सिक्का भी मिला है।\n'
              '\n'
              '',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'कैसे पहुँचें:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 10.0),
            Text(
              'बाय एयर\n'
                  'बिलासपुर (35 किमी) निकटतम हवाई अड्डा दिल्ली, भोपाल, जबलपुर और प्रयागराज जुड़ा हुआ है। और रायपुर (122 किमी) निकटतम हवाई अड्डा मुंबई, दिल्ली, नागपुर, हैदराबाद, कोलकाता, बेंगलुरु, विशाखापत्तनम और चेन्नई से जुड़ा हुआ है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'ट्रेन द्वारा\n'
                  'हावडा – मुंबई मुख्य रेल मार्ग पर बिलासपुर (32 किमी) समीपस्थ रेल्वे, जंकशन है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'सड़क के द्वारा\n'
                  'बिलासपुर शहर से निजी वाहन अथवा नियमित परिवहन बसों द्वारा मस्तुररी होकर मल्हार तक सड़क मार्ग से यात्रा की जा सकती है।',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('रतनपुर'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'बिलासपुर – कोरबा मुख्यमार्ग पर 25 कि.मी. पर स्थित आदिशक्ति महामया देवि कि पवित्र पौराणिक नगरी रतनपुर का प्राचीन एवं गौरवशाली इतिहास है। त्रिपुरी के कलचुरियो ने रतनपुर को अपनी राजधानी बना कर दीर्घकाल तक छ्.ग. मे शासन किया। इसे चतुर्युगी नगरी भी कहा जाता है. जिसका तात्पर्य इसका अस्तित्व चारो युगों में विद्यमान  रहा है | राजा रत्नदेव प्रथम ने रतनपुर के नाम से अपनी राजधानी बसाया |\n'
              '\n'
              'श्री आदिशक्ति  माँ महामाया देवी :- लगभग नौ वर्ष प्राचीन महामाया देवी का दिव्य एवं भव्य मंदिर दर्शनीय है | इसका निर्माण राजा रत्नदेव प्रथम द्वारा ग्यारहवी शताबदी में कराया गया था | १०४५ ई. में राजा रत्नदेव प्रथम मणिपुर नामक गाँव में  शिकार के लिए आये थे, जहा रात्रि विश्राम उन्होंने एक वटवृक्ष पर किया | अर्ध रात्रि में जब राजा की आंखे खुली, तब उन्होंने वटवृक्ष के नीचे अलौकिक प्रकाश देखा | यह देखकर चमत्कृत हो गई की वह आदिशक्ति श्री महामाया देवी की सभा लगी हुई है | इसे देखकर वे अपनी चेतना खो बैठे |सुबह होने पर वे अपनी राजधानी तुम्मान खोल लौट गये और रतनपुर को अपनी राजधानी बनाने का निर्णय लिया गया तथा १०५०ई. में श्री महामाया देवी का भव्य मंदिर निर्मित कराया गया | मंदिर के भीतर महाकाली,महासरस्वती और महालक्ष्मी स्वरुप देवी की प्रतिमाए विराजमान है| मान्यता है कि इस मंदिर में यंत्र-मंत्र का केंद्र रहा होगा | रतनपुर में देवी सती का दाहिना स्कंद गिरा था | भगवन शिव ने स्वयं आविर्भूत होकर उसे कौमारी शक्ति पीठ का नाम दिया था | जिसके कारण माँ  के दर्शन से कुंवारी कन्याओ को सौभाग्य की प्राप्ति होती है | नवरात्री पर्व पर यहाँ की छटा दर्शनीय होती है | इस अवसर पर श्रद्धालूओं द्वारा यहाँ हजारो की संख्या में मनोकामना ज्योति कलश प्रज्जवलित किये जाते है |',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'कैसे पहुँचें:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 10.0),
            Text(
              'बाय एयर\n'
                  'बिलासपुर (37 किमी) निकटतम हवाई अड्डा दिल्ली, भोपाल, जबलपुर और प्रयागराज जुड़ा हुआ है। और रायपुर (159 किमी) निकटतम हवाई अड्डा मुंबई, दिल्ली, नागपुर, हैदराबाद, कोलकाता, बेंगलुरु, विशाखापत्तनम और चेन्नई से जुड़ा हुआ है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'ट्रेन द्वारा\n'
                  'हावड़ा-मुंबई मुख्य मार्ग रेलमार्ग पर बिलासपुर (25 कि.मी.) समीपस्थह रेल्वेा जंक्शहन है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'सड़क के द्वारा\n'
                  'बिलासपुर से रतनपुर के लिये हर एक घंटे में बस तथा टैक्सी इत्याुदि वाहन सुविधा है।',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('कानन पेंडारी'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'बिलासपुर शहर कानन पेंडारी चिड़ियाघर के लिए प्रसिद्ध है। यह मुंगेली रोड पर बिलासपुर से लगभग 10 किलोमीटर सकरी के पास स्थित एक छोटा चिड़ियाघर है।\n'
        'सिटी बस का संचालन बिलासपुर सिटी बस लिमिटेड द्वारा यात्रियों के परिवहन के लिए किया जाता है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'कैसे पहुँचें:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 10.0),
            Text(
              'बाय एयर\n'
                  'बिलासपुर (21 किमी) निकटतम हवाई अड्डा दिल्ली, भोपाल, जबलपुर और प्रयागराज जुड़ा हुआ है। और रायपुर (139 किमी) निकटतम हवाई अड्डा मुंबई, दिल्ली, नागपुर, हैदराबाद, कोलकाता, बेंगलुरु, विशाखापत्तनम और चेन्नई से जुड़ा हुआ है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'ट्रेन द्वारा\n'
                  'हावडा – मुंबई मुख्यम रेल मार्ग पर बिलासपुर समीपस्थ रेल्वे जंकशन है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'सड़क के द्वारा\n'
                  'बिलासपुर शहर से निजी वाहन अथवा नियमित परिवहन बसों द्वारा यात्रा की जा सकती है।',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('लुतरा शरीफ'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'बाबा सैय्यद इंसान अली शाह की दरगाह के रूप में प्रसिद्ध “लुतरा शरीफ” बिलासपुर में स्थित है। जो पुरे छत्तीसगढ़ में धार्मिक सौहार्द्र, श्रध्दा और आस्था का पावन स्थल तथा प्रमुख केंद्र माना जाता है।\n'
              'प्रसिद्ध –लुतरा बाबा के दरगाह से कोई भी खाली हाथ नहीं जाता, ऐसी मान्यता है कि बाबा के मजार में मत्था टेकने वालो की मनौतिया अवश्य पूरी होती है। सभी धर्मो के अनुयायी यहाँ आकर अपनी मनौतिया के लिए चादर चढ़ाते है । इस कारण यह लुतरा शरीफ अंचल में आस्था के केंद्र के रूप में प्रसिद्ध है ।\n'
              'ऐतिहासिक –बिलासपुर से सीपत बलौदा मार्ग पर ग्राम – लुतरा स्थित है । कहा जाता है हजरत शाह बाबा सैय्यद इंसान अली अलैह रहमतुल्ला का जन्म सन 1845 में एक मुस्लिम परिवार में हुआ था । इनके पिता का नाम सैय्यद मरदान अली था, वंशावली के अनुसार बाबा इंसान अली के दादा का नाम जौहर अली था तथा इनके परदादा सैय्यद हैदर अली साहब हुए । बाबा इंसान अली की माँ का नाम बेगमजान और उनके नाना के नाम ताहिर अली साहब था । बाबा इंसान अली के नाना ताहिर अली धार्मिक प्रवृत्ति के इंसान थे । वे धर्म के प्रति गहरी आस्था रखते थे । उन्हें जीवन में पैदल हज यात्रा करने का गौरव प्राप्त हुआ था । सैय्यद इंसान अली पर उनके नाना के विचारधारा का पड़ना स्वाभाविक था क्योंकि इनका ज्यादा समय ननिहाल में ही बिता था और यही बालक आगे चल के हजरत बाबा सैय्यद इंसान अली के नाम से लुतरा शरीफ में प्रसिद्ध हुए ।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'कैसे पहुँचें:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 10.0),
            Text(
              'बाय एयर\n'
                  'बिलासपुर (47 किमी) निकटतम हवाई अड्डा दिल्ली, भोपाल, जबलपुर और प्रयागराज जुड़ा हुआ है। और रायपुर (163 किमी) निकटतम हवाई अड्डा मुंबई, दिल्ली, नागपुर, हैदराबाद, कोलकाता, बेंगलुरु, विशाखापत्तनम और चेन्नई से जुड़ा हुआ है।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'ट्रेन द्वारा\n'
                  'निकटतम रेल्वे स्टेशन बिलासपुर हैं, देश के सभी प्रमुख शहरों से बिलासपुर तक ट्रेनें उपलब्ध हैं।',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'सड़क के द्वारा\n'
                  'लुतरा शरीफ दरगाह सीपत-बलौदा रोड के माध्यम से निजी या सार्वजनिक परिवहन द्वारा पहुंचा जा सकता है।',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}