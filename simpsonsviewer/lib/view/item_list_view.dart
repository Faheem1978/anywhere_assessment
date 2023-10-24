import 'package:anywhere_ui/anywhere_ui.dart';
import 'package:simpsonsviewer/core/viewmodel/items_list_view_model.dart';
import 'package:simpsonsviewer/view/items_detail.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ItemsListView extends StatefulWidget {
  const ItemsListView({super.key});

  @override
  State<ItemsListView> createState() => _ItemsListViewState();
}

class _ItemsListViewState extends State<ItemsListView> {
  onViewModelReady(ItemListViewModel model) {
    model.getItemsList();
  }

  itemsList(ItemListViewModel model) {
    return model.state == ViewState.loading
        ? const Center(child: CircularProgressIndicator())
        : model.state == ViewState.error
            ? const Center(
                child: Text("Oops! Something went wrong!"),
              )
            : ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                itemCount: model.relatedTopics!.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListItemWidget(
                    onPressed: () => context.isDesktop
                        ? model.updateSelected(model.relatedTopics![index])
                        : model.onPressed(model.relatedTopics![index]),
                    text: model.relatedTopics![index].text!,
                  );
                },
              );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ItemListViewModel(),
      onViewModelReady: (model) => onViewModelReady(model),
      builder: (context, ItemListViewModel model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              model.title,
            ),
          ),
          body: context.isDesktop
              ? SplitView(
                  panel: itemsList(model),
                  pageBody: model.selected == null
                      ? Container()
                      : ItemDetailView(
                          model.selected!,
                        ),
                )
              : itemsList(
                  model,
                ),
        );
      },
    );
  }
}
