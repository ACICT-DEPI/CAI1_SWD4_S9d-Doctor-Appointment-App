import 'package:doc_appointment/widget/app_bar_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<IconData>? actions;
  final bool disableLeading;
  final bool enableTabBar;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.disableLeading = false,
    this.enableTabBar = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      actions: (actions != null)
          ? actions!
              .map(
                (icon) => AppBarButton(icon),
              )
              .toList()
          : null,
      leading: (!disableLeading)
          ? const AppBarButton(Icons.arrow_back_outlined)
          : null,
      // bottom: (enableTabBar)
      //     ? const TabBar(tabs: [
      //         Tab(text: 'Upcomming'),
      //         Tab(text: 'Completed'),
      //         Tab(text: 'Cancelled'),
      //       ])
      //     : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
