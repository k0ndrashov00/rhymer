import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/ui/ui.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            centerTitle: true,
            backgroundColor: theme.cardColor,
            surfaceTintColor: Colors.transparent,
            title: const Text('Избранное'),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverList.builder(itemBuilder: (context, index) => const RhymeListCard(
            sourceWord: 'Слово',
            rhyme: 'Рифма', 
            isFavorite: true
          )),
        ],
      ),
    );
  }
}
