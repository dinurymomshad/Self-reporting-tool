import 'package:http/http.dart';
import '../services/world_o_meter_api.dart';

class Repository {
  ApiService _apiService;
  Repository() {
    this._apiService = ApiService();
  }
  Future<Response> getCovidBdData(String param) {
    try {
      return _apiService.getCovidData(param);
    } catch (e) {
      print("Error :${e.toString()}");
      throw Exception();
    }
  }

  Future<Response> getCovidAllData(String param) {
    return _apiService.getCovidData(param);
  }
}
