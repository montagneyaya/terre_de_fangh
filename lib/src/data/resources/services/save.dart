import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:terre_de_fangh/src/lang/fr_FR/system.dart';

class Save {
  Save(this.directory) {
    fileName = directory + i.toString();
  }

  String directory = '';
  String fileName = '';
  int i = 0;
  List<String> fileList = [];

  Future<String> get _localPath async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<Directory> get _localDirectory async {
    final String path = await _localPath;
    return Directory('$path/$directory');
  }

  Future<File> get _localFile async {
    final String path = await _localPath;
    return File('$path/$directory/$fileName');
  }

  Future<File> writeNewJson(Map<String, dynamic> jsonSave) async {
    final Directory directoryWrite = await _localDirectory;
    final File file = await _localFile;
    directoryWrite.exists().then((directoryTest) {
      if (directoryTest == false) {
        file.create(recursive: true).then((_) {
          String jsonString = jsonEncode(jsonSave);
          return file.writeAsString(jsonString);
        });
      }
      if (directoryTest == true) {
        file.exists().then((fileTest) {
          if (fileTest == false) {
            file.create(recursive: true).then((_) {
              String jsonString = jsonEncode(jsonSave);
              return file.writeAsString(jsonString);
            });
          }
          if (fileTest == true) {
            i++;
            fileName = directory + i.toString();
            writeNewJson(jsonSave);
          }
        });
      }
    });
    return file;
  }

  Future<List<String>> readAllFile() async {
    final Directory directoryRead = await _localDirectory;
    if (directoryRead.existsSync() == false) {
      return [];
    } else {
      await for (FileSystemEntity entity in directoryRead.list()) {
        fileList.add(entity.path);
      }
      return fileList;
    }
  }
}

class Load {
  Load(this.fileName);

  String fileName;

  Future<File> get _localFile async {
    return File(fileName);
  }

  Future<String> readJson() async {
    try {
      final file = await _localFile;
      final jsonString = await file.readAsString();
      return jsonString;
    } catch (e) {
      return LangSystem.fileError;
    }
  }
}
