import 'package:flutter/material.dart';
import './notification.dart';

import 'ProfilePage.dart';

class DoctorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[800],
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/ubaid/doctor-1.png'), // Replace with profile image
            ),
            SizedBox(width: 10),
            Text(
              "Hello, Welcome 🎉\nSavannah Nguyen",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
             Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NotificationScreen()),
                          );

            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Doctor...',
                hintStyle: TextStyle(color: Colors.white70),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
               fillColor: Colors.blue[700]?.withOpacity(0.5),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryChip(label: "🔥 All"),
                    CategoryChip(label: "🤒 Fever"),
                    CategoryChip(label: "🤧 Cough"),
                    CategoryChip(label: "🤢 Nausea"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Favourite Doctors
              SectionHeader(title: "Favourite Doctor", onTap: () {}),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    DoctorCard(
                      name: "Dr. Esther",
                      specialty: "Dentist",
                      rating: 4.5,
                      imagePath: "assets/ubaid/doctor-1.png",
                    ),
                    SizedBox(width: 26.0,),
                    DoctorCard(
                      name: "Dr. Warren",
                      specialty: "Physician",
                      rating: 4.8,
                      imagePath: "assets/ubaid/doctor-2.png",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Top Doctor
              SectionHeader(title: "Top Doctor", onTap: () {}),
              SizedBox(height: 10),
              TopDoctorCard(
                name: "Dr. Jenny Wilson",
                specialty: "Neurologist | VCare Clinic",
                rating: 5.0,
                reviews: 332,
                imagePath: "assets/ubaid/doctor-3.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  const CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
       
        label: Text(
          label,
          style: TextStyle(color: const Color.fromARGB(255, 215, 215, 215)),
        ),
        backgroundColor: const Color.fromARGB(255, 254, 251, 251),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SectionHeader({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        TextButton(
          onPressed: onTap,
          child: Text("See all"),
        ),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final String imagePath;

  const DoctorCard({
    required this.name,
    required this.specialty,
    required this.rating,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
           builder: (context) => AppointmentPage( ),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text(rating.toString()),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(specialty, style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 4),
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

class TopDoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final int reviews;
  final String imagePath;

  const TopDoctorCard({
    required this.name,
    required this.specialty,
    required this.rating,
    required this.reviews,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AppointmentPage( ),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: EdgeInsets.all(0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(specialty, style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(rating.toString() + '.0'),
                        SizedBox(width: 8),
                        Text(
                          "($reviews reviews)",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
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

class DoctorDetailsPage extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final String imagePath;
  final int? reviews;

  const DoctorDetailsPage({
    required this.name,
    required this.specialty,
    required this.rating,
    required this.imagePath,
    this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 200, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(specialty, style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 16),
                SizedBox(width: 4),
                Text(rating.toString() + (reviews != null ? ' ($reviews reviews)' : '')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
