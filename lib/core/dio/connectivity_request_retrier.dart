import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  late StreamSubscription streamSubscription;

  scheduleRequestRetry(DioException error, ErrorInterceptorHandler handler) {
    streamSubscription = connectivity.onConnectivityChanged.listen(
          (connectivityResult) async {
        if (connectivityResult.first != ConnectivityResult.none) {
          streamSubscription.cancel();
          try {
            var response = await dio.fetch(error.requestOptions);
            handler.resolve(response);
          } on DioException catch (retryError) {
            handler.next(retryError);
          }
        }
      },
    );
  }

  void dispose() {
    streamSubscription.cancel();
  }
}
