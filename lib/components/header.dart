import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../constants/theme.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    var activePath = context.url;

    return header([
      nav([
        for (var route in [
          (label: 'Home', path: '/'),
          (label: 'Counter', path: '/counter'),
          (label: 'About', path: '/about'),
        ])
          div(classes: activePath == route.path ? 'active' : null, [
            Link(to: route.path, child: .text(route.label)),
          ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('header', [
      css('&').styles(
        display: .flex,
        position: .sticky(top: 0.px),
        zIndex: const ZIndex(50),
        padding: .symmetric(horizontal: 2.rem, vertical: 1.5.rem),
        justifyContent: .center,
      ),
      css('nav', [
        css('&').styles(
          display: .flex,
          height: 3.5.rem,
          border: Border.all(color: const Color('#ffffff15'), width: 1.px, style: BorderStyle.solid),
          radius: BorderRadius.circular(32.px),
          overflow: .clip,
          justifyContent: .spaceBetween,
          backgroundColor: bgGlass,
        ),
        css('a', [
          css('&').styles(
            display: .flex,
            height: 100.percent,
            padding: .symmetric(horizontal: 2.rem),
            alignItems: .center,
            color: textSecondary,
            fontWeight: FontWeight.w600,
            textDecoration: const TextDecoration(line: TextDecorationLine.none),
          ),
          css('&:hover').styles(
            color: Colors.white,
            backgroundColor: bgGlassLight,
          ),
        ]),
        css('div.active', [
          css('&').styles(position: Position.relative()),
          css('& a').styles(color: Colors.white),
          css('&::after').styles(
            content: "''",
            display: .block,
            position: Position.absolute(bottom: 0.px, left: 1.5.rem, right: 1.5.rem),
            height: 3.px,
            radius: BorderRadius.circular(2.px),
            backgroundColor: primaryColor,
          ),
        ]),
      ]),
    ]),
  ];
}
