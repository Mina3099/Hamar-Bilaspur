import 'package:flutter/material.dart';
import 'mahilabaalvikas_yojna.dart';
import 'future_work.dart';

class mahilabaalvikas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildImageButton(context, 'assets/yojanal.png', 'योजनाएँ और सेवाएँ'),
                  _buildImageButton(context, 'assets/contactl.png', 'संपर्क करें'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildImageButton(context, 'assets/gallery.png', 'गैलरी'),
                  _buildImageButton(context, 'assets/maplogo.png', 'स्थान'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageButton(BuildContext context, String imagePath, String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // Define your onPressed functionality here
            Widget destinationScreen;

            switch (buttonText) {
              case 'योजनाएँ और सेवाएँ':
                destinationScreen = DestinationScreen(title: buttonText);
                break;
              case 'संपर्क करें':
                destinationScreen = FutureWork(title: buttonText);
                break;
              case 'गैलरी':
                destinationScreen = FutureWork(title: buttonText);
                break;
              default:
                destinationScreen = FutureWork(title: buttonText);
            }

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destinationScreen),
            );
          },
          child: Column(
            children: <Widget>[
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(buttonText),
            ],
          ),
        ),
      ),
    );
  }
}
