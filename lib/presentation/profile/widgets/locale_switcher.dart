import 'package:chat/application/core/locale_switcher/locale_switcher_cubit.dart';
import 'package:chat/presentation/core/enums/locale_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleSwitcher extends StatelessWidget {
  const LocaleSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleSwitcherCubit, LocaleSwitcherState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton(
            focusColor: Colors.transparent,
            alignment: Alignment.centerRight,
            selectedItemBuilder: (context) {
              return LocaleEnum.values.map((LocaleEnum value) {
                return Center(
                  child: Text(
                    value.description,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList();
            },
            icon: const Icon(
              Icons.expand_more_outlined,
              color: Colors.white,
            ),
            value:state.localeEnum,
            items: <DropdownMenuItem<LocaleEnum>>[
              DropdownMenuItem(
                value: LocaleEnum.RU,
                child: Text("Русский язык"),
              ),
              DropdownMenuItem(
                value: LocaleEnum.EN,
                child: Text("English language"),
              )
            ],
            onChanged: (localeEnum) {
              context.read<LocaleSwitcherCubit>().switchLocale(localeEnum!);
            },
          ),
        );
      },
    );
  }
}
