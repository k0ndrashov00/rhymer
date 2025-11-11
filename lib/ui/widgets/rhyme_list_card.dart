import 'package:flutter/material.dart';
import 'package:rhymer/ui/ui.dart';

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({
    super.key, 
    this.isFavorite = false
  });

  final bool isFavorite;

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
            style: theme.textTheme.bodyLarge
          ),
          IconButton(
            icon: Icon(
              Icons.favorite, 
              color: isFavorite ? theme.primaryColor : theme.hintColor.withOpacity(0.2)
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
