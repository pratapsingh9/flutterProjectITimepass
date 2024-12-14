import 'package:flutter/material.dart';

class SchoolContactInfo extends StatelessWidget {
  const SchoolContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Relevant Contact Details of the Schools",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(height: 20),
          ContactCard(
            schoolName: "Green Valley High School",
            contactNumber: "+1 234 567 890",
            email: "info@greenvalley.edu",
            backgroundColor: Colors.greenAccent,
            icon: Icons.school,
          ),
          ContactCard(
            schoolName: "Blue Ridge Elementary",
            contactNumber: "+1 345 678 901",
            email: "contact@blueridge.edu",
            backgroundColor: Colors.lightBlueAccent,
            icon: Icons.local_library,
          ),
          ContactCard(
            schoolName: "Sunnyvale International School",
            contactNumber: "+1 456 789 012",
            email: "support@sunnyvale.edu",
            backgroundColor: Colors.orangeAccent,
            icon: Icons.public,
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String schoolName;
  final String contactNumber;
  final String email;
  final Color backgroundColor;
  final IconData icon;

  const ContactCard({
    required this.schoolName,
    required this.contactNumber,
    required this.email,
    required this.backgroundColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [backgroundColor.withOpacity(0.7), backgroundColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  icon,
                  size: 30,
                  color: backgroundColor.darken(0.2),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      schoolName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Contact: $contactNumber",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "Email: $email",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension ColorExtension on Color {
  Color darken(double amount) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final darkened =
        hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return darkened.toColor();
  }
}
