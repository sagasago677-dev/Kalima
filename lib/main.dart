import 'package:flutter/material.dart';

void main() => runApp(KalimaApp());

class KalimaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalima',
      home: WordsPage(),
    );
  }
}

class Word {
  final String en;
  final String ar;
  final String emoji;
  Word(this.en, this.ar, this.emoji);
}

class WordsPage extends StatelessWidget {
  final List<Word> words = [
    Word('Apple', 'تفاحة', '🍎'),
    Word('Cat', 'قطة', '🐱'),
    Word('Dog', 'كلب', '🐶'),
    Word('Ball', 'كرة', '⚽'),
    Word('Book', 'كتاب', '📚'),
    Word('Sun', 'شمس', '☀️'),
    Word('Moon', 'قمر', '🌙'),
    Word('Car', 'سيارة', '🚗'),
    Word('Bird', 'عصفور', '🐦'),
    Word('Fish', 'سمكة', '🐟'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F0FF),
      appBar: AppBar(
        title: Text('كلمة - Kalima', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.9, crossAxisSpacing: 12, mainAxisSpacing: 12),
        itemCount: words.length,
        itemBuilder: (context, i) {
          final w = words[i];
          return Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(w.emoji, style: TextStyle(fontSize: 50)),
                SizedBox(height: 8),
                Text(w.en, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.purple)),
                Text(w.ar, style: TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
          );
        },
      ),
    );
  }
}
