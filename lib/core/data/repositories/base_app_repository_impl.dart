import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:seller/core/constants/app_config.dart';
import 'package:seller/core/data/datasources/api/base_api_data_source.dart';
import 'package:seller/core/domain/repositories/base_app_repository.dart';
import 'package:seller/core/errors/exceptions.dart';
import 'package:seller/infrastructure/network/network_info.dart';

class BaseAppRepositoryImpl implements BaseAppRepository {
  final BaseApiDataSource _remote;
  final NetworkInfo _networkInfo;

  const BaseAppRepositoryImpl({
    required BaseApiDataSource remote,
    required NetworkInfo networkInfo,
  })  : _remote = remote,
        _networkInfo = networkInfo;

  @override
  Future<void> updateProfileInfo({required Map<String, dynamic> params}) async {
    try {
      if (!await _networkInfo.isConnected) {
        throw GeneralException(errorInternetMessage);
      }

      await _remote.updateProfileUer(data: params, imagePath: params["file"]);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> isConnectedToNetwork() async {
    return await _networkInfo.isConnected;
  }
}
