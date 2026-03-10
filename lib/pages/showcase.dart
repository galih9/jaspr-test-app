import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:test_web/components/card.dart';

import '../constants/theme.dart';

@client
class Showcase extends StatefulComponent {
  const Showcase({super.key});

  @override
  State<Showcase> createState() => ShowcaseState();
}

class ShowcaseState extends State<Showcase> {
  int _counter = 0;

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'showcase-page',
      [
        div(classes: 'flex justify-between items-center gap-4', [
          button(
            onClick: () {
              setState(() {
                _counter--;
              });
            },
            [.text('-')],
          ),
          span(classes: 'num-container', [.text('$_counter')]),
          button(
            onClick: () {
              setState(() {
                _counter++;
              });
            },
            [.text('+')],
          ),
        ]),
        SimpleCard(title: "Hello", message: "message"),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.showcase-page').styles(
      display: .flex,
      flexDirection: .column,
      justifyContent: .center,
      alignItems: .center,
    ),
    css('.counter-container').styles(
      display: .flex,
      padding: .all(2.rem),
      border: Border.all(color: const Color('#ffffff20'), width: 1.px, style: BorderStyle.solid),
      radius: BorderRadius.circular(16.px),
      justifyContent: .spaceBetween,
      alignItems: .center,
      backgroundColor: bgSurface,
    ),
    css('button', [
      css('&').styles(
        padding: .symmetric(horizontal: 1.5.rem, vertical: 0.75.rem),
        border: Border.unset,
        radius: BorderRadius.circular(8.px),
        cursor: Cursor.pointer,
        color: Colors.white,
        fontSize: 1.25.rem,
        fontWeight: FontWeight.bold,
        backgroundColor: primaryColor,
      ),
      css('&:hover').styles(
        backgroundColor: secondaryColor,
      ),
    ]),
    css('span').styles(
      color: textPrimary,
      fontSize: 2.rem,
      fontWeight: FontWeight.bold,
    ),
  ];
}
