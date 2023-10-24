import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ListItemWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                text,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.chevron_right,
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
