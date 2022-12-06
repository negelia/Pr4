part of 'click_cubit.dart';

@immutable
abstract class ClickState {}

class ClickInitial extends ClickState {}

class ClickError extends ClickState {
  final String message;

  ClickError(this.message);
}

class Click extends ClickState {
  int count;
  String theme;

  Click(this.count, this.theme);
}

class SwitchState {
  bool isDarkThemeOff = false;
  ThemeData theme = ThemeData(
      brightness: Brightness.dark,
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
      textTheme:
          const TextTheme(headline4: TextStyle(color: Colors.amberAccent)),
      switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(Colors.amber),
          trackColor: MaterialStateProperty.all(Colors.amber)));
  SwitchState({required this.isDarkThemeOff}) {
    if (isDarkThemeOff) {
      theme = ThemeData(
          brightness: Brightness.light,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.greenAccent),
          textTheme: const TextTheme(
              headline4: TextStyle(color: Color.fromARGB(255, 146, 224, 187))),
          switchTheme: SwitchThemeData(
              thumbColor: MaterialStateProperty.all(Colors.greenAccent),
              trackColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 200, 241, 221))));
    } else {
      theme = ThemeData(
          brightness: Brightness.dark,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.amber),
          textTheme:
              const TextTheme(headline4: TextStyle(color: Colors.amberAccent)),
          switchTheme: SwitchThemeData(
              thumbColor: MaterialStateProperty.all(Colors.amber),
              trackColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 244, 226, 162))));
    }
  }

  SwitchState copyWith({bool? changeState}) {
    return SwitchState(isDarkThemeOff: changeState ?? isDarkThemeOff);
  }
}
