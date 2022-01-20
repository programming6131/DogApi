// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:dog_app/models/dogs_model.dart';
// import 'package:dog_app/services/rest_client.dart';

// class ApiService {
//  static RestClient restClient = RestClient();
//  static Future<Dog> fetchDog() async {
//    try{
//     var response = await restClient.dio!.get(restClient.baseUrlApiV1);
//     var dogssMap = jsonDecode(response.data) ;
      
//           print("This is your dogs $dogssMap");
//       return Dog.fromJson(dogssMap);
//    } on DioError catch (e) {
//       throw ("${e.response?.data}");
//     }
  
//   }
// }
