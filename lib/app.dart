import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'constants/theme.dart';
import 'pages/about.dart';
import 'pages/home.dart';
import 'pages/showcase.dart';

// The main component of your application.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    // Renders a <div class="main"> html element with children.
    return div(classes: 'main', [
      const Header(),
      Router(
        routes: [
          Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
          Route(path: '/counter', title: 'Counter App', builder: (context, state) => const Showcase()),
          Route(path: '/about', title: 'About', builder: (context, state) => const About()),
        ],
      ),
    ]);
  }

  // Defines the css styles for elements of this component.
  @css
  static List<StyleRule> get styles => [
    css('html, body').styles(
      minHeight: 100.vh,
      padding: .zero,
      margin: .zero,
      color: textPrimary,
      fontFamily: const FontFamily.list([FontFamily('Inter'), FontFamily('system-ui'), FontFamily('sans-serif')]),
      backgroundColor: bgBase,
    ),
    css('.main', [
      css('&').styles(
        display: .flex,
        minHeight: 100.vh,
        flexDirection: .column,
        alignItems: .center,
      ),
      css('section').styles(
        display: .flex,
        width: 100.percent,
        maxWidth: 1200.px,
        padding: .all(2.rem),
        boxSizing: .borderBox,
        flexDirection: .column,
        alignItems: .center,
        flex: Flex(grow: 1),
      ),
    ]),
  ];
}
