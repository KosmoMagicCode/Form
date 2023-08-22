// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Register Page--------------------`
  String get RegisterPage {
    return Intl.message(
      'Register Page--------------------',
      name: 'RegisterPage',
      desc: '',
      args: [],
    );
  }

  /// `Register Page`
  String get register_page_header {
    return Intl.message(
      'Register Page',
      name: 'register_page_header',
      desc: '',
      args: [],
    );
  }

  /// `Full Name *`
  String get register_page_filed_name_label_text {
    return Intl.message(
      'Full Name *',
      name: 'register_page_filed_name_label_text',
      desc: '',
      args: [],
    );
  }

  /// `Please state your full name`
  String get register_page_filed_name_helper_text {
    return Intl.message(
      'Please state your full name',
      name: 'register_page_filed_name_helper_text',
      desc: '',
      args: [],
    );
  }

  /// `The field can't be empty`
  String get register_page_filed_name_error_text_empty {
    return Intl.message(
      'The field can\'t be empty',
      name: 'register_page_filed_name_error_text_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter alphabetical characters.`
  String get register_page_filed_name_error_text_symbol {
    return Intl.message(
      'Please enter alphabetical characters.',
      name: 'register_page_filed_name_error_text_symbol',
      desc: '',
      args: [],
    );
  }

  /// `Phone number *`
  String get phone_label_text {
    return Intl.message(
      'Phone number *',
      name: 'phone_label_text',
      desc: '',
      args: [],
    );
  }

  /// `(###) ###-##-##`
  String get phone_helper_text {
    return Intl.message(
      '(###) ###-##-##',
      name: 'phone_helper_text',
      desc: '',
      args: [],
    );
  }

  /// `The field can't be empty`
  String get phone_error_text_empty {
    return Intl.message(
      'The field can\'t be empty',
      name: 'phone_error_text_empty',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must be entered as (###) ###-##-##`
  String get phone_error_text_symbol {
    return Intl.message(
      'Phone number must be entered as (###) ###-##-##',
      name: 'phone_error_text_symbol',
      desc: '',
      args: [],
    );
  }

  /// `Email adress *`
  String get email_label_text {
    return Intl.message(
      'Email adress *',
      name: 'email_label_text',
      desc: '',
      args: [],
    );
  }

  /// `The field can't be empty`
  String get email_error_text_empty {
    return Intl.message(
      'The field can\'t be empty',
      name: 'email_error_text_empty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get email_error_not_et {
    return Intl.message(
      'Invalid email',
      name: 'email_error_not_et',
      desc: '',
      args: [],
    );
  }

  /// `Life story`
  String get life_story {
    return Intl.message(
      'Life story',
      name: 'life_story',
      desc: '',
      args: [],
    );
  }

  /// `Password *`
  String get password_label_text {
    return Intl.message(
      'Password *',
      name: 'password_label_text',
      desc: '',
      args: [],
    );
  }

  /// `Enter the password`
  String get password_hint_text {
    return Intl.message(
      'Enter the password',
      name: 'password_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Confitm password *`
  String get confirm_password_label_text {
    return Intl.message(
      'Confitm password *',
      name: 'confirm_password_label_text',
      desc: '',
      args: [],
    );
  }

  /// `Confirm the password`
  String get confirm_password_hint_text {
    return Intl.message(
      'Confirm the password',
      name: 'confirm_password_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `The field Password can't be empty.`
  String get pass_error_is_empty {
    return Intl.message(
      'The field Password can\'t be empty.',
      name: 'pass_error_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `The password must be at least 8 characters long.`
  String get pass_error_lenght {
    return Intl.message(
      'The password must be at least 8 characters long.',
      name: 'pass_error_lenght',
      desc: '',
      args: [],
    );
  }

  /// `Passwords don't match, please try again.`
  String get pass_error_dont_match {
    return Intl.message(
      'Passwords don\'t match, please try again.',
      name: 'pass_error_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `Form is not valid! Please review and correct`
  String get message_error_form {
    return Intl.message(
      'Form is not valid! Please review and correct',
      name: 'message_error_form',
      desc: '',
      args: [],
    );
  }

  /// `Submit form`
  String get register_page_button_text {
    return Intl.message(
      'Submit form',
      name: 'register_page_button_text',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
