import 'dart:async';

import 'dart:math';

class Validation {
  static const UNIX_NEWLINE = '\n';
  static const WINDOWS_NEWLINE = '\r\n';
  static const CARRIAGE_RETURN = '\r';
  static const String EMAIL_PATTERN = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  textCharsValidator({String? fieldName, int? maxChars}) {
    return StreamTransformer<String, String>.fromHandlers(handleData: (title, sink) {
      sink.add(title);
      if (getCharCount(title) > maxChars!) {
        sink.addError('$fieldName too long');
        return;
      }
    });
  }

  textWordValidator({String? fieldName, int? maxWords}) {
    return StreamTransformer<String, String>.fromHandlers(handleData: (title, sink) {
      sink.add(title);
      if (getWordCount(title) > maxWords!) {
        sink.addError('$fieldName too long');
        return;
      }
    });
  }

  passWordValidator({String? fieldName, }) {
    return StreamTransformer<String, String>.fromHandlers(handleData: (title, sink) {
      sink.add(title);
      if (title.length < 6) {
        sink.addError('$fieldName too short');
        return;
      }
    });
  }
  emailValidator({String? fieldName,}) {
    return StreamTransformer<String, String>.fromHandlers(handleData: (title, sink) {
      sink.add(title);
      if (!RegExp(EMAIL_PATTERN).hasMatch(title)) {
        sink.addError('$fieldName not valid');
        return;
      }
    });
  }

  bool isImage(String? filePath) {
    if (filePath == null) {
      return false;
    }
    String path = filePath.toLowerCase();
    return !path.endsWith("mp4") && !path.endsWith("mov") && !path.endsWith("m3u8");
  }

  int getCharCount(String text) {
    return text.length;
  }

  int getWordCount(String text) {
    if (text.isEmpty) {
      return 0;
    }
    var workingText = text;
    workingText = workingText.replaceAll(UNIX_NEWLINE, ' ').replaceAll('.', ' ').replaceAll(',', ' ').replaceAll(':', ' ').replaceAll(';', ' ').replaceAll('?', ' ');
    var words = workingText.split(' ');
    words.removeWhere((word) => word.length == 0 || word == " ");
    return min(words.length, text.length);
  }
}
