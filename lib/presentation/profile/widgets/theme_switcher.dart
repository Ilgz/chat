import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat/application/core/theme_switcher/theme_switcher_cubit.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Light',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
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
        Text('Dark',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
      ],
    );
  }
}
