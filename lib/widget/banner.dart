import 'package:flutter/material.dart';

class Bannerss extends StatelessWidget {
  const Bannerss({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/cbse.png',
          height: 100,
        ),
        Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Qz9LR6DFuHDI5nQqoX_PtnbE8I4O-6kt3g&s'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhTvFEBcalVMU5qVfLHbW2JCm_UcjbQ1n15A&s'),
            Image.network(
                'https://www.mayoorschool.org/images/logos/india_purple.png')
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(color: Colors.grey.shade800),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text(
                  "ONLINE FEE PAYMENT",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  "MAYOOR ONLINE",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                // Social Media Icons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.facebook,
                          color: Colors.blue, size: 30),
                      onPressed: () {
                        // Add the link to your Facebook page
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.camera_alt,
                          color: Colors.purple,
                          size: 30), // Instagram-like icon
                      onPressed: () {
                        // Add the link to your Instagram page
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.video_library,
                          color: Colors.red, size: 30), // YouTube-like icon
                      onPressed: () {
                        // Add the link to your YouTube channel
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.alternate_email,
                          color: Colors.lightBlue,
                          size: 30), // Twitter-like icon
                      onPressed: () {
                        // Add the link to your Twitter page
                      },
                    ),
                  ],
                ),
                // Additional Content (if needed)
              ],
            ),
          ),
        )
      ],
    );
  }
}
