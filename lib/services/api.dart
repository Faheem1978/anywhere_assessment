import 'dart:async';
import 'dart:convert';
import 'dart:io';
import '../model/item_response_model.dart';
import 'package:http/http.dart' as http;

class Api {
  final client = http.Client();
  final Duration timeOutDuration = const Duration(seconds: 50);

  int attempt = 1;
  int totalAttempt = 2;
  int timerCount = 0;

  onException(dynamic error) {
    if (error is SocketException) {
      return "Please Check Your Internet Connection";
    }

    if (error is TimeoutException) {
      return "Server not Responding, please try again";
    } else {
      if (attempt > totalAttempt) {
        attempt = 1;
      }
      attempt++;
      if (attempt <= totalAttempt) {
        return false;
      } else {
        return "Oops Something Went Wrong";
      }
    }
  }

  Future<ItemResponseModel> getItems(String url) async {
    try {
      var response = await http
          .get(
            Uri.parse(url),
          )
          .timeout(timeOutDuration);
      return ItemResponseModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      var data = onException(e);
      return data is bool
          ? await getItems(
              url,
            )
          : ItemResponseModel.withError(data);
    }
  }
}
