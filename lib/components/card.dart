import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SimpleCard extends StatelessComponent {
  const SimpleCard({required this.title, required this.message});

  final String title;
  final String message;

  @override
  Component build(BuildContext context) {
    return div(classes: 'p-6 mt-16 max-w-sm mx-auto bg-white rounded-xl shadow-lg flex items-center space-x-4', [
      div(classes: 'shrink-0', [
        img(classes: 'h-12 w-16', src: 'https://placehold.co/600x400', alt: '$title Logo'),
      ]),
      div([
        div(classes: 'text-xl font-medium text-black', [.text(title)]),
        p(classes: 'text-slate-500', [.text(message)]),
      ]),
    ]);
  }
}
