import 'dart:io';

class FileNotFoundException implements Exception {
  final String path;

  FileNotFoundException(this.path);
}

///
/// Can throw [FileNotFoundException] if `path` does not exist
///
void printFile(String path) {
  File file = File(path);

  try {
    String data = file.readAsStringSync();
    print(data);
  } on Exception catch (e) {
    print(e.toString());
    // throw e;
    //throw FileNotFoundException(path);
    rethrow;
    print("after rethrow");
  }
}

void main() {
  printFile('custom_exceptions1.dart');
}
