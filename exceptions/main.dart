import 'dart:io';

const CORRECT_FILE_NAME = "file.txt";
const INCORRECT_FILE_NAME = "incorrect-file.txt";

void main() {
  String fileData = readFile1(CORRECT_FILE_NAME);
  print(fileData);
}

String readFile1(String path) {
  final file = File(path);
  print('absolute path: ${file.absolute.path}');

  try {
    final data = file.readAsStringSync();
    return data;
  } on FileSystemException catch (e) {
    print(e);
    return null;
  } on IOException catch (e) {
    print(e);
    return null;
  } on Exception catch (e) {
    print(e);
    return null;
  }
}

String readFile2(String path) {
  final file = File(path);
  print('absolute path: ${file.absolute.path}');

  final data = file.readAsStringSync();
  return data;
}
