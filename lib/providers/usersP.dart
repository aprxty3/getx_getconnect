import 'package:get/get.dart';
import 'dart:convert';

class UserProvider extends GetConnect {
  final url =
      "https://get-connect-691a4-default-rtdb.asia-southeast1.firebasedatabase.app/";

  //POST
  Future<Response> postData(
    String name,
    String email,
    String phone,
  ) {
    final body = json.encode({
      "name": name,
      "email": email,
      "phone": phone,
    });

    return post(url + "users.json", body);
  }

  //DELETE
  Future<Response> deleteData(String id) {
    return delete(url + "users/$id.json");
  }
}
