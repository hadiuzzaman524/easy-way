import 'package:easy_way/gen/assets.gen.dart';
import 'package:easy_way/presentation/cubits/app_theme/app_theme_cubit.dart';
import 'package:easy_way/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingAppBar extends StatelessWidget {
  const FloatingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 16,
      right: 16,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Theme.of(context).cardColor.withOpacity(0.95),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Assets.images.easyway.image(
                height: 45,
                width: 45,
              ),
              AppText.headline2('Easy Way'),
              const Spacer(),
              IconButton(
                icon: Icon(
                  Theme.of(context).brightness == Brightness.dark
                      ? Icons.light_mode
                      : Icons.dark_mode,
                ),
                onPressed: () {
                  context.read<AppThemeCubit>().changeThemeMode();
                },
              ),
              DropdownButton<String>(
                underline: const SizedBox(),
                icon: const Icon(Icons.language),
                value: 'en',
                items: const [
                  DropdownMenuItem(value: 'en', child: Text('EN')),
                  DropdownMenuItem(value: 'bn', child: Text('BN')),
                ],
                onChanged: (value) {
                  // TODO: Implement language change logic
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
