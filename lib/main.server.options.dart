// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:test_web/components/header.dart' as _header;
import 'package:test_web/pages/about.dart' as _about;
import 'package:test_web/pages/home.dart' as _home;
import 'package:test_web/pages/showcase.dart' as _showcase;
import 'package:test_web/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _about.About: ClientTarget<_about.About>('about'),
    _home.Home: ClientTarget<_home.Home>('home'),
    _showcase.Showcase: ClientTarget<_showcase.Showcase>('showcase'),
  },
  styles: () => [
    ..._header.Header.styles,
    ..._about.About.styles,
    ..._home.HomeState.styles,
    ..._showcase.ShowcaseState.styles,
    ..._app.App.styles,
  ],
);
