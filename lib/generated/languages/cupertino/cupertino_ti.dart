// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

class CupertinoLocalizationTi extends GlobalCupertinoLocalizations {
  /// Create an instance of the translation bundle for English.
  ///
  /// For details on the meaning of the arguments, see [GlobalCupertinoLocalizations].
  const CupertinoLocalizationTi({
    String localeName = 'ti',
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
  String get alertDialogLabel => 'ማዕረ';

  @override
  String get anteMeridiemAbbreviation => 'AM';

  @override
  String get copyButtonLabel => 'ጽሑፍ';

  @override
  String get cutButtonLabel => 'ዕንጭ';

  @override
  String get datePickerDateOrderString => 'mdy';

  @override
  String get datePickerDateTimeOrderString => 'date_time_dayPeriod';

  @override
  String? get datePickerHourSemanticsLabelFew => null;

  @override
  String? get datePickerHourSemanticsLabelMany => null;

  @override
  String? get datePickerHourSemanticsLabelOne => r'$hour ሰዓት';

  @override
  String get datePickerHourSemanticsLabelOther => r'$hour ሰዓት';

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => null;

  @override
  String? get datePickerMinuteSemanticsLabelMany => null;

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 ደቂቃ';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute ደቂቃዎች';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get modalBarrierDismissLabel => 'ነፍሳት';

  @override
  String get pasteButtonLabel => 'አጽዕ';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get searchTextFieldPlaceholderLabel => 'ፍለጋ';

  @override
  String get selectAllButtonLabel => 'ሁሉም ይምረጡ';

  @override
  String get tabSemanticsLabelRaw => r'ታብ $tabIndex ክልተ $tabCount';

  @override
  String? get timerPickerHourLabelFew => null;

  @override
  String? get timerPickerHourLabelMany => null;

  @override
  String? get timerPickerHourLabelOne => 'ሰዓት';

  @override
  String get timerPickerHourLabelOther => 'ሰዓቶች';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => null;

  @override
  String? get timerPickerMinuteLabelMany => null;

  @override
  String? get timerPickerMinuteLabelOne => 'ደቂቃ';

  @override
  String get timerPickerMinuteLabelOther => 'ደቂቃ';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => null;

  @override
  String? get timerPickerSecondLabelMany => null;

  @override
  String? get timerPickerSecondLabelOne => 'ሰከንድ';

  @override
  String get timerPickerSecondLabelOther => 'ሰከንዶች';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'ዛሬ';

  @override
  String get noSpellCheckReplacementsLabel => 'ምንም ምናልባት ኣይተመልክቶም';

  @override
  String get lookUpButtonLabel => 'ኣገልግሎ';

  @override
  String get menuDismissLabel => 'መንቀሳቀስ ኣይተገኝን';

  @override
  String get searchWebButtonLabel => 'ድረገጽ ፈልግ';

  @override
  String get shareButtonLabel => 'ኣገልግሎ...';

  @override
  // TODO: implement clearButtonLabel
  String get clearButtonLabel => 'CLEAR Ti';
}
