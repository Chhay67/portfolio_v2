

class ServerException  implements Exception {

  const ServerException({ this.statusCode,required this.message});

  final int? statusCode;
  final String message;



}
