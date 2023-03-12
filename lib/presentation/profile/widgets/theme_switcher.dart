import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat/application/core/theme_switcher/theme_switcher_cubit.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppLocale.light.getString(context),style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
        BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
          builder: (context, state) {
            return Switch(
              value: state.isDark,
              onChanged: (value) {
                context.read<ThemeSwitcherCubit>().switchTheme();
              },
            );
          },
        ),
        Text(AppLocale.dark.getString(context),style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
      ],
    );
  }
}
