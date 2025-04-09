import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/app/app.dart';
import 'package:my_app/app/view/screens/splash/splash_screen.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('App', () {
    testWidgets('renders SplashScreen', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(SplashScreen), findsOneWidget);
      await tester.pump(const Duration(seconds: 3));
    });
  });
}
