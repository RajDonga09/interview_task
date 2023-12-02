import 'package:flutter/cupertino.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:injectable/injectable.dart';

@injectable
class HttpInterceptor implements InterceptorContract {
  final unauthorized = 401;
  Map<int, DateTime> requestMap = {};
  static const debug = int.fromEnvironment('DEBUG');

  HttpInterceptor();

  @override
  Future<RequestData> interceptRequest({RequestData? data}) async {
    if (debug > 0) {
      debugPrint('***************************');
      debugPrint('REQUEST DEBUG');
      debugPrint('URL: ${data!.url}');
      if (debug == 2) debugPrint('HEADERS: ${data.headers}');
      if (debug == 2) debugPrint('PAYLOAD: ${data.body}');
      debugPrint('***************************');
      requestMap[_requestId(data.url)] = DateTime.now();
    }

    return data!;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    if (debug > 0) {
      debugPrint('###########################');
      debugPrint('RESPONSE DEBUG');
      debugPrint('URL: ${data.url!}');
      debugPrint('STATUS: ${data.statusCode}');
      if (debug == 2) debugPrint('PAYLOAD: ${data.body!}');
      final id = _requestId(data.url);
      debugPrint(
          'DURATION: ${requestMap[_requestId(data.url)] != null ? ('${_requestDuration(requestMap[_requestId(data.url)]!, DateTime.now())}ms') : ('No request info found')}');
      requestMap.remove(id);
      debugPrint('###########################');
    }

    if (data.statusCode == unauthorized) {
      debugPrint('############ Session Expire ###############');
    }

    return data;
  }

  int _requestId(String? url) {
    return url.hashCode;
  }

  int _requestDuration(DateTime init, DateTime end) {
    return end.difference(init).inMilliseconds;
  }
}
