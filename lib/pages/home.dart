import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../constants/theme.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Component build(BuildContext context) {
    return section(
      classes: 'hero-section',
      [
        div(classes: 'hero-content', [
          h1(classes: 'hero-title', [.text('Build Stunning Web Apps')]),
          p(classes: 'hero-subtitle', [
            .text(
              'Jaspr provides server-side rendering, hydration, and pristine Dart-based CSS styling out of the box.',
            ),
          ]),
          div(classes: 'hero-actions', [
            Link(to: '/counter', classes: 'btn btn-primary', child: .text('Explore Showcase')),
            Link(to: '/about', classes: 'btn btn-secondary', child: .text('Learn More')),
          ]),
        ]),
        div(classes: 'features-grid', [
          _buildFeatureCard('⚡️ Fast', 'Server-rendered HTML for incredible performance and SEO.'),
          _buildFeatureCard('🎨 Beautiful', 'Create modern custom designs using type-safe Dart CSS.'),
          _buildFeatureCard('🔄 Reactive', 'Rich client-side interactivity using Stateful components.'),
        ]),
      ],
    );
  }

  Component _buildFeatureCard(String title, String description) {
    return div(classes: 'feature-card', [
      h3(classes: 'feature-title', [.text(title)]),
      p(classes: 'feature-description', [.text(description)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.hero-section').styles(
      display: .flex,
      width: 100.percent,
      flexDirection: .column,
      alignItems: .center,
    ),
    css('.hero-content').styles(
      display: .flex,
      width: 100.percent,
      maxWidth: 800.px,
      padding: .symmetric(vertical: 4.rem),
      flexDirection: .column,
      alignItems: .center,
      textAlign: .center,
    ),
    css('.hero-title').styles(
      margin: .zero,
      color: Colors.white,
      fontSize: 4.rem,
      fontWeight: FontWeight.w800,
    ),
    css('.hero-subtitle').styles(
      margin: .symmetric(vertical: 2.rem),
      color: textSecondary,
      fontSize: 1.25.rem,
      lineHeight: 1.6.em,
    ),
    css('.hero-actions').styles(
      display: .flex,
      justifyContent: .center,
    ),
    css('.btn', [
      css('&').styles(
        padding: .symmetric(horizontal: 2.rem, vertical: 1.rem),
        margin: .symmetric(horizontal: 0.5.rem),
        radius: BorderRadius.circular(32.px),
        cursor: Cursor.pointer,
        fontSize: 1.125.rem,
        fontWeight: FontWeight.w600,
        textDecoration: const TextDecoration(line: TextDecorationLine.none),
      ),
      css('&.btn-primary').styles(
        border: Border.all(color: primaryColor, width: 1.px, style: BorderStyle.solid),
        color: Colors.white,
        backgroundColor: primaryColor,
      ),
      css('&.btn-primary:hover').styles(
        border: Border.all(color: secondaryColor, width: 1.px, style: BorderStyle.solid),
        backgroundColor: secondaryColor,
      ),
      css('&.btn-secondary').styles(
        border: Border.all(color: const Color('#ffffff40'), width: 1.px, style: BorderStyle.solid),
        color: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      css('&.btn-secondary:hover').styles(
        border: Border.all(color: Colors.white, width: 1.px, style: BorderStyle.solid),
        backgroundColor: bgGlassLight,
      ),
    ]),
    css('.features-grid').styles(
      display: .flex,
      width: 100.percent,
      margin: .symmetric(vertical: 2.rem),
      justifyContent: .center,
    ),
    css('.feature-card', [
      css('&').styles(
        width: 30.percent,
        padding: .all(2.rem),
        margin: .symmetric(horizontal: 1.rem),
        border: Border.all(color: const Color('#ffffff15'), width: 1.px, style: BorderStyle.solid),
        radius: BorderRadius.circular(24.px),
        backgroundColor: bgSurface,
      ),
      css('&:hover').styles(
        border: Border.all(color: primaryColor, width: 1.px, style: BorderStyle.solid),
        transform: Transform.translate(x: 0.px, y: (-8).px),
      ),
    ]),
    css('.feature-title').styles(
      margin: .only(bottom: 1.rem),
      color: Colors.white,
      fontSize: 1.5.rem,
      fontWeight: FontWeight.w700,
    ),
    css('.feature-description').styles(
      margin: .zero,
      color: textSecondary,
      fontSize: 1.rem,
      lineHeight: 1.5.em,
    ),
  ];
}
