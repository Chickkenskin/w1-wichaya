import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/Second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red[900]),

                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),

                      child: ClipOval(
                        child: Image.network(
                          "https://thethaiger.com/th/wp-content/uploads/2022/10/%E0%B8%9E%E0%B8%A3%E0%B8%B5%E0%B9%88%E0%B8%84%E0%B8%B2%E0%B8%8B%E0%B8%B6%E0%B8%A2%E0%B8%B0-%E0%B8%AD%E0%B8%AD%E0%B8%81%E0%B8%81%E0%B8%B3%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A2-1.jpg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Katsuya"),
                    SizedBox(height: 5),
                    Text("Prekatsuya@e-tech.ac.th"),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.phone, color: Colors.green),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [Text("เบอร์โทรศัทพ์"), Text("0649140879")],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.cake, color: Colors.pinkAccent),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("วันเกิด"), Text("14 กันยายน 2548")],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.pin_drop, color: Colors.orangeAccent),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("ที่อยู่"), Text("ชลบุรี")],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.school, color: Colors.purpleAccent),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("การศึกษา"), Text("วิทยาลัยเทคโนโลยีภาคตะวันออก(อีเทค)")],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Center(
                    child:ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/Second'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 1,
                      ),
                      child: Text(" Go to Second"),
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

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // เว้นขอบจอนิดหน่อย
          child: Column(
            children: [
              // ส่วนหัว: รูปโปรไฟล์ + ตัวเลขสถิติ
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // เริ่มจากซ้าย
                children: [
                  // 1. รูปโปรไฟล์ (อยู่ซ้ายสุด)
                  ClipOval(
                    child: Image.network(
                      "https://thethaiger.com/th/wp-content/uploads/2022/10/%E0%B8%9E%E0%B8%A3%E0%B8%B5%E0%B9%88%E0%B8%84%E0%B8%B2%E0%B8%8B%E0%B8%B6%E0%B8%A2%E0%B8%B0-%E0%B8%AD%E0%B8%AD%E0%B8%81%E0%B8%81%E0%B8%B3%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A2-1.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 20), // เว้นระยะห่างระหว่างรูปกับตัวเลข

                  // 2. ส่วนข้อมูลตัวเลข (กินพื้นที่ด้านขวาที่เหลือทั้งหมด)
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, // กระจายระยะห่างเท่าๆ กัน
                      children: [
                        // ก้อนที่ 1: กำลังติดตาม
                        _buildStatColumn("40", "กำลังติดตาม"),
                        // ก้อนที่ 2: ผู้ติดตาม
                        _buildStatColumn("828.1 K", "ผู้ติดตาม"),
                        // ก้อนที่ 3: ถูกใจ
                        _buildStatColumn("329.9 K", "ถูกใจ"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              Row(
                children: [
                  Text(
                    "Prekatsuya",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.verified, color: Colors.blue, size: 20), // ติ๊กถูกสีฟ้า
                ],
              ),

              SizedBox(height: 4),

              Row(
                children: [
                  Icon(Icons.music_note, size: 16, color: Colors.grey),
                  Text(
                    " katsuya02",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ปุ่มติดตาม
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          "ติดตาม",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ไอคอนแชร์
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.share,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // รูป 1
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://pbs.twimg.com/media/FLOGQQsVUAUzG9o.jpg",
                      width: 170,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // รูป 2
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://pbs.twimg.com/media/EN0R_MsUEAAMLyM.jpg",
                      width: 170,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildStatColumn(String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey
          ),
        ),
      ],
    );
  }
}
