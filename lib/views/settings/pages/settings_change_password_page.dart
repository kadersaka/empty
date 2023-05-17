import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/tools/print.tool.dart';
import '../../../widget/container/page_container_widget.dart';
import '../../../widget/input/default_text_input._widget.dart';
import '../../../widget/text/text_header_two_widget.dart';
import '../../../widget/text/underline_text_button_widget.dart';
import '../../home/bloc/home_bloc.dart';
import '../bloc/settings_bloc.dart';

class SettingsChangePasswordPage extends StatelessWidget {
  const SettingsChangePasswordPage({super.key});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole("ON SETTINGS CHANGE PASSWORD PAGE");
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));

    return PageContainerWidget(
        appBarTitle: "Password",
        hasPadding: true,
        hasHeaderPadding: false,
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      TextHeaderTwoWidget(
                        text: 'Change Password',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DefaultTextInputWidget(
                    placeholder: 'Old Password',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DefaultTextInputWidget(
                    placeholder: 'New Password',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DefaultTextInputWidget(
                    placeholder: 'Confirm New Password',
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UnderlineTextButton(text: 'Forgot Password'),
                      UnderlineTextButton(
                        text: 'Save',
                        onTap: () {
                          logToConsole(
                              BlocProvider.of<SettingsBloc>(rootContext));

                          BlocProvider.of<SettingsBloc>(rootContext).add(
                              SettingsUpdatePasswordEvent(
                                  UpdatePasswordFormState.submitted));
                          Navigator.pop(rootContext);
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
