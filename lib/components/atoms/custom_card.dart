import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// lib/components/custom_card.dart
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final double borderRadius;

  const CustomCard({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Default Style',
  type: CustomCard,
  designLink:
      'https://www.figma.com/file/O4MU7Oq7OFn84SZUI71W7f/Neue-EH-Kasse-%2F-POS-Client?type=design&node-id=1550-119581&mode=design&t=A65U9hJxcIEvFguB-11',
)
CustomCard defaultCustomCard(BuildContext context) {
  return const CustomCard(
    child: Text('This is a custom card!!'),
  );
}

@widgetbook.UseCase(
  name: 'With Custom Background Color',
  type: CustomCard,
  designLink:
      'https://www.figma.com/file/O4MU7Oq7OFn84SZUI71W7f/Neue-EH-Kasse-%2F-POS-Client?type=design&node-id=1550-119581&mode=design&t=A65U9hJxcIEvFguB-11',
)
CustomCard customBackgroundCustomCard(BuildContext context) {
  return CustomCard(
    backgroundColor: context.knobs.color(
      label: 'Background color',
      initialValue: Colors.blue,
    ),
    child: const Text('This is a custom card with a custom background color'),
  );
}

@widgetbook.UseCase(
  name: 'Yellow Background Color',
  type: CustomCard,
)
CustomCard anotherCustomBackgroundCustomCard(BuildContext context) {
  return CustomCard(
    backgroundColor:
        context.knobs.boolean(label: 'Is active', initialValue: true)
            ? Colors.yellow.shade600
            : Colors.yellow.shade100,
    child: Text(
      context.knobs.string(
        label: 'Card content',
        initialValue: 'Lorem ipsum dolor sit amet',
        description: 'The text that is displayed on the card',
        maxLines: 3,
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'With different colors',
  type: CustomCard,
)
Widget greenCardUseCase(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(42.0),
    child: Column(
      children: [
        Text(
          'This is a column with a vertical direction of up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        CustomCard(
          backgroundColor: Colors.green,
          child:
              Text('This is a green custom card with a custom background color'),
        ),
        CustomCard(
          backgroundColor: Colors.blue,
          child:
              Text('This is a blue custom card with a custom background color'),
        ),
        CustomCard(
          backgroundColor: Colors.red,
          child: Text('This is a red custom card with a custom background color'),
        ),
        CustomCard(
          backgroundColor: Colors.yellow,
          child:
              Text('This is a yellow custom card with a custom background color'),
        ),
      ],
    ),
  );
}
