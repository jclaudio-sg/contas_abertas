abstract class Failure {}

class AppFailure implements Failure {
  final String? message;
  AppFailure({this.message});
}