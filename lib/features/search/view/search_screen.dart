import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/features/search/widgets/widgets.dart';
import 'package:rhymer/ui/ui.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
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
            child: SearchButton(
              onTap: () => _showSearchBottomSheet(context)
            )
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final rhymes = List.generate(4, (index) => 'Рифма');
                return RhymeHistoryCard(rhymes: rhymes);
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverList.builder(itemBuilder: (context, index) => const RhymeListCard(rhyme: 'Рифма')),
      ],
    );
  }

  Future<dynamic> _showSearchBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context, 
      builder: (context) => const Padding(
        padding: EdgeInsets.only(top: 100),
        child: SearchRhymesBottomSheet(),
      ),
    );
  }
}