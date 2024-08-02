import 'package:flutter/material.dart';

class jila_prashasan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('जिला प्रशासन'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'जिला प्रशासन वेबसाइट पर जाने के लिए दिए गए लिंक को कॉपी करें और इसे ब्राउज़र में पेस्ट करें।\n'
                  '\n'
                  'https://hpbilaspur[dor]nic[dot]in/divisions/administration/',
              style: TextStyle(color: Colors.black87, fontSize: 16.0),
            ),
          ),
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
