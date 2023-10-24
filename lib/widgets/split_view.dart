import 'package:flutter/material.dart';

class SplitViewItem {
  final Widget listItem;
  final Widget pageBody;

  const SplitViewItem(
    this.listItem,
    this.pageBody,
  );
}

class SplitView extends StatelessWidget {
  /// Body of the split view.
  final Widget pageBody;

  /// Sidebar container
  final Widget panel;

  const SplitView({
    Key? key,
    required this.panel,
    required this.pageBody,
  }) : super(key: key);

  Widget _contentBody() => Row(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 350),
            child: panel,
          ),
          Expanded(
            child: ClipRRect(child: pageBody),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) => Scaffold(body: _contentBody());
}
