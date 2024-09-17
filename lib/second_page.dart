import 'package:coding_junior/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  final List<Map<String, String>> videoItems = [
    {"title": "Introduction", "duration": "3h 30min"},
    {"title": "Install Software", "duration": "1h 30min"},
    {"title": "Learn Tools", "duration": "2h 30min"},
    {"title": "Tracing Sketsa", "duration": "2h 30min"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200], // Set appbar background color
        leading: Padding(
          padding: const EdgeInsets.all(8.0), // Add some space around the icon
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // White background
              shape: BoxShape.circle, // Circular shape
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Colors.black), // Set icon color to black
              onPressed: () {},
            ),
          ),
        ),
        title: Text(
          'Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding:
                const EdgeInsets.all(8.0), // Add some space around the icon
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // White background
                shape: BoxShape.circle, // Circular shape
              ),
              child: IconButton(
                icon: Icon(Icons.notifications,
                    color: Colors.black), // Set icon color to black
                onPressed: () {},
              ),
            ),
          ),
          // Add spacing between the icons
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Student',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/human.jpg'),
                            radius: 20,
                            backgroundColor: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Photoshop Editing Course',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.video_collection, size: 20),
                            SizedBox(width: 5),
                            Text('30 Lessons'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.timer, size: 20),
                            SizedBox(width: 5),
                            Text('13h 30min'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Video',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 350, // Set an appropriate height
                child: ListView.builder(
                  itemCount: videoItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final videoItem = videoItems[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey[400]!,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.grey[600],
                                    size: 40,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      videoItem["title"]!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time, size: 16),
                                        SizedBox(width: 5),
                                        Text(videoItem["duration"]!),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[400]!),
                              ),
                              child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.play_circle_fill,
                                    color: Colors.green),
                                label: Container(
                                  child: Text(
                                    'Play Video',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 40, top: 20),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: const Color(0xFFb9dd6b),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.bookmark_add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  child: Text(
                    'Enroll Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFb9dd6b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
