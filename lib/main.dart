import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/constants/fonts.dart';
import 'package:my_capstone_project/constants/routes.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/firebase_options.dart';
import 'package:my_capstone_project/view/navigation.dart';
import 'package:my_capstone_project/view/sign_in.dart';
import 'package:my_capstone_project/view/splash_screen.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';

import 'constants/style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

final firebaseinitializerProvider = FutureProvider<FirebaseApp>((ref) async {
  return await Firebase.initializeApp();
});

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialize = ref.watch(firebaseinitializerProvider);
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: deepGreen,
          fontFamily: fontFamily,
          primaryColor: Color(0xff4BBE83),
        ),
        home: initialize.when(
          data: (data) {
            return AuthChecker();
          },
          loading: () => SplashScreen(),
          error: (_, __) => Text("error"),
        ),
        routes: {
          loginRoute: (context) => SignIn(),
          homePageRoute: (context) => Navigation(),
        });
  }
}

//await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

//   runApp(
//     ProviderScope(
//       child: MaterialApp(
//           theme: ThemeData(
//               fontFamily: 'Product Sans', primaryColor: Color(0xff4BBE83)),
//           home: StartPage(),
//           routes: {
//             loginRoute: (context) => SignIn(),
//             homePageRoute: (context) => App_Bar(),
//           }),
//     ),
//   );
// }

// class StartPage extends StatelessWidget {
//   StartPage({Key? key}) : super(key: key);
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: _initialization,
//         builder: (context, snapshot) {
//           switch (snapshot.connectionState) {
//             case ConnectionState.done:
//               print('authchecker');
//               return AuthChecker();

//             default:
//               print('test2');
//               return const CircularProgressIndicator(); //fix this
//           }
//         });
//   }
// }

class AuthChecker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authState = ref.watch(authStateProvider);
    return _authState.when(
      data: (value) {
        if (value != null) {
          return Navigation();
        } else {
          return SignIn();
        }
      },
      error: (_, __) {
        return SplashScreen();
      }, //TODO,
      loading: () {
        return SplashScreen();
      },
    );
  }
}
