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
      flexDirection: .column,
      alignItems: .center,
      width: 100.percent,
    ),
    css('.hero-content').styles(
      display: .flex,
      flexDirection: .column,
      alignItems: .center,
      textAlign: .center,
      width: 100.percent,
      maxWidth: 800.px,
      padding: .symmetric(vertical: 4.rem),
    ),
    css('.hero-title').styles(
      fontSize: 4.rem,
      fontWeight: FontWeight.w800,
      color: Colors.white,
      margin: .zero,
    ),
    css('.hero-subtitle').styles(
      fontSize: 1.25.rem,
      color: textSecondary,
      margin: .symmetric(vertical: 2.rem),
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
        fontSize: 1.125.rem,
        fontWeight: FontWeight.w600,
        radius: BorderRadius.circular(32.px),
        textDecoration: const TextDecoration(line: TextDecorationLine.none),
        cursor: Cursor.pointer,
      ),
      css('&.btn-primary').styles(
        backgroundColor: primaryColor,
        color: Colors.white,
        border: Border.all(color: primaryColor, width: 1.px, style: BorderStyle.solid),
      ),
      css('&.btn-primary:hover').styles(
        backgroundColor: secondaryColor,
        border: Border.all(color: secondaryColor, width: 1.px, style: BorderStyle.solid),
      ),
      css('&.btn-secondary').styles(
        backgroundColor: Colors.transparent,
        color: Colors.white,
        border: Border.all(color: const Color('#ffffff40'), width: 1.px, style: BorderStyle.solid),
      ),
      css('&.btn-secondary:hover').styles(
        backgroundColor: bgGlassLight,
        border: Border.all(color: Colors.white, width: 1.px, style: BorderStyle.solid),
      ),
    ]),
    css('.features-grid').styles(
      display: .flex,
      justifyContent: .center,
      width: 100.percent,
      margin: .symmetric(vertical: 2.rem),
    ),
    css('.feature-card', [
      css('&').styles(
        width: 30.percent,
        margin: .symmetric(horizontal: 1.rem),
        padding: .all(2.rem),
        backgroundColor: bgSurface,
        border: Border.all(color: const Color('#ffffff15'), width: 1.px, style: BorderStyle.solid),
        radius: BorderRadius.circular(24.px),
      ),
      css('&:hover').styles(
        transform: Transform.translate(x: 0.px, y: (-8).px),
        border: Border.all(color: primaryColor, width: 1.px, style: BorderStyle.solid),
      ),
    ]),
    css('.feature-title').styles(
      fontSize: 1.5.rem,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      margin: .only(bottom: 1.rem),
    ),
    css('.feature-description').styles(
      fontSize: 1.rem,
      color: textSecondary,
      lineHeight: 1.5.em,
      margin: .zero,
    ),
  ];
}
