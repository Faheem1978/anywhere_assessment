import 'package:simpsonsviewer/core/viewmodel/custom_base_view_model.dart';
import 'package:stacked/stacked.dart';

/// A [CustomBaseViewModel] that provides functionality to subscribe to a reactive service.
abstract class ReactiveBaseViewModel extends CustomBaseViewModel {
  List<ListenableServiceMixin>? _reactiveServices;

  List<ListenableServiceMixin>? get reactiveServices;

  bool _mounted = true;
  @override
  bool get mounted => _mounted;

  ReactiveBaseViewModel() {
    _reactToServices(reactiveServices!);
  }

  void _reactToServices(List<ListenableServiceMixin> reactiveServices) {
    _reactiveServices = reactiveServices;
    for (var reactiveService in _reactiveServices!) {
      reactiveService.addListener(_indicateChange);
    }
  }

  @override
  void dispose() {
    for (var reactiveService in _reactiveServices!) {
      reactiveService.removeListener(_indicateChange);
    }
    super.dispose();
    _mounted = false;
  }

  void _indicateChange() {
    notifyListeners();
  }
}
