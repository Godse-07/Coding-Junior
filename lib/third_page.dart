import 'package:barcode_widget/barcode_widget.dart';
import 'package:coding_junior/main.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: EdgeInsets.symmetric(horizontal: 35, vertical: 80),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity, // Make the image take full width
                    height: 250,
                    child: Image.asset(
                      'assets/images/payment.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Payment Success',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$35.00',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey[200],
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/girl.png'),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Christiana Amandla',
                              style: TextStyle(
                                  fontSize: 13.5, color: Colors.grey[600]),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Adobe Xd Editing Course",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildInfoRow('ID Transaction', 'TA11231PW'),
                            _buildInfoRow('Invoice Date', 'Nov14, 2023'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: BarcodeWidget(
                      data: "Successful",
                      barcode: Barcode.qrCode(),
                      width: double.infinity,
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Color(0xffb9dd6b), // Background color of the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    8), // Optional: to give rounded corners
              ),
              minimumSize:
                  Size(double.infinity, 50), // Make the button full width
            ),
            child: Text(
              "Done",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ));
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$label: ', style: TextStyle(color: Colors.grey)),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
