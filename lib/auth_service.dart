import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pos_flutter/globals.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  // static Future<http.Response> register(
  //     String name, String email, String password) async {
  //   Map data = {
  //     "name": name,
  //     "email": email,
  //     "password": password,
  //   };
  //   var body = json.encode(data);
  //   var url = Uri.parse(baseURL + 'auth/register');
  //   http.Response response = await http.post(
  //     url,
  //     headers: headers,
  //     body: body,
  //   );
  //   print(response.body);
  //   return response;
  // }

  static Future<http.Response> login(String user_name, String password) async {
    Map data = {
      "user_name": user_name,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'v1/auth/signin');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    final sharedPref = await SharedPreferences.getInstance();
    final myMapsPref = json.encode({
      'user_name': user_name,
    });
    
    sharedPref.setString('authData', myMapsPref);

    print('cingcai 111');
    print(response.body);
    return response;
  }

  Future<void> autoLogin() async {
    final pref = await SharedPreferences.getInstance();
    final myData = pref.get('authData');
  }

}