import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'about-section',
      [
        h1(classes: 'about-title', [.text('Resources & Community')]),
        p(classes: 'about-subtitle', [.text('Everything you need to master Jaspr.')]),
        div(classes: 'resources-grid', [
          _buildResourceCard(
            '📖 Documentation',
            'Official guides and API references to get you started quickly.',
            'https://docs.jaspr.site',
          ),
          _buildResourceCard(
            '💬 Community Discord',
            'Join the Jaspr community, ask questions, and share your projects.',
            'https://discord.gg/XGXrGEk4c6',
          ),
          _buildResourceCard(
            '📦 Ecosystem',
            'Discover official packages like jaspr_router and community plugins on pub.dev.',
            'https://pub.dev/packages?q=topic%3Ajaspr',
          ),
          _buildResourceCard(
            '💙 Support Jaspr',
            'Star the repository on Github and contribute to the framework.',
            'https://github.com/schultek/jaspr',
          ),
        ]),
      ],
    );
  }

  Component _buildResourceCard(String title, String description, String link) {
    return a(href: link, target: Target.blank, classes: 'resource-card', [
      h3(classes: 'resource-title', [.text(title)]),
      p(classes: 'resource-desc', [.text(description)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.about-section').styles(
      display: .flex,
      flexDirection: .column,
      alignItems: .center,
      width: 100.percent,
      padding: .symmetric(vertical: 2.rem),
    ),
    css('.about-title').styles(
      fontSize: 3.rem,
      fontWeight: FontWeight.w800,
      color: Colors.white,
      margin: .zero,
      textAlign: .center,
    ),
    css('.about-subtitle').styles(
      fontSize: 1.25.rem,
      color: textSecondary,
      margin: .symmetric(vertical: 2.rem),
      textAlign: .center,
    ),
    css('.resources-grid').styles(
      display: .flex,
      flexWrap: FlexWrap.wrap,
      justifyContent: .center,
      width: 100.percent,
      maxWidth: 900.px,
    ),
    css('.resource-card', [
      css('&').styles(
        width: 40.percent,
        minWidth: 280.px,
        margin: .all(1.rem),
        padding: .all(2.rem),
        backgroundColor: bgSurface,
        border: Border.all(color: const Color('#ffffff15'), width: 1.px, style: BorderStyle.solid),
        radius: BorderRadius.circular(24.px),
        textDecoration: const TextDecoration(line: TextDecorationLine.none),
      ),
      css('&:hover').styles(
        backgroundColor: bgGlassLight,
        border: Border.all(color: primaryColor, width: 1.px, style: BorderStyle.solid),
      ),
    ]),
    css('.resource-title').styles(
      fontSize: 1.3.rem,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      margin: .only(bottom: 1.rem),
    ),
    css('.resource-desc').styles(
      fontSize: 1.rem,
      color: textSecondary,
      lineHeight: 1.5.em,
      margin: .zero,
    ),
  ];
}
