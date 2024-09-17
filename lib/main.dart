import 'package:coding_junior/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // User profile section
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/girl.png'),
                  ),
                  title: Text('Christiana Amandla'),
                  subtitle: Text('Let\'s Learning to smart'),
                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
                // Mathematics course card
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Card(
                    color: Color(0xFFb9dd6b),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFD4EBA2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mathematics Course',
                                  style: TextStyle(
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFb9dd6b),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_view_month_sharp,
                                          color: Colors.black),
                                      Text('19 Nov, 2023'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD4EBA2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.task_alt_rounded,
                                        color: Color(0xFFb9dd6b),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    children: [
                                      Text('Completed'),
                                      Text('20',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 70,
                                width: 1.2,
                                color: Colors.white,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD4EBA2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.timelapse_rounded,
                                        color: Color(0xFFb9dd6b),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    children: [
                                      Text('Hours Spent'),
                                      Text('455',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  margin: EdgeInsets.only(bottom: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Course',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('View All', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Builder(builder: (BuildContext context) {
                          return GestureDetector(
                            onTap: () {
                              // Use a Builder to ensure the correct context for Navigator
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondPage(),
                                ),
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              elevation: 4.0,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Photoshop logo
                                    Center(
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Color(
                                              0xff001c2e), // Placeholder for logo background
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Ps',
                                            style: TextStyle(
                                              color: Color(0xff219bf1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),

                                    // Course Title
                                    Text(
                                      'Photoshop Editing \n Course',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),

                                    // Participant section
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 30,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/person1.png'),
                                                  ),
                                                  Positioned(
                                                    left: 20,
                                                    child: CircleAvatar(
                                                      radius: 30,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/person2.png'),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 35,
                                                    child: CircleAvatar(
                                                      radius: 30,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/person3.png'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Text(
                                              '+20',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Participant',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                      height: 2,
                                      color: Colors.grey,
                                    ),

                                    // Rating and Lessons
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.orange, size: 20),
                                          SizedBox(width: 4),
                                          Text(
                                            '4.8',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 4),
                                          Text('(230)',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          Spacer(),
                                          Icon(Icons.play_circle_outline,
                                              size: 20),
                                          SizedBox(width: 4),
                                          Text(
                                            '30 Lessons',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          elevation: 4.0,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Photoshop logo
                                Center(
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Color(
                                          0xff2d0003), // Placeholder for logo background
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'AI',
                                        style: TextStyle(
                                          color: Color(0xffff8e25),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),

                                // Course Title
                                Text(
                                  'Illustrator Editing \n Course',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),

                                // Participant section
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Stack(
                                            children: [
                                              CircleAvatar(
                                                radius: 30,
                                                backgroundImage: AssetImage(
                                                    'assets/images/person1.png'),
                                              ),
                                              Positioned(
                                                left: 20,
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundImage: AssetImage(
                                                      'assets/images/person2.png'),
                                                ),
                                              ),
                                              Positioned(
                                                left: 35,
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundImage: AssetImage(
                                                      'assets/images/person3.png'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '+20',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Participant',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Container(
                                  height: 2,
                                  color: Colors.grey,
                                ),

                                // Rating and Lessons
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 20),
                                      SizedBox(width: 4),
                                      Text(
                                        '4.8',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text('(230)',
                                          style: TextStyle(color: Colors.grey)),
                                      Spacer(),
                                      Icon(Icons.play_circle_outline, size: 20),
                                      SizedBox(width: 4),
                                      Text(
                                        '30 Lessons',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Popular courses section
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  margin: EdgeInsets.only(bottom: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Course',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('View All', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
                CourseCard(
                  title: 'Photoshop Editing Course',
                  icon: 'Ps',
                  rating: 4.8,
                  lessons: 30,
                ),
                CourseCard(
                  title: 'Illustrator Editing Course',
                  icon: 'Ai',
                  rating: 4.8,
                  lessons: 30,
                ),
                CourseCard(
                  title: 'Adobe Xd Editing Course',
                  icon: 'Xd',
                  rating: 4.8,
                  lessons: 30,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String icon;
  final double rating;
  final int lessons;

  const CourseCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.rating,
    required this.lessons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey[100],
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Color(0xff3e062f),
                      child: Center(
                        child: Text(
                          icon, // use the `icon` variable
                          style: TextStyle(
                            color: Color(0xffe6a9f1),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  // This should be wrapping the Text for `title` correctly now
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10), // Adjust spacing as needed
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 4), // Space between icon and text
                          Text('$rating (24k)'),
                          SizedBox(
                            width: 30,
                          ), // Aligns the next row to the far right
                          Icon(Icons.access_time),
                          SizedBox(width: 4), // Space between icon and text
                          Text('$lessons Lessons'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
