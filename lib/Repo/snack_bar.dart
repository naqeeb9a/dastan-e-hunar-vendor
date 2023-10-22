import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

import '../Utils/utils.dart';

class SnackBarService {
  static void showSnackBar(BuildContext context,
      {required String title,
      required String message,
      required ContentType contentType}) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: contentType,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
