import 'package:get/get.dart';
import '../utils/api/api_client.dart';
import '../utils/app_constants/app_constants.dart';

class CustomerDetailRepo extends GetxService {
  final ApiClient apiClient;
  CustomerDetailRepo({required this.apiClient});

  Future<Response> getCustomerDetails() async {
    return await apiClient.getData(
        AppConstants.CUSTOMER_URI + AppConstants.USER_ID,
        apiClient.mainHeaders);
  }
}
