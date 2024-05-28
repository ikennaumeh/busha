import 'package:flutter_test/flutter_test.dart';
import 'package:busha_test/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PortfolioViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
