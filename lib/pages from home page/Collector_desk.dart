import 'package:flutter/material.dart';

class collectorsDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('कलेक्टर डेस्क'),
        backgroundColor: Colors.lightBlue,
      ),
      body:  Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Center(
    child: CircleAvatar(
    radius: 60,
    backgroundImage: AssetImage('assets/collector.jpg'), // Ensure you have this image in your assets folder
    ),
    ),
    SizedBox(height: 16),
    Center(
    child: Text(
    'श्री अवनीश कुमार शरण (भा.प्र.से.)',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.deepPurple,
    ),
    ),
    ),
    SizedBox(height: 16),
    buildInfoRow(Icons.access_time, 'अवधि:', 'वर्तमान'),
    buildInfoRow(Icons.assignment_ind, 'भर्ती का स्रोत:', 'Direct'),
    buildInfoRow(Icons.phone, 'संपर्क:', '07752-223344'),
    buildInfoRow(Icons.location_on, 'पता:', 'कार्यालय कलेक्टर जिला बिलासपुर (छ.ग.) पिन - 495001'),
    buildInfoRow(Icons.date_range, 'आवंटन वर्ष:', '2009'),
    buildInfoRow(Icons.business_center, 'नागरिक सेवाएँ:', 'IAS'),
    buildInfoRow(Icons.email, 'ईमेल:', 'collector-bsp.cg@gov.in'),
    ],
    ),
    ),
    );
  }

  Widget buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}