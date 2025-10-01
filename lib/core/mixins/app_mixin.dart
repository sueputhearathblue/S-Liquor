import 'package:seller/core/constants/app_config.dart';
import 'package:seller/core/domain/repositories/base_app_repository.dart';

import 'package:seller/core/enums/enums.dart';
import 'package:seller/core/errors/exceptions.dart';
import 'package:seller/core/utils/helpers.dart';
import 'package:seller/injection_container.dart';

mixin AppMixin {
  final _appRepo = getIt<BaseAppRepository>();

  // Future<bool> isValidApiSession() async {
  //   try {
  //     final response = await _appRepo.isValidApiSession();
  //     return response.fold(
  //       (failure) => throw GeneralException(failure.message),
  //       (items) => true,
  //     );
  //   } on GeneralException catch (e) {
  //     Helpers.showMessage(msg: e.message, status: MessageStatus.errors);
  //     return false;
  //   } on Exception {
  //     Helpers.showMessage(msg: errorMessage, status: MessageStatus.errors);
  //     return false;
  //   }
  // }

  Future<bool> isConnectedToNetwork() async {
    return _appRepo.isConnectedToNetwork();
  }
}
