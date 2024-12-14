import 'package:flutter/material.dart';
import 'package:mayoor_school/widget/banner.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Mayoor School',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://www.mayoorschool.org/images/homeimages/R1C33.jpg',
                    fit: BoxFit.cover,
                    color: Colors.black45.withOpacity(0.5),
                    colorBlendMode: BlendMode.darken,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey,
                        child: Center(
                          child: Icon(Icons.broken_image,
                              size: 60, color: Colors.white),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: 50,
                    right: 16,
                    child: Image.network(
                      "https://www.mayoorschool.org/sites/vms.edu/files/logo.png",
                      width: 60,
                      height: 60,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 60, color: Colors.red);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  'Our Story',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                _buildTimelineItem(
                  year: '1980',
                  title: 'Foundation',
                  description:
                      'Established on July 9th by Mayo College General Council, under the visionary leadership of H.H. Maharao Bhimsinghji of Kotah.',
                ),
                _buildTimelineItem(
                  year: '1985',
                  title: 'Early Growth',
                  description:
                      'Began with 186 students and 7 dedicated teaching staff members, located opposite Mayo College in Ajmer.',
                ),
                _buildTimelineItem(
                  year: '2024',
                  title: 'Present Day',
                  description:
                      'Grown to over 2,100 students and more than 90 teaching staff, recognized as a premier educational institution.',
                ),
              ]),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About My Project",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.black87, // Dark color for better readability
                      letterSpacing: 1.2, // Slight letter spacing for elegance
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "This project is created by Pratap Singh Sisodya for Mayoor School, aimed at providing a user-friendly app experience for students. It focuses on delivering essential features and enhancing accessibility for educational purposes.",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors
                          .grey[800], // Lighter text color for description
                      height: 1.5, // Improved line height for readability
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Bannerss(), // Ensure Bannerss is correct.
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineItem({
    required String year,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                year,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
