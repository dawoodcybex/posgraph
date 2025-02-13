import 'package:flutter/material.dart';
import 'CallScreen.dart';


class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "My Appointment",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView( 
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: Column(
          children: [

               ClipRRect(
                       borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  ),
                      child: Image.asset(
                        'assets/ubaid/doctor-3.png', // Replace with the actual image URL
                        height: 300,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
            // Doctor Information Card
            Card(
              color: Colors.white,
              elevation: 4,
              shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
              ),
              
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Doctor Image
                 
                    const SizedBox(height: 16),
                    // Doctor Name and Specialization
                    const Text(
                      "Dr. Jenny Wilson",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Neurologist | Vcare Clinic",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Rating Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          "5.0 (332 reviews)",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              
            ),
            const SizedBox(height: 16),
            // Stats Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StatItem(label: "120+", description: "Patients"),
                StatItem(label: "7+", description: "Years Exp"),
                StatItem(label: "4.9", description: "Rating"),
                StatItem(label: "100+", description: "Reviews"),
              ],
            ),
            const SizedBox(height: 16),
            // About Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(16),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                
              
              const Text(
                "About Me\n" ,
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

               const Text(
                "Carly Angel is the top most immunologist specialist "
                "in Crist Hospital in London, UK. Read More...",
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              ],)
            ),
           
            SizedBox(
    width: double.infinity, // Makes the button full width
    child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 52, 95),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(vertical: 25),
              ),
              onPressed: () {
                 Navigator.push(
          context,
          MaterialPageRoute(
           builder: (context) => CallScreen( ),
          ),
        );

              },
              child: const Text(
                "Voice Call (14:30 - 15:00 PM)",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            ),
          ],
        ),
      ),
      )
    );
  }
}

class StatItem extends StatelessWidget {
  final String label;
  final String description;

  const StatItem({
    Key? key,
    required this.label,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
