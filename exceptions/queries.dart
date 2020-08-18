void main() {
  final parsed = parseAnything('2340.23r32', 0.0);

  print(parsed.runtimeType);
  print(parsed);
}

/// Can throw [FormatException]
double parseAnything(var value, double defaultValue) {
  // return double.parse(
  //   value,
  //   (String param) => defaultValue,
  // );

  try {
    return double.parse(value);
  } catch (e) {
    print(e.runtimeType);
    return defaultValue;
  }

  // return double.parse(value);

  // return double.tryParse(value) ?? defaultValue;

  // if (double.tryParse(value) != null) {
  //   return double.tryParse(value);
  // } else {
  //   return defaultValue;
  // }
}

Either<Exception, double> parseStringToDouble(String source) {
  try {
    double parsedValue = double.parse(source);
    return Either.right(parsedValue);
  } catch (e) {
    print(e.runtimeType);
    return Either.left(e);
  }
}

class Either<L, R> {
  final L left;
  final R right;

  Either.right(this.right) : left = null;

  Either.left(this.left) : right = null;
}

class LoginException {}

class LoginEmailNotFoundException extends LoginException {}

class LoginPasswordInvalidException extends LoginException {}

class NoInternetException extends LoginException {}

class ServerUnavailableException extends LoginException {}

Either<LoginException, String> login(
  String email,
  String password,
) {
  //TODO
}
