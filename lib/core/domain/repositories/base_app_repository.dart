abstract class BaseAppRepository {
  Future<void> updateProfileInfo({required Map<String, dynamic> params});
  Future<bool> isConnectedToNetwork();
}
