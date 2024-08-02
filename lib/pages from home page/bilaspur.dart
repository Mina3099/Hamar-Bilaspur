import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class bilaspur extends StatelessWidget {
  final List<String> imgList = [
    'assets/bilaspur1.jpg',
    'assets/bilaspur2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/jilalogo.png',
              fit: BoxFit.cover,
              height: 50, // Adjust the height to fit your image
            ),
            SizedBox(width: 8), // Small gap between the images
            Image.asset(
              'assets/cg.png',
              fit: BoxFit.cover,
              height: 50, // Adjust the height to fit your image
            ),
          ],
        ),
        backgroundColor: Colors.lightBlue,
        toolbarHeight: 80, // Adjust the height to fit your image
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
              ),
              items: imgList.map((item) => Container(
                child: Center(
                  child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                ),
              )).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'बिलासपुर के बारे में',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            buildHistorySection(),
            buildInfoSection(context),
            buildFacilitiesSection(context),
            buildHelpSection(context),
          ],
        ),
      ),
    );
  }

  Widget buildHistorySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('जिले के बारे में', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
          SizedBox(height: 10),
          Text(
            'बिलासपुर शहर लगभग 400 वर्ष पुराना है और “बिलासपुर” का नाम “बिलासा” नामक महिला के नाम पर रखा गया है। कई प्राकृतिक आपदाओं के बावजूद, बिलासपुर ने बहुत कुछ विकसित किया है। बिलासपुर जिला 21.47° से  23.8° उत्तर अक्षांश और 81.14° से 83.15° पूर्व देशान्तर के बीच स्थित है।\n'
                'बिलासपुर जिला उत्तर में गौरेला-पेण्ड्रा-मरवाही जिला, पश्चिम में मुंगेली और कबीरधाम जिला, दक्षिण में बलौदाबाजार-भाटापारा जिला और पूर्व में कोरबा और जांजगीर-चांपा जिला से घिरा हुआ है।\n'
                'जिले का क्षेत्रफल 3508.48 वर्ग किलोमीटर है। जिले की कुल जनसंख्या लगभग 1625502 है।\n'
                'वर्तमान में बिलासपुर जिले में 11 तहसील, 4 ब्लॉक और 708 गांव शामिल हैं। रायपुर-भिलाई-दुर्ग ट्राई-सिटी मेट्रो क्षेत्र के बाद यह दूसरा सबसे बड़ा शहर है।\n'
                'छत्तीसगढ़ राज्य उच्च न्यायालय, बिलासपुर के गांव बोदरी में स्थित है। जिला बिलासपुर को छत्तीसगढ़ राज्य की न्यायधानी के नाम से भी जाना जाता है। बिलासपुर उच्च न्यायालय एशिया महाद्वीप का सबसे बड़ा उच्च न्यायालय है। बिलासपुर जिले का प्रशासनिक मुख्यालय भी है।',
          ),
        ],
      ),
    );
  }

  Widget buildInfoSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('जिला एक नज़र में',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              buildStatRow(context, 'क्षेत्रफल :', '3475.61 वर्ग किमी', Colors.blue),
              buildStatRow(context, 'जनसंख्या :', '1628202', Colors.green),
              buildStatRow(context, 'जनसंख्या घनत्व :', '413 वर्ग किमी', Colors.pink),
              buildStatRow(context, 'नगर पलिका परिषद :', '02', Colors.orange),
              buildStatRow(context, 'नगर पंचायत :', '04', Colors.teal),
              buildStatRow(context, 'ब्लॉक :', '04', Colors.blue),
              buildStatRow(context, 'लिंगानुपात :', '970', Colors.green),
              buildStatRow(context, 'तहसील :', '11', Colors.pink),
              buildStatRow(context, 'साक्षरता दर :', '74.46%', Colors.blue),
              buildStatRow(context, 'ग्राम पंचायत :', '483', Colors.green),
              buildStatRow(context, 'नगरनिगम :', '01', Colors.orange),
              buildStatRow(context, 'राजस्व ग्राम :', '708', Colors.teal),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFacilitiesSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('सार्वजनिक उपयोगिताएँ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              buildStatRow(context, 'अस्पताल : ', '03', Colors.blue),
              buildStatRow(context, 'पुलिस थाना : ', '20', Colors.green),
              buildStatRow(context, 'लोक सेवा केंद्र : ', '05', Colors.pink),
              buildStatRow(context, 'विश्वविद्यालय : ', '03', Colors.orange),
              buildStatRow(context, 'शहरीय निकाय : ', '10', Colors.teal),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildHelpSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('हेल्पलाइन नंबर',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              buildStatRow(context, 'नागरिक कॉल सेंटर -', '155300', Colors.blue),
              buildStatRow(context, 'महिला हेल्पलाइन -', '1091', Colors.green),
              buildStatRow(context, 'बचाव और राहत आयुक्त -', '1070', Colors.pink),
              buildStatRow(context, 'एनआईसी सेवा डेस्क-', '1800111555', Colors.orange),
              buildStatRow(context, 'छ.ग. कोरोना वायरस (COVID-19) हेल्पलाइन -', '104', Colors.teal),
              buildStatRow(context, 'बिलासपुर कोरोना वायरस (COVID-19) हेल्पलाइन -', '07752-251000', Colors.blue),
              buildStatRow(context, 'बाल हेल्पलाइन -', '1098', Colors.green),
              buildStatRow(context, 'अपराध रोकने वाला-', '1090', Colors.pink),
              buildStatRow(context, 'एम्बुलेंस -', '102, 108', Colors.blue),
              buildStatRow(context, 'दमकल केंद्र -', '101', Colors.green),
              buildStatRow(context, 'राष्ट्रीय कोरोना वायरस (COVID-19) हेल्पलाइन -', '1075', Colors.orange),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStatRow(BuildContext context, String title, String value, Color color) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 24, // Adjust width to fit two in one row
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
          Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }
}