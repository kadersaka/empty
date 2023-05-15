import 'package:flutter/material.dart';

displayDialogMessage(BuildContext context, String title, String message, String? okText, Function onOk) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        var text = okText ?? "OK";
        return Column(
          children: [
            Expanded(
                child: AlertDialog(
              title: Text(title),
              content: Text(message),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onOk();
                    },
                    child: Text(text))
              ],
            ))
          ],
        );
      });
}

_displayErrorMessage(BuildContext context, String message) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            Expanded(
                child: AlertDialog(
              //TODO use customized widget
              title: const Text("Erreur"),
              content: Text(message),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"))
              ],
            ))
          ],
        );
      });
}
