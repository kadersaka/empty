import 'package:empty/views/settings/bloc/settings_bloc.dart';
import 'package:empty/views/settings/pages/help_center_page.dart';
import 'package:empty/views/settings/pages/settings_change_password_page.dart';
import 'package:empty/views/settings/pages/terms_of_use_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/tools/print.tool.dart';
import '../../widget/container/page_container_widget.dart';
import '../../widget/dialogs/custom_simple_dailog.dart';
import '../../widget/search/search_input_widget.dart';
import '../home/bloc/home_bloc.dart';
import 'widget/setting_item_simple_widget.dart';
import 'widget/setting_item_switcher_widget.dart';
import 'widget/setting_item_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole("ON SETTINGS PAGE");
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    logToConsole(BlocProvider.of<SettingsBloc>(rootContext));

    return PageContainerWidget(
        appBarTitle: "Settings",
        hasPadding: false,
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SearchInputWidget(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SettingItemSwitcherWidget(),
                  BlocListener<SettingsBloc, SettingsState>(
                    listener: (context, state) {
                      logToConsole(state);
                      logToConsole(state.updatePasswordFormState);
                      if (state.updatePasswordFormState ==
                          UpdatePasswordFormState.success) {
                        showDialog(
                          context: context,
                          builder: (context) => CustomSimpleDialog(
                            text: 'We have sent you an email confirmation.',
                            okText: "",
                            onOk: () {},
                          ),
                        );
                      }
                    },
                    child: SizedBox(
                      height: 20.0,
                    ),
                  ),
                  SettingItemWidget(
                    icon: Transform.rotate(
                        angle: -45, child: Icon(Icons.key_rounded)),
                    small: "Change Password",
                    text: "Password",
                    onTap: () {
                      Navigator.push(
                        rootContext,
                        MaterialPageRoute(
                            builder: (context) => BlocProvider.value(
                                value: BlocProvider.of<HomeBloc>(rootContext),
                                child: BlocProvider.value(
                                    value: BlocProvider.of<SettingsBloc>(
                                        rootContext),
                                    child: SettingsChangePasswordPage()))),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SettingItemSimpleWidget(
                      icon: Icon(Icons.warning_amber_rounded),
                      text: "Report a Problem",
                      onTap: () {
                        showDialog(
                          context: rootContext,
                          builder: (context) => CustomSimpleDialog(
                            text:
                                'Please check your email for further instruction',
                            okText: "",
                            onOk: () {},
                          ),
                        );
                      }),
                  SettingItemSimpleWidget(
                    icon: Icon(Icons.help_outline_rounded),
                    text: "Help Center",
                    onTap: () {
                      Navigator.push(
                        rootContext,
                        MaterialPageRoute(
                            builder: (context) => BlocProvider.value(
                                value: BlocProvider.of<HomeBloc>(rootContext),
                                child: BlocProvider.value(
                                    value: BlocProvider.of<SettingsBloc>(
                                        rootContext),
                                    child: HelpCenterPage()))),
                      );
                    },
                  ),
                  SettingItemSimpleWidget(
                    icon: Icon(Icons.menu_book),
                    text: "Terms of Use",
                    onTap: () {
                      Navigator.push(
                        rootContext,
                        MaterialPageRoute(
                            builder: (context) => BlocProvider.value(
                                value: BlocProvider.of<HomeBloc>(rootContext),
                                child: BlocProvider.value(
                                    value: BlocProvider.of<SettingsBloc>(
                                        rootContext),
                                    child: TermsOfUserPage()))),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
