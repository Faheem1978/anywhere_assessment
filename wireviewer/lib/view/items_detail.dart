import 'package:wireviewer/core/components/endpoints.dart';
import 'package:anywhere_ui/anywhere_ui.dart';
import 'package:flutter/material.dart';

class ItemDetailView extends StatelessWidget {
  const ItemDetailView(this.selectedtopic, {super.key});

  final RelatedTopics selectedtopic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !context.isDesktop
          ? AppBar(
              title: const Text("Item Details"),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Column(
            children: [
              selectedtopic.icon!.uRL != null && selectedtopic.icon!.uRL != ''
                  ? CircleAvatar(
                      minRadius: 32,
                      backgroundColor: Colors.blue,
                      child: Image.network(
                          imageBaseUrl + selectedtopic.icon!.uRL!))
                  : Container(),
              const SizedBox(
                height: 16,
              ),
              Text(selectedtopic.text!),
              const SizedBox(
                height: 16,
              ),
              Text(selectedtopic.result!),
            ],
          ),
        ),
      ),
    );
  }
}
