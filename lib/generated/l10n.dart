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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login to`
  String get title {
    return Intl.message('Login to', name: 'title', desc: '', args: []);
  }

  /// `Your Account`
  String get account {
    return Intl.message('Your Account', name: 'account', desc: '', args: []);
  }

  /// `Enter Email`
  String get enteremail {
    return Intl.message('Enter Email', name: 'enteremail', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Enter Password`
  String get enterpassword {
    return Intl.message(
      'Enter Password',
      name: 'enterpassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login Successfully`
  String get LoginSuccessfully {
    return Intl.message(
      'Login Successfully',
      name: 'LoginSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email or password`
  String get Invalidemailorpassword {
    return Intl.message(
      'Invalid email or password',
      name: 'Invalidemailorpassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signin {
    return Intl.message('Sign In', name: 'signin', desc: '', args: []);
  }

  /// `Sign Up`
  String get signup {
    return Intl.message('Sign Up', name: 'signup', desc: '', args: []);
  }

  /// `Not yet a member?`
  String get Notyetamember {
    return Intl.message(
      'Not yet a member?',
      name: 'Notyetamember',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your Password`
  String get ForgotyourPassword {
    return Intl.message(
      'Forgot your Password',
      name: 'ForgotyourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password recovery`
  String get Passwordrecovery {
    return Intl.message(
      'Password recovery',
      name: 'Passwordrecovery',
      desc: '',
      args: [],
    );
  }

  /// `Create New`
  String get CreateNew {
    return Intl.message('Create New', name: 'CreateNew', desc: '', args: []);
  }

  /// `Account`
  String get Account {
    return Intl.message('Account', name: 'Account', desc: '', args: []);
  }

  /// `Enter Name`
  String get entername {
    return Intl.message('Enter Name', name: 'entername', desc: '', args: []);
  }

  /// `Enter Mobile Number`
  String get EnterMobileNumber {
    return Intl.message(
      'Enter Mobile Number',
      name: 'EnterMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get MobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'MobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message('Category', name: 'category', desc: '', args: []);
  }

  /// `Sign up successfully`
  String get signupsuccessfully {
    return Intl.message(
      'Sign up successfully',
      name: 'signupsuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `weak-password`
  String get weakpassword {
    return Intl.message(
      'weak-password',
      name: 'weakpassword',
      desc: '',
      args: [],
    );
  }

  /// `email-already-in-use`
  String get emailalreadyinuse {
    return Intl.message(
      'email-already-in-use',
      name: 'emailalreadyinuse',
      desc: '',
      args: [],
    );
  }

  /// `sign-up-failed`
  String get signupfailed {
    return Intl.message(
      'sign-up-failed',
      name: 'signupfailed',
      desc: '',
      args: [],
    );
  }

  /// `By signing up, you agree to our Terms and Conditions`
  String get ourterms {
    return Intl.message(
      'By signing up, you agree to our Terms and Conditions',
      name: 'ourterms',
      desc: '',
      args: [],
    );
  }

  /// `Already a member? `
  String get Alreadymember {
    return Intl.message(
      'Already a member? ',
      name: 'Alreadymember',
      desc: '',
      args: [],
    );
  }

  /// `Crafts Portal`
  String get CraftsPortal {
    return Intl.message(
      'Crafts Portal',
      name: 'CraftsPortal',
      desc: '',
      args: [],
    );
  }

  /// `Let's Go`
  String get LetsGo {
    return Intl.message('Let\'s Go', name: 'LetsGo', desc: '', args: []);
  }

  /// `Verification Code`
  String get VerificationCode {
    return Intl.message(
      'Verification Code',
      name: 'VerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `We Sent Verification Code to the number `
  String get sentcode {
    return Intl.message(
      'We Sent Verification Code to the number ',
      name: 'sentcode',
      desc: '',
      args: [],
    );
  }

  /// `Verified Successfully`
  String get VerifiedSuccessfully {
    return Intl.message(
      'Verified Successfully',
      name: 'VerifiedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get Verify {
    return Intl.message('Verify', name: 'Verify', desc: '', args: []);
  }

  /// `Resend a new Code`
  String get ResendCode {
    return Intl.message(
      'Resend a new Code',
      name: 'ResendCode',
      desc: '',
      args: [],
    );
  }

  /// `Available in`
  String get Availablein {
    return Intl.message(
      'Available in',
      name: 'Availablein',
      desc: '',
      args: [],
    );
  }

  /// `Plumber`
  String get Plumber {
    return Intl.message('Plumber', name: 'Plumber', desc: '', args: []);
  }

  /// `Reviews`
  String get Reviews {
    return Intl.message('Reviews', name: 'Reviews', desc: '', args: []);
  }

  /// `Mohamed`
  String get Mohamed {
    return Intl.message('Mohamed', name: 'Mohamed', desc: '', args: []);
  }

  /// `It is a professional plumber and has done all the plumbing related work in our home. I highly recommend it`
  String get Describtion {
    return Intl.message(
      'It is a professional plumber and has done all the plumbing related work in our home. I highly recommend it',
      name: 'Describtion',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed`
  String get Ahmed {
    return Intl.message('Ahmed', name: 'Ahmed', desc: '', args: []);
  }

  /// `He did a really great job, but the price is a little high`
  String get AhmedDescribtion {
    return Intl.message(
      'He did a really great job, but the price is a little high',
      name: 'AhmedDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `10 years experience in maintenance of everything related to plumbing and holds a certificate of appreciation for my great accomplishments`
  String get service {
    return Intl.message(
      '10 years experience in maintenance of everything related to plumbing and holds a certificate of appreciation for my great accomplishments',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `St 100 Damietta`
  String get locate {
    return Intl.message('St 100 Damietta', name: 'locate', desc: '', args: []);
  }

  /// `Online`
  String get online {
    return Intl.message('Online', name: 'online', desc: '', args: []);
  }

  /// `Follow`
  String get Follow {
    return Intl.message('Follow', name: 'Follow', desc: '', args: []);
  }

  /// `Service Provider`
  String get ServiceProvider {
    return Intl.message(
      'Service Provider',
      name: 'ServiceProvider',
      desc: '',
      args: [],
    );
  }

  /// `My Services`
  String get MyServices {
    return Intl.message('My Services', name: 'MyServices', desc: '', args: []);
  }

  /// `Installing water drums`
  String get Installingdrums {
    return Intl.message(
      'Installing water drums',
      name: 'Installingdrums',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance of water pipes`
  String get Maintenancepipes {
    return Intl.message(
      'Maintenance of water pipes',
      name: 'Maintenancepipes',
      desc: '',
      args: [],
    );
  }

  /// `Installing water pumps`
  String get Installingpumps {
    return Intl.message(
      'Installing water pumps',
      name: 'Installingpumps',
      desc: '',
      args: [],
    );
  }

  /// `Installing water Taps`
  String get InstallingTaps {
    return Intl.message(
      'Installing water Taps',
      name: 'InstallingTaps',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get Chat {
    return Intl.message('Chat', name: 'Chat', desc: '', args: []);
  }

  /// `Order Now`
  String get Order {
    return Intl.message('Order Now', name: 'Order', desc: '', args: []);
  }

  /// `Service Categories`
  String get ServiceCategories {
    return Intl.message(
      'Service Categories',
      name: 'ServiceCategories',
      desc: '',
      args: [],
    );
  }

  /// `Carpenter`
  String get Carpenter {
    return Intl.message('Carpenter', name: 'Carpenter', desc: '', args: []);
  }

  /// `Electrician`
  String get Electrician {
    return Intl.message('Electrician', name: 'Electrician', desc: '', args: []);
  }

  /// `Khaled`
  String get khaled {
    return Intl.message('Khaled', name: 'khaled', desc: '', args: []);
  }

  /// `Search`
  String get Search {
    return Intl.message('Search', name: 'Search', desc: '', args: []);
  }

  /// `Information`
  String get Information {
    return Intl.message('Information', name: 'Information', desc: '', args: []);
  }

  /// `Location`
  String get Location {
    return Intl.message('Location', name: 'Location', desc: '', args: []);
  }

  /// `Cairo`
  String get Cairo {
    return Intl.message('Cairo', name: 'Cairo', desc: '', args: []);
  }

  /// `Order history`
  String get Orderhistory {
    return Intl.message(
      'Order history',
      name: 'Orderhistory',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `English`
  String get English {
    return Intl.message('English', name: 'English', desc: '', args: []);
  }

  /// `Orders`
  String get orders {
    return Intl.message('Orders', name: 'orders', desc: '', args: []);
  }

  /// `Comments`
  String get Comments {
    return Intl.message('Comments', name: 'Comments', desc: '', args: []);
  }

  /// `Edit Account`
  String get EditAccount {
    return Intl.message(
      'Edit Account',
      name: 'EditAccount',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get FirstName {
    return Intl.message('First Name', name: 'FirstName', desc: '', args: []);
  }

  /// `Last Name`
  String get LastName {
    return Intl.message('Last Name', name: 'LastName', desc: '', args: []);
  }

  /// `Fondamenta Zitelle 86 VeniceItaly, 30133`
  String get FondamentaVeniceItaly30133 {
    return Intl.message(
      'Fondamenta Zitelle 86 VeniceItaly, 30133',
      name: 'FondamentaVeniceItaly30133',
      desc: '',
      args: [],
    );
  }

  /// `Add social profile`
  String get addsocialprofile {
    return Intl.message(
      'Add social profile',
      name: 'addsocialprofile',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get Notes {
    return Intl.message('Notes', name: 'Notes', desc: '', args: []);
  }

  /// `Hi I am`
  String get HiIam {
    return Intl.message('Hi I am', name: 'HiIam', desc: '', args: []);
  }

  /// `a plumbing professional for 10 years and ready to fulfill all requests`
  String get aplumbing {
    return Intl.message(
      'a plumbing professional for 10 years and ready to fulfill all requests',
      name: 'aplumbing',
      desc: '',
      args: [],
    );
  }

  /// `What's on your mind?`
  String get Whaton {
    return Intl.message(
      'What\'s on your mind?',
      name: 'Whaton',
      desc: '',
      args: [],
    );
  }

  /// `Type a comment`
  String get Typecomment {
    return Intl.message(
      'Type a comment',
      name: 'Typecomment',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get MyAccount {
    return Intl.message('My Account', name: 'MyAccount', desc: '', args: []);
  }

  /// `Edit`
  String get Edit {
    return Intl.message('Edit', name: 'Edit', desc: '', args: []);
  }

  /// `Italy`
  String get Italy {
    return Intl.message('Italy', name: 'Italy', desc: '', args: []);
  }

  /// `a plumbing professional for 10 years and ready to fulfill all requests`
  String get professional {
    return Intl.message(
      'a plumbing professional for 10 years and ready to fulfill all requests',
      name: 'professional',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get Payment {
    return Intl.message('Payment', name: 'Payment', desc: '', args: []);
  }

  /// `Visa card`
  String get Visacard {
    return Intl.message('Visa card', name: 'Visacard', desc: '', args: []);
  }

  /// `Add new card`
  String get Addnewcard {
    return Intl.message('Add new card', name: 'Addnewcard', desc: '', args: []);
  }

  /// `Messages`
  String get Messages {
    return Intl.message('Messages', name: 'Messages', desc: '', args: []);
  }

  /// `Type a message`
  String get Typemessage {
    return Intl.message(
      'Type a message',
      name: 'Typemessage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get switchLanguage {
    return Intl.message('English', name: 'switchLanguage', desc: '', args: []);
  }

  /// `Change Theme`
  String get ChangeTheme {
    return Intl.message(
      'Change Theme',
      name: 'ChangeTheme',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
