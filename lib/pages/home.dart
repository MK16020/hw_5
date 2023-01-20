import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get onPressed => null;

  var iconColor = Colors.grey;
  var iconShape = Icons.favorite_border_outlined;
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count'),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Text('تسبيح')),
              InkWell(
                  onTap: () {
                    if (iconColor == Colors.grey) {
                      setState(() {
                        iconColor = Colors.red;
                        iconShape = Icons.favorite;
                      });
                    } else {
                      setState(() {
                        iconColor = Colors.grey;
                        iconShape = Icons.favorite_border_outlined;
                      });
                    }
                  },
                  child: Icon(
                    iconShape,
                    color: iconColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
