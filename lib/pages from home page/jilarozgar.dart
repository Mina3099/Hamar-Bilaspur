import 'package:flutter/material.dart';
import 'jilarozgar_yojna.dart';
import 'future_work.dart';
class jilarozgar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Increase the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(child: Text('New Page')),
        ),
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
                  _buildImageButton(context, 'assets/images/image1.png', 'Button 1'),
                  _buildImageButton(context, 'assets/images/image2.png', 'Button 2'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildImageButton(context, 'assets/images/image3.png', 'Button 3'),
                  _buildImageButton(context, 'assets/images/image4.png', 'Button 4'),
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
