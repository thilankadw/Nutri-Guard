import 'package:flutter/material.dart';
import 'package:smartshield/screens/scan_screen.dart';
import 'package:smartshield/const/styles.dart';
import 'package:smartshield/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logoicon.png',
              height: 50,
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your Health Partner',
                style: mainText,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScanScreen()),
                  );
                },
                child: const Text('Scan Products'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
