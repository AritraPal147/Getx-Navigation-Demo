import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/page_five.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black26,
        ),
        title: const Text('Page Four'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              onPressed: () => Get.to(() => const PageFive()),
              child: const Text(
                'Get to Home',
                style: TextStyle(fontSize: 40, color: Colors.grey),
              ),
            ),
            const Divider(),
            Text(
              // parameters used instead of arguments when parameter passed in named route
              'Page Four ${Get.parameters['data']}',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
