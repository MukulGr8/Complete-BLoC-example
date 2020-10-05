import 'dart:ui';

import 'package:flutter/material.dart';

/// Adds an useful localization method on a [BuildContext]
extension LocalizationExt on BuildContext {
  /// Localizes a string associated to a given [value]
  String localize(String value) {
    final code = AppLocalization.of(this)?.locale.languageCode ?? "en";
    final database = AppLocalization._localizedValues;

    if (database.containsKey(code)) {
      return database[code]?[value] ?? "-";
    } else {
      return database["en"]?[value] ?? "-";
    }
  }
}

/// This class is responsible of translating strings into certain
/// languages defined by the [Locale] passed in the constructor.
class AppLocalization {
  /// This app's locale
  final Locale locale;

  /// The [locale] is given by Flutter automatically at startup according with
  /// the settings of the device.
  const AppLocalization(this.locale);

  /// Returns an instance of [Localizations] according with the device's locale
  static AppLocalization? of(BuildContext context) =>
      Localizations.of<AppLocalization>(context, AppLocalization);

  static final Map<String, Map<String, String>> _localizedValues = {
    "en": {
      "title": "Login app",
      "login": "Login",
      "register": "Register",
      "welcome": "Welcome!",
      "invalid_field": "Invalid value",
      "error_login": "Error while logging in",
      "error_register": "Error while registering",
      "username": "Username",
      "password": "Password",
      "error_firebase": "Couldn't load Firebase",
    },
    "it": {
      "title": "Login app",
      "login": "Entra",
      "register": "Registrati",
      "welcome": "Benvenuto!",
      "invalid_field": "Valore non valido",
      "error_login": "Errore durante il login",
      "error_register": "Errore durante la registrazione",
      "username": "Nome utente",
      "password": "Password",
      "error_firebase": "Impossibile caricare Firebase",
    },
  };
}
