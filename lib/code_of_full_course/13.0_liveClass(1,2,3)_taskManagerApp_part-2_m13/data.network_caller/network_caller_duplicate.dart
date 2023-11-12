// import 'dart:convert';
//
//
// import 'package:flutter_practice_project/code_of_full_course/13.0_liveClass(1,2,3)_taskManagerApp_part-2_m13/data/network_response.dart';
// import 'package:http/http.dart';
//
// class NetworkCaller {
//   Future<NetworkResponse> postResponse(String url, {Map<String, dynamic>? body}) async {
//     try{
//       final Response response = await post(Uri.parse(url),
//           body: jsonEncode(body), headers: {"Content-type": "Application/json"});
//
//       if (response.statusCode == 200) {
//         return NetworkResponse(
//             isSuccess: true,
//             statusCode: 200,
//             jsonResponse: jsonDecode(response.body));
//       }else{
//         return NetworkResponse(
//             isSuccess: false,
//             statusCode: response.statusCode,
//             jsonResponse: jsonDecode(response.body));
//       }
//     }catch(e){
//       return NetworkResponse(isSuccess: false,errorMessage:e.toString());
//     }
//   }
// }
