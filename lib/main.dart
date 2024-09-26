import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color.fromARGB(255, 221, 116, 103),
          title: const Text('JOVEN CARL REX P. BIACA', style: TextStyle(fontSize: 18)),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Profile Section
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/pp.png'),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Joven Carl Rex P. Biaca',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Sooc Arevalo, Iloilo, Philippines',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Information Section
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          children: [
                            buildInfoRow(Icons.cake, 'Birthdate', 'September 28, 2003'),
                            buildInfoRow(Icons.location_on, 'Address', 'Sooc Arevalo, Iloilo, Philippines'),
                            buildInfoRow(Icons.email, 'Email', 'jovencarlrex.biaca@wvsu.edu.ph'),
                            buildInfoRow(Icons.phone, 'Phone Number', '09358934576'),
                            buildInfoRow(Icons.school, 'Education', 'West Visayas State University'),
                            buildInfoRow(Icons.computer, 'Course', 'Bachelor of Science in Computer Science'),
                            buildInfoRow(Icons.favorite, 'Hobbies', 'Reading Novels, Sports, Sleeping, Computer Games'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Table Section (Using Table for structured data)
                      Table(
                        border: TableBorder.all(),
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('FIRST YEAR')),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('GWA')),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('1st Semester')),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('1.44')),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('2nd Semester')),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('1.36')),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('SECOND YEAR')),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('GWA')),
                            ),
                          ]),TableRow(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('First Semester')),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('1.26')),
                            ),
                          ]),TableRow(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('Second Semester')),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('1.28')),
                            ),
                          ]),
                        ],
                      ),

                     
                      const SizedBox(height: 20),

                      // Biography Section
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'My Biography',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'I’m Joven Carl Rex P. Biaca, 20 years old, living in Sooc Arevalo, Iloilo City. Growing up, I spent a lot '
                              'of time going back and forth between my home and my father’s hometown, which is why I love the'
                              'peace and quiet of the province. I prefer staying at home unless there’s a necessary reason to go out, '
                              'and I hope to retire somewhere serene in the future. My hobbies include playing computer games, '
                              'reading fantasy novels or manhwa, and relaxing in coffee shops. After high school, I took up Computer Science and'
                              'After high school, I decided to take up computer science, influenced by my relatives and friends, and '
                              'I’m now a 3rd-year student at WVSU. While it’s not always easy, I’m doing my best to stay motivated'
                              'and work harder, even though I tend to slack off at times.',
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.5,
                                color: Colors.grey[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to create rows of information
  Widget buildInfoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: const Color.fromARGB(255, 197, 61, 43)),
          const SizedBox(width: 16),
          Text(
            '$title: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
