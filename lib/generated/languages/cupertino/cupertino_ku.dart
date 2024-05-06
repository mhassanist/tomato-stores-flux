// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

class CupertinoLocalizationKu extends GlobalCupertinoLocalizations {
  /// Create an instance of the translation bundle for English.
  ///
  /// For details on the meaning of the arguments, see [GlobalCupertinoLocalizations].
  const CupertinoLocalizationKu({
    String localeName = 'ku',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat dayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat singleDigitHourFormat,
    required intl.DateFormat singleDigitMinuteFormat,
    required intl.DateFormat doubleDigitMinuteFormat,
    required intl.DateFormat singleDigitSecondFormat,
    required intl.NumberFormat decimalFormat,
  }) : super(
          localeName: localeName,
          fullYearFormat: fullYearFormat,
          dayFormat: dayFormat,
          mediumDateFormat: mediumDateFormat,
          singleDigitHourFormat: singleDigitHourFormat,
          singleDigitMinuteFormat: singleDigitMinuteFormat,
          doubleDigitMinuteFormat: doubleDigitMinuteFormat,
          singleDigitSecondFormat: singleDigitSecondFormat,
          decimalFormat: decimalFormat,
        );

  String get firstPageTooltip => '';

  String get lastPageTooltip => '';

  @override
  String get alertDialogLabel => 'ئاگاداری';

  @override
  String get anteMeridiemAbbreviation => 'AM';

  @override
  String get copyButtonLabel => 'لەنووسکردن';

  @override
  String get cutButtonLabel => 'بڕۆ';

  @override
  String get datePickerDateOrderString => 'mdy';

  @override
  String get datePickerDateTimeOrderString => 'date_time_dayPeriod';

  @override
  String? get datePickerHourSemanticsLabelFew => null;

  @override
  String? get datePickerHourSemanticsLabelMany => null;

  @override
  String? get datePickerHourSemanticsLabelOne => r'$hour کاتژمێر';

  @override
  String get datePickerHourSemanticsLabelOther => r'$hour کاتژمێر';

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => null;

  @override
  String? get datePickerMinuteSemanticsLabelMany => null;

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 خولی';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute خوولی';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get modalBarrierDismissLabel => 'بیسکرە';

  @override
  String get pasteButtonLabel => 'لک بکە';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get searchTextFieldPlaceholderLabel => 'گەڕان';

  @override
  String get selectAllButtonLabel => 'هەموو هەڵبژێرە';

  @override
  String get tabSemanticsLabelRaw => r'تاب $tabIndex لە $tabCount';

  @override
  String? get timerPickerHourLabelFew => null;

  @override
  String? get timerPickerHourLabelMany => null;

  @override
  String? get timerPickerHourLabelOne => 'کات';

  @override
  String get timerPickerHourLabelOther => 'کات';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => null;

  @override
  String? get timerPickerMinuteLabelMany => null;

  @override
  String? get timerPickerMinuteLabelOne => 'خولی';

  @override
  String get timerPickerMinuteLabelOther => 'خولی';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => null;

  @override
  String? get timerPickerSecondLabelMany => null;

  @override
  String? get timerPickerSecondLabelOne => 'چرکە';

  @override
  String get timerPickerSecondLabelOther => 'چرکە';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'ئەمڕوو';

  @override
  String get noSpellCheckReplacementsLabel => 'هیچگونه ده‌ستکردی نەدروست دانرا';

  @override
  String get lookUpButtonLabel => 'Lêgerîn';

  @override
  String get menuDismissLabel => 'Menuyê rakirin';

  @override
  String get searchWebButtonLabel => 'Lêgerîna Weşanê';

  @override
  String get shareButtonLabel => 'Pêşîniya kirin...';

  @override
  // TODO: implement clearButtonLabel
  String get clearButtonLabel => 'CLEAR';
}
