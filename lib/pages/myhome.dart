import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget{
  const MyhomePage({super.key, required this.title});

   final String title;

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}
class _MyhomePageState extends State<MyhomePage> {
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
            Text('Volume : $_volume'),
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}




