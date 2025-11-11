import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/features/settings/widgets/widgets.dart';


@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
            title: const Text('Настройки'),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: 'Темная тема', 
              value: false,
              onChanged: (value) {},
            ),
          ),
          SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: 'Уведомления', 
              value: false,
              onChanged: (value) {},
            ),
          ),
          SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: 'Разрешить аналитику', 
              value: true,
              onChanged: (value) {},
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: SettingsActionCard(
              title: 'Очистить историю',
              iconData: Icons.delete_sweep_outlined,
              iconColor: theme.primaryColor,
              onTap: () {},
            )
          ),
          SliverToBoxAdapter(
            child: SettingsActionCard(
              title: 'Поддержка',
              iconData: Icons.message_outlined,
              onTap: () {},
            )
          ),
        ],
      ),
    );
  }
}
