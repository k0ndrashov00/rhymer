import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/ui/ui.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

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
            title: const Text('История'),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverPadding(
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.6,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const RhymeHistoryCard(rhymes: ['afaf', 'afasfvsav', 'adacfh', 'zzzzzz']);
                },
                childCount: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
