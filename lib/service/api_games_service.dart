import 'package:airdrop_flutter/service/api_service.dart';
import 'package:dio/dio.dart';

class GameService {
  // 参与一元购
  Future<Response> JoinWbpactivity(String activityId, String amount) async {
    try {
      Map<String, dynamic> queryParams = {
        'activityId': activityId,
        'amount': amount
      };
      final response = await dioService.getRequest('wbpactivity/join',
          queryParams: queryParams);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // 查询参与的奖券
  Future<Response> QueryProof(String activityId) async {
    try {
      Map<String, dynamic> queryParams = {
        'activityId': activityId,
      };
      final response = await dioService.getRequest('wbpactivity/queryproofs',
          queryParams: queryParams);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> Pickup(String activityId) async {
    try {
      Map<String, dynamic> queryParams = {
        'activityId': activityId,
      };
      final response = await dioService.getRequest('wbpactivity/pickup',
          queryParams: queryParams);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> MyUncheckList() async {
    try {
      final response =
          await dioService.getRequest('wbpactivity/my_uncheck_list');
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
