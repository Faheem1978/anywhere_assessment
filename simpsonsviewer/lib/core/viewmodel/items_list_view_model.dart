import 'package:simpsonsviewer/approuter.dart';
import 'package:anywhere_ui/anywhere_ui.dart';
import 'package:simpsonsviewer/core/components/endpoints.dart';
import 'package:simpsonsviewer/core/viewmodel/custom_base_view_model.dart';
import 'package:simpsonsviewer/locator.dart';

class ItemListViewModel extends CustomBaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final Api _api = locator<Api>();
  List<RelatedTopics>? _relatedTopics;
  List<RelatedTopics>? get relatedTopics => _relatedTopics;
  RelatedTopics? _selected;
  RelatedTopics? get selected => _selected;
  String _title = "Loading";
  String get title => _title;

  getItemsList() async {
    setState(ViewState.loading);
    ItemResponseModel itemsResponse = await _api.getItems(
      simpsonCharacterEndpoint,
    );
    if (itemsResponse.serverError == null) {
      _title = itemsResponse.heading!;
      _relatedTopics = itemsResponse.relatedTopics;
      setState(ViewState.idle);
    } else {
      setState(ViewState.error);
    }
  }

  onPressed(RelatedTopics selectedTopic) {
    _navigationService.navigateToAndBack(
      AppRouter.itemDetailView,
      arguments: selectedTopic,
    );
  }

  updateSelected(RelatedTopics selectedTopic) {
    _selected = selectedTopic;
    notifyListeners();
  }
}
