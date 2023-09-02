// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_example/components/atoms/custom_card.dart';
import 'package:widgetbook_example/components/atoms/custom_text_field.dart';

final directories = <WidgetbookNode>[
  WidgetbookFolder(
    name: 'components',
    children: [
      WidgetbookFolder(
        name: 'atoms',
        children: [
          WidgetbookComponent(
            name: 'CustomTextField',
            useCases: [
              WidgetbookUseCase(
                name: 'Default Style',
                builder: (context) => defaultCustomTextField(context),
              ),
              WidgetbookUseCase(
                name: 'With Hint Text',
                builder: (context) => hintTextCustomTextField(context),
              ),
            ],
          ),
          WidgetbookComponent(
            name: 'CustomCard',
            useCases: [
              WidgetbookUseCase(
                name: 'Default Style',
                builder: (context) => defaultCustomCard(context),
              ),
              WidgetbookUseCase(
                name: 'With Custom Background Color',
                builder: (context) => customBackgroundCustomCard(context),
              ),
              WidgetbookUseCase(
                name: 'Yellow Background Color',
                builder: (context) =>
                    anotherCustomBackgroundCustomCard(context),
              ),
              WidgetbookUseCase(
                name: 'With different colors',
                builder: (context) => greenCardUseCase(context),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
