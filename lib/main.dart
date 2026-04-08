


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Học Tiếng Anh - Nhóm 03',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App Học Tiếng Anh'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Hàm tạo Button màu sắc để tái sử dụng
  Widget _buildColorButton(String text, Color color) {
    return Container(
      width: double.infinity, // Nút dài hết chiều ngang màn hình
      height: 60,           // Độ cao của nút
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Làm nút vuông như hình mẫu
          ),
        ),
        onPressed: () {},
        child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView( // Thêm để tránh lỗi tràn màn hình khi có nhiều nút
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // --- PHẦN BỔ SUNG CÁC NÚT MÀU SẮC ---
            const Text('2', style: TextStyle(fontSize: 24)),
            const Text('Hello'),
            const Text('[1, hello, 2, goodbye]'),
            const SizedBox(height: 10),
            
            _buildColorButton('Red', Colors.red),
            _buildColorButton('Green', Colors.green),
            _buildColorButton('Blue', Colors.blue),
            _buildColorButton('Cyan', Colors.cyan),

            const SizedBox(height: 30), // Khoảng cách tới phần danh sách

            // Tiêu đề dự án
            const Text(
              'DANH SÁCH THÀNH VIÊN NHÓM',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 20),

            // Danh sách thành viên
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Nguyễn Lan Anh'),
                subtitle: Text('MSSV: 23010823'),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Dương Kim Chi'),
                subtitle: Text('MSSV: 23010831'),
              ),
            ),
            
            const SizedBox(height: 30),
            const Text('Đề tài: Ứng dụng hỗ trợ học tiếng Anh thông minh'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}