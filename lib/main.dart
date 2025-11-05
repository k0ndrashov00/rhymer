import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//---------------MyApp---------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xFFF82B10);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Color(0xFFEFF1F3),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      home: const HomeScreen(),
    );
  }
}
//---------------HomeScreen---------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            centerTitle: true,
            backgroundColor: theme.cardColor,
            surfaceTintColor: Colors.transparent,
            title: const Text('Rhymer'),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(82),
              child: SearchButton()
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemBuilder: (context, index) { 
                final rhymes = List.generate(4, (index) => 'Рифма');
                return RhymeHistoryCard(rhymes: rhymes);
              }
            )
          )),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverList.builder(
            itemBuilder: (context, index) => const RhymeListCard()
          )
        ],
      ),
    );
  }
}
//---------------BaseContainer---------------
class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
    required this.width, 
    this.padding = const EdgeInsets.only(left: 16),
    this.margin,
    required this.child, 
  });

  final double width;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theme.cardColor
      ),
      child: child
    );
  }
}
//---------------SearchButton---------------
class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: theme.hintColor.withOpacity(0.1)
      ),
      child: Row(
        children: [
          Icon(Icons.search_rounded),
          SizedBox(width: 12),
          Text(
            'Поиск рифм...',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: theme.hintColor.withOpacity(0.5)
            ),
          ),
        ],
      ),
    );
  }
}
//---------------RhymeHistoryCard---------------
class RhymeHistoryCard extends StatelessWidget {
  const RhymeHistoryCard({
    super.key,
    required this.rhymes,
  });

  final List<String> rhymes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Слово', style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700)),
          Wrap(
            children: rhymes.map((e) => Padding(
              padding: EdgeInsets.only(right: 4),
              child: Text(e),
            )).toList()
          )
        ],
      )
    );
  }
}
//---------------RhymeListCard---------------
class RhymeListCard extends StatelessWidget {
  const RhymeListCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Рифма',
            style: theme.textTheme.bodyLarge,
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: theme.hintColor.withOpacity(0.2),
            ),
            onPressed: () {}
          )
        ],
      ),
    );
  }
}