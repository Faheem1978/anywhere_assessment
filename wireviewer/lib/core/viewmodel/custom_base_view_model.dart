import 'package:flutter/widgets.dart';
import 'package:anywhere_ui/anywhere_ui.dart';
import 'package:wireviewer/locator.dart';

class CustomBaseViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();
  ViewState _state = ViewState.idle;
  bool _mounted = true;
  bool get mounted => _mounted;
  ViewState get state => _state;

  @override
  void dispose() {
    super.dispose();
    _mounted = false;
  }

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  String _serverError = "No internet connection";

  get serverError => _serverError;

  void setServerError(String value) {
    _serverError = value;
    notifyListeners();
  }

  void goBack() {
    _navigationService.goBack();
  }

  void goBackWithData(dynamic data) {
    _navigationService.goBackWithData(data);
  }
}
