import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), 
        color: theme.hintColor.withOpacity(0.1)
      ),
      child: Row(
        children: [
          const Icon(Icons.search_rounded),
          const SizedBox(width: 12),
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
