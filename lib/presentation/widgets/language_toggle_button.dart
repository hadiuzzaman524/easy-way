import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/l10n/l10n.dart';
import 'package:easy_way/presentation/cubits/app_theme/app_theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageToggleButton extends StatefulWidget {
  const LanguageToggleButton({super.key});

  @override
  State<LanguageToggleButton> createState() => _LanguageToggleButtonState();
}

class _LanguageToggleButtonState extends State<LanguageToggleButton> {
  bool isFirst = true;
  late ValueNotifier<bool> controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (isFirst) {
      final isBangla = context.watch<AppThemeCubit>().state.isBangla;
      controller = ValueNotifier<bool>(isBangla);
      isFirst = false;
    }
    controller.addListener(() {
      context.read<AppThemeCubit>().changeLanguage(controller.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return AdvancedSwitch(
      activeColor: context.colors.buttonColor,
      activeChild: Text(l10n.languageMode),
      inactiveChild: Text(l10n.languageMode),
      width: 70,
      controller: controller,
    );
  }
}
