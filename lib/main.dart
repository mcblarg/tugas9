import 'package:flutter/material.dart';
import 'models/getnews.dart';
import 'widgets/news_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post-Apocalyptic News',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF1E1E1E),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF292929),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
          titleLarge: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      home: const NewsListPage(),
    );
  }
}

class NewsListPage extends StatelessWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Getnews> newsList = [
      Getnews(
        id: 1,
        title: 'Survivors Found in Wasteland',
        body:
        'After weeks of relentless searching, rescue teams stumbled upon a small group of survivors deep in the scorched wasteland. The group, emaciated and sunburnt, had been surviving on dwindling supplies and the remnants of a forgotten underground shelter. Their discovery brings a flicker of hope, but their stories paint a harrowing picture of lost civilizations, endless storms, and scavenger raids that turned the once-bustling land into an unrecognizable hellscape.',
      ),
      Getnews(
        id: 2,
        title: 'Water Scarcity Rising',
        body:
        'The situation has grown dire as natural water sources continue to dry up, leaving entire regions parched and desperate. Once-mighty rivers are now cracked beds of dust, and what little water remains is either contaminated or fiercely guarded by warlords. Communities resort to dangerous water filtration methods, trading fortunes for a few drops. Scientists warn that without a miracle or discovery of new reserves, humanity\'s lifeline could be severed within months.',
      ),
      Getnews(
        id: 3,
        title: 'Resource Wars Break Out',
        body:
        'As resources dwindle, tensions have finally boiled over into full-scale conflict. Nomadic clans, fortified settlements, and rogue militias now wage brutal wars over caches of fuel, food, and clean water. Once-loyal alliances have shattered, replaced by merciless skirmishes where survival is the only currency. The wasteland echoes with gunfire, and the smog of burning battlegrounds hangs heavy, signaling that the age of negotiation has long passed—now, only the strongest will endure.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Post-Apocalyptic News'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsCard(getnews: newsList[index]);
        },
      ),
    );
  }
}
