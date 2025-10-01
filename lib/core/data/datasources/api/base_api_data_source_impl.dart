import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:seller/core/data/datasources/api/api_client.dart';
import 'package:seller/core/data/datasources/api/base_api_data_source.dart';
import 'package:seller/infrastructure/network/network_info.dart';

class BaseApiDataSourceImpl implements BaseApiDataSource {
  final ApiClient apiClient;

  BaseApiDataSourceImpl({required NetworkInfo network})
      : apiClient = ApiClient(client: http.Client(), networkInfo: network);

  Future<String> getParams({Map? params}) async {
    try {
      // final auth = getAuth();
      final Map param = {
        "app_id": "com.clearviewerp.salesforce",
        // "token": auth?.token ?? "",
        // "username": auth?.email ?? "",
        // "source": Platform.isIOS ? "ios" : "android",
      };

      var body = param;

      if (params != null) {
        body = {...param, ...params};
      }

      return json.encode(body);
    } catch (e) {
      return "";
    }
  }

  // @override
  // Future<List<SalespersonSchedule>> createSchedules(Map data) async {
  //   try {
  //     final response = await apiClient.post(
  //       'v2/add-schedule',
  //       body: await getParams(params: data),
  //     );

  //     final List<SalespersonSchedule> records = [];
  //     for (var item in response["records"]) {
  //       records.add(SalespersonScheduleExtension.fromMap(item));
  //     }

  //     return records;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  @override
  Future<Map<String, dynamic>> updateProfileUer({
    required Map<String, dynamic> data,
    required XFile? imagePath,
  }) async {
    try {
      return await apiClient.postUploadFiles(
        'v2/update-profile-user',
        body: await getParams(params: data),
        files:
            (imagePath != null && imagePath.path.isNotEmpty) ? [imagePath] : [],
      );
    } catch (e) {
      rethrow;
    }
  }
}
