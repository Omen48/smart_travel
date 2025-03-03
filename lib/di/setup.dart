// final getIt = GetIt.instance;
//
// @InjectableInit()
// Future<void> configureDependencies() => getIt.init();
//
// @module
// abstract class LocalModule {
//   @preResolve
//   Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
// }
//
// @module
// abstract class RemoteModule {
//   DioLink get dioLink => DioLink(
//     Config.BASE_API_URL,
//     client: Dio(
//       BaseOptions(
//         receiveTimeout: const Duration(seconds: 10),
//         connectTimeout: const Duration(seconds: 10),
//         sendTimeout: const Duration(seconds: 5),
//       ),
//     ),
//   );
//
//   RestClient get restClient {
//     final dio = Dio(
//       BaseOptions(
//         contentType: "application/json",
//         headers: {"Accept": "application/json"},
//       ),
//     );
//
//     dio.interceptors.add(
//       PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseHeader: true,
//       ),
//     );
//
//     return RestClient(dio);
//   }
// }
