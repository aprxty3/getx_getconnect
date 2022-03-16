import 'package:get/get.dart';
import 'dart:convert';

class UserProvider extends GetConnect {
  final url =
      "https://get-connect-691a4-default-rtdb.asia-southeast1.firebasedatabase.app/";

  //POST
  Future<Response> postData(
    String id,
    String name,
    String email,
    String phone,
  ) {
    final body = json.encode({
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
    });

    return post(url + "users.json", body);
  }
}
