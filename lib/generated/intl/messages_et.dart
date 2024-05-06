// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a et locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'et';

  static String m0(x) => "Aktiivne ${x}";

  static String m1(attribute) => "Iga ${attribute}";

  static String m2(point) => "Teie saadaval olevad punktid: ${point}";

  static String m3(state) => "Bluetooth-adapter on ${state}";

  static String m4(currency) => "Vahetas valuuta ${currency} vastu";

  static String m5(priceRate, pointRate) =>
      "${priceRate} = ${pointRate} punkti";

  static String m6(country) => "${country} riiki ei toetata";

  static String m7(currency) => "${currency} ei ole toetatud";

  static String m8(day) => "${day} päeva tagasi";

  static String m9(total) => "~${total} km";

  static String m10(timeLeft) => "Lõppeb ${timeLeft} pärast";

  static String m11(captcha) => "Sisestage ${captcha} kinnitamiseks:";

  static String m12(message) => "Viga: ${message}";

  static String m13(time) => "Aegub ${time} pärast";

  static String m14(total) => ">${total} km";

  static String m15(hour) => "${hour} tundi tagasi";

  static String m16(message) =>
      "Rakendusega ilmnes probleem andmete pärimisel, võtke administraatoriga ühendust probleemi lahendamiseks: ${message}";

  static String m17(currency, amount) =>
      "Selle makse kasutamiseks on maksimumsumma ${currency} ${amount}";

  static String m18(size) => "Maksimaalne faili suurus: ${size} MB";

  static String m19(currency, amount) =>
      "Selle makse kasutamiseks on miinimumsumma ${currency} ${amount}";

  static String m20(minute) => "${minute} minutit tagasi";

  static String m21(month) => "${month} kuud tagasi";

  static String m22(store) => "Rohkem ${store} poest";

  static String m23(number) => "tuleb osta rühmadena ${number}";

  static String m24(itemCount) => "${itemCount} toodet";

  static String m25(price) => "Valikute kogusumma: ${price}";

  static String m26(amount) => "Maksa ${amount}";

  static String m27(total) => "Kogus: ${total}";

  static String m28(percent) => "Müügil ${percent}%";

  static String m29(second) => "${second} sekundit tagasi";

  static String m30(totalCartQuantity) =>
      "Ostukorv, ${totalCartQuantity} toodet";

  static String m31(numberOfUnitsSold) => "Müüdud: ${numberOfUnitsSold}";

  static String m32(fieldName) => "${fieldName} väli on kohustuslik";

  static String m33(total) => "${total} toodet";

  static String m34(maxPointDiscount, maxPriceDiscount) =>
      "Kasutage maksimaalselt ${maxPointDiscount} punkti, et saada ${maxPriceDiscount} allahindlust selle tellimuse eest!";

  static String m35(date) => "Kehtiv kuni ${date}";

  static String m36(message) => "Hoiatus: ${message}";

  static String m37(defaultCurrency) =>
      "Hetkel valitud valuuta pole rahakoti funktsiooni jaoks saadaval, palun muutke see väärtuseks ${defaultCurrency}";

  static String m38(length) => "Leidsime ${length} toodet";

  static String m39(week) => "Nädal ${week}";

  static String m40(name) => "Tere tulemast, ${name}";

  static String m41(year) => "${year} aastat tagasi";

  static String m42(total) => "Olete määranud tellimusele #${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Meist"),
        "account": MessageLookupByLibrary.simpleMessage("Konto"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Konto kustutamine eemaldab isiklikud andmed meie andmebaasist."),
        "accountIsPendingApproval":
            MessageLookupByLibrary.simpleMessage("Konto ootab heakskiitu."),
        "accountNumber": MessageLookupByLibrary.simpleMessage("Konto number"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Konto seadistamine"),
        "active": MessageLookupByLibrary.simpleMessage("Aktiivne"),
        "activeFor": m0,
        "activeLongAgo": MessageLookupByLibrary.simpleMessage("Aktiivne ammu"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Aktiivne praegu"),
        "addAName": MessageLookupByLibrary.simpleMessage("Lisa nimi"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Lisa uus postitus"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Lisa räsimärk"),
        "addAnAttr": MessageLookupByLibrary.simpleMessage("Lisa atribuut"),
        "addListing": MessageLookupByLibrary.simpleMessage("Lisa kirje"),
        "addNew": MessageLookupByLibrary.simpleMessage("Lisa uus"),
        "addNewBlog": MessageLookupByLibrary.simpleMessage("Lisa uus blogi"),
        "addNewPost": MessageLookupByLibrary.simpleMessage("Loo uus postitus"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Lisa toode"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Lisa ostukorvi"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "Maksimaalne kogus on ületatud"),
        "addToCartSucessfully": MessageLookupByLibrary.simpleMessage(
            "on edukalt lisatud teie ostukorvi"),
        "addToOrder": MessageLookupByLibrary.simpleMessage("Lisa tellimusse"),
        "added": MessageLookupByLibrary.simpleMessage("Lisatud"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Lisatud edukalt"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Lisage oma pilt"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Lisainfo"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Lisateenused"),
        "address": MessageLookupByLibrary.simpleMessage("Aadress"),
        "adults": MessageLookupByLibrary.simpleMessage("Täiskasvanud"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Pärastlõuna"),
        "agree": MessageLookupByLibrary.simpleMessage("Nõustu"),
        "agreeWithPrivacy": MessageLookupByLibrary.simpleMessage(
            "Privaatsuse ja tingimustega nõustumine"),
        "albanian": MessageLookupByLibrary.simpleMessage("Albaania"),
        "all": MessageLookupByLibrary.simpleMessage("Kõik"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Kõik kaubamärgid"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Kõik tellimused"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Viimased müügid"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Kõik tooted"),
        "allow": MessageLookupByLibrary.simpleMessage("Luba"),
        "allowCameraAccess":
            MessageLookupByLibrary.simpleMessage("Luba kaamerale juurdepääs?"),
        "almostSoldOut":
            MessageLookupByLibrary.simpleMessage("Peaaegu välja müüdud"),
        "amount": MessageLookupByLibrary.simpleMessage("Summa"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Välimus"),
        "apply": MessageLookupByLibrary.simpleMessage("Rakenda"),
        "approve": MessageLookupByLibrary.simpleMessage("Kinnita"),
        "approved": MessageLookupByLibrary.simpleMessage("Kinnitatud"),
        "arabic": MessageLookupByLibrary.simpleMessage("Araabia"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Kas olete kindel?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Kas olete kindel, et soovite oma konto kustutada?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Määratud"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Vähemalt 3 tähemärki..."),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Atribuut on juba olemas"),
        "attributes": MessageLookupByLibrary.simpleMessage("Atribuudid"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Avastati heliüksus(ed). Kas soovite lisada helipleierisse?"),
        "availability": MessageLookupByLibrary.simpleMessage("Saadavus"),
        "availablePoints": m2,
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Keskmine hinnang"),
        "back": MessageLookupByLibrary.simpleMessage("Tagasi"),
        "backOrder":
            MessageLookupByLibrary.simpleMessage("Tagasilükatud tellimus"),
        "backToShop": MessageLookupByLibrary.simpleMessage("Tagasi poodi"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Tagasi rahakoti juurde"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Varustuse kollektsioonid"),
        "balance": MessageLookupByLibrary.simpleMessage("Saldo"),
        "bank": MessageLookupByLibrary.simpleMessage("Pank"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Banneri loendi tüüp"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Banneri tüüp"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("Banneri Youtube URL"),
        "basicInformation": MessageLookupByLibrary.simpleMessage("Põhiteave"),
        "becomeAVendor": MessageLookupByLibrary.simpleMessage("Saage müüjaks"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengali"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Arveldusaadress"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "Bluetooth pole sisse lülitatud"),
        "bleState": m3,
        "blog": MessageLookupByLibrary.simpleMessage("Blogi"),
        "booked": MessageLookupByLibrary.simpleMessage("Juba broneeritud"),
        "booking": MessageLookupByLibrary.simpleMessage("Broneerimine"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Broneering tühistatud"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Kinnitatud"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Midagi on valesti. Palun proovige hiljem uuesti."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Broneerimise ajalugu"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Broneeri kohe"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Broneerimine õnnestus"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Broneerimise kokkuvõte"),
        "bookingUnavailable":
            MessageLookupByLibrary.simpleMessage("Broneering pole saadaval"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bosnia"),
        "brand": MessageLookupByLibrary.simpleMessage("Bränd"),
        "brazil": MessageLookupByLibrary.simpleMessage("Portugali"),
        "burmese": MessageLookupByLibrary.simpleMessage("Birma"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Osta kohe"),
        "by": MessageLookupByLibrary.simpleMessage("autoriõigus"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Kategooria järgi"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Hinna järgi"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Registreerudes nõustute meiega "),
        "byTag": MessageLookupByLibrary.simpleMessage("Märgi järgi"),
        "call": MessageLookupByLibrary.simpleMessage("Helista"),
        "callTo": MessageLookupByLibrary.simpleMessage("Helistage numbrile"),
        "callToVendor":
            MessageLookupByLibrary.simpleMessage("Helistage poe omanikule"),
        "canNotCreateOrder":
            MessageLookupByLibrary.simpleMessage("Tellimust ei saa luua"),
        "canNotCreateUser":
            MessageLookupByLibrary.simpleMessage("Kasutajat ei saa luua."),
        "canNotGetPayments":
            MessageLookupByLibrary.simpleMessage("Makseviise ei saa hankida"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Saatmisvõimalusi ei saa hankida"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Tokeni teavet ei saa hankida."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Rakenduse käivitamine ebaõnnestus, veenduge, et config.dart seadistustes oleksid õiged"),
        "canNotLoadThisLink":
            MessageLookupByLibrary.simpleMessage("Seda linki ei saa laadida"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Vabandust, seda videot ei saa esitada."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Tellimust ei saa veebisaidile salvestada"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Kasutaja teavet ei saa uuendada."),
        "cancel": MessageLookupByLibrary.simpleMessage("Tühista"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Seda tellimuse ID-d ei leitud"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Möödunud kuupäeva ei saa valida"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("Kaardi omanik"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Kaardi number"),
        "cart": MessageLookupByLibrary.simpleMessage("Ostukorv"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Korvi allahindlus"),
        "cash": MessageLookupByLibrary.simpleMessage("Sularaha"),
        "categories": MessageLookupByLibrary.simpleMessage("Kategooriad"),
        "category": MessageLookupByLibrary.simpleMessage("Kategooria"),
        "change": MessageLookupByLibrary.simpleMessage("Muuda"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Muuda keelt"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Muuda printerit"),
        "changedCurrencyTo": m4,
        "chat": MessageLookupByLibrary.simpleMessage("Vestlus"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Juturobot GPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("Sõnumid"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Vestlus Facebook Messengeri kaudu"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Vestlus WhatsAppi kaudu"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("Vestlusrakendus"),
        "chatWithStoreOwner":
            MessageLookupByLibrary.simpleMessage("Vestlus poe omanikuga"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Kontrollige oma e-posti kinnitamise linki"),
        "checking": MessageLookupByLibrary.simpleMessage("Kontrollimine..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Maksmine"),
        "chinese": MessageLookupByLibrary.simpleMessage("Hiina"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Lihtsustatud hiina"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Traditsiooniline hiina"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Valige kategooria"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Vali galeriist"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Vali serverist"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Valige plaan"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Valige personal"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Valige tüüp"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Valige oma maksemeetod"),
        "city": MessageLookupByLibrary.simpleMessage("Linn"),
        "cityIsRequired":
            MessageLookupByLibrary.simpleMessage("Linna väli on nõutud"),
        "clear": MessageLookupByLibrary.simpleMessage("Tühista"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Tühjenda ostukorv"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Kustuta vestlus"),
        "close": MessageLookupByLibrary.simpleMessage("Sulge"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Suletud nüüd"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage("COD lisatasu"),
        "color": MessageLookupByLibrary.simpleMessage("Värv"),
        "comment": MessageLookupByLibrary.simpleMessage("Kommentaar"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Palun kirjutage oma kommentaar"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Kommentaar on edukalt lisatud, palun oodake, kuni see heaks kiidetakse"),
        "complete": MessageLookupByLibrary.simpleMessage("Täielik"),
        "confirm": MessageLookupByLibrary.simpleMessage("Kinnita"),
        "confirmAccountDeletion":
            MessageLookupByLibrary.simpleMessage("Kinnita konto kustutamine"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Korv tühjendatakse täiendamisel."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Kas olete kindel, et soovite ostukorvi tühjendada?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Kas olete kindel, et soovite selle kustutada? See toiming on pöörduv."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Kas olete kindel, et soovite selle üksuse kustutada?"),
        "connect": MessageLookupByLibrary.simpleMessage("Ühenda"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "content": MessageLookupByLibrary.simpleMessage("Sisu"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Jätka maksmisega"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Jätka ülevaatamisega"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Jätka kohaletoimetamisega"),
        "continues": MessageLookupByLibrary.simpleMessage("Jätkab"),
        "conversations": MessageLookupByLibrary.simpleMessage("Vestlused"),
        "convertPoint": m5,
        "copied": MessageLookupByLibrary.simpleMessage("Kopeeritud"),
        "copy": MessageLookupByLibrary.simpleMessage("Kopeeri"),
        "country": MessageLookupByLibrary.simpleMessage("Riik"),
        "countryIsNotSupported": m6,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("Riigi väli on nõutud"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Kupongikood"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Kupong on edukalt salvestatud."),
        "couponInvalid":
            MessageLookupByLibrary.simpleMessage("Teie kupongikood on kehtetu"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Õnnitleme! Kupongikoodi rakendati edukalt"),
        "createAnAccount": MessageLookupByLibrary.simpleMessage("Loo konto"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Teie postitus on edukalt loodud mustandina. Palun vaadake seda oma administraatori saidil."),
        "createPost": MessageLookupByLibrary.simpleMessage("Loo postitus"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Loo toode"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Loo kõik variandid"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Loodud: "),
        "currencies": MessageLookupByLibrary.simpleMessage("Valuutad"),
        "currencyIsNotSupported": m7,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Praegune parool"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Hetkel on meil ainult"),
        "customer": MessageLookupByLibrary.simpleMessage("Klient"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Kliendi üksikasjad"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Kliendi märkus"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Tšehhi"),
        "danish": MessageLookupByLibrary.simpleMessage("Taani"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Tume teema"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Juhtimislaud"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Andmed puuduvad"),
        "date": MessageLookupByLibrary.simpleMessage("Kuupäev"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Kuupäev kasvavalt"),
        "dateBooking":
            MessageLookupByLibrary.simpleMessage("Broneeringu kuupäev"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Kuupäev kahanevalt"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Lõppkuupäev"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Kuupäev: Viimane"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Kuupäev: Vanim"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Alustamise kuupäev"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Kuupäev ja aeg"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Kuupäeva järgi sulgege"),
        "daysAgo": m8,
        "debit": MessageLookupByLibrary.simpleMessage("Deebet"),
        "decline": MessageLookupByLibrary.simpleMessage("Keeldu"),
        "delete": MessageLookupByLibrary.simpleMessage("Kustuta"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Kustuta konto"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Kas olete kindel, et soovite oma konto kustutada? Palun lugege, kuidas konto kustutamine mõjutab."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Konto kustutamine õnnestus. Teie sessioon on aegunud."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Kustuta kõik"),
        "delivered": MessageLookupByLibrary.simpleMessage("Kohale toimetatud"),
        "deliveredTo":
            MessageLookupByLibrary.simpleMessage("Kohale toimetatud"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Tarnepoiss:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Tarnekuupäev"),
        "deliveryDetails": MessageLookupByLibrary.simpleMessage("Tarneandmed"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Tarne"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Andmeid pole.\nSee tellimus on eemaldatud."),
        "description": MessageLookupByLibrary.simpleMessage("Kirjeldus"),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Ei saanud koodi?"),
        "direction": MessageLookupByLibrary.simpleMessage("Suund"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Keela ostmine"),
        "discount": MessageLookupByLibrary.simpleMessage("Allahindlus"),
        "displayName": MessageLookupByLibrary.simpleMessage("Kuvatav nimi"),
        "distance": m9,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Teil pole veel ühtegi tehingut"),
        "doYouWantToExitApp": MessageLookupByLibrary.simpleMessage(
            "Kas soovite rakenduse sulgeda?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Kas soovite välja logida?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "Apple Pay pole sellel seadmel saadaval!"),
        "done": MessageLookupByLibrary.simpleMessage("Valmis"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Kas teil pole kontot?"),
        "download": MessageLookupByLibrary.simpleMessage("Lae alla"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Lae rakendus alla"),
        "draft": MessageLookupByLibrary.simpleMessage("Mustand"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Juht on määratud"),
        "duration": MessageLookupByLibrary.simpleMessage("Kestus"),
        "dutch": MessageLookupByLibrary.simpleMessage("Hollandi"),
        "earnings": MessageLookupByLibrary.simpleMessage("Teenistus"),
        "edit": MessageLookupByLibrary.simpleMessage("Muuda: "),
        "editProductInfo":
            MessageLookupByLibrary.simpleMessage("Muuda tooteinfot"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Muuda"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egiptus"),
        "email": MessageLookupByLibrary.simpleMessage("E-post"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Konto kustutamine tühistab teid kõikidest meililistadest."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "Teie sisestatud e-posti konto ei eksisteeri. Palun proovige uuesti."),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("E-posti väli on nõutud"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("Meilipostituste tellimine"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tundub, et sa ei ole veel ühtegi toodet ostukorvi lisanud. Alusta ostlemist, et seda täita."),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Teie kommentaar ei saa olla tühi"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Te ei ole veel ühtegi toodet otsinud. Alustame nüüd - me aitame teid."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Saadaval pole ühtegi saatmisvõimalust. Palun kontrollige, kas teie aadress on õigesti sisestatud, või võtke meiega ühendust, kui vajate abi."),
        "emptyUsername":
            MessageLookupByLibrary.simpleMessage("Kasutajanimi/e-post on tühi"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Klõpsake toote kõrval olevat südant, et see lemmikutesse lisada. Salvestame need sulle siia!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Luba makse jaoks"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Luba sisselogimiseks"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Luba rahakoti jaoks"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Luba puhkuse režiim"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Palun valige esimese kuupäeva järel olev kuupäev"),
        "endsIn": m10,
        "english": MessageLookupByLibrary.simpleMessage("Inglise"),
        "enterCaptcha": m11,
        "enterSendedCode":
            MessageLookupByLibrary.simpleMessage("Sisestage saadetud kood"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Sisestage oma e-post"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Sisestage oma e-post või kasutajanimi"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Sisestage oma eesnimi"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Sisestage oma perekonnanimi"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Palun sisestage oma mobiilinumber"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Sisestage oma parool"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Alustamiseks sisestage oma telefoninumber."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Sisestage oma telefoninumber"),
        "error": m12,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Sisestatud summa on suurem kui praegune rahakoti summa. Palun proovige uuesti!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Palun sisestage kehtiv e-posti aadress."),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Palun sisestage vähemalt 8 tähemärgiga parool"),
        "evening": MessageLookupByLibrary.simpleMessage("Õhtu"),
        "events": MessageLookupByLibrary.simpleMessage("Sündmused"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Oodatav tarnekuupäev"),
        "expired": MessageLookupByLibrary.simpleMessage("Aegunud"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Aegumiskuupäev"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("KK/AA"),
        "expiringInTime": m13,
        "external": MessageLookupByLibrary.simpleMessage("Väline"),
        "extraServices": MessageLookupByLibrary.simpleMessage("Lisateenused"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "Kasutaja määramine ebaõnnestus"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Linki genereerimine ebaõnnestus"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Rakenduse konfiguratsiooni laadimine ebaõnnestus. Palun proovige uuesti või taaskäivitage rakendus."),
        "failedToLoadImage":
            MessageLookupByLibrary.simpleMessage("Pilti ei õnnestunud laadida"),
        "favorite": MessageLookupByLibrary.simpleMessage("Lemmik"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Funktsioon pole saadaval"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Esiletõstetud tooted"),
        "featured": MessageLookupByLibrary.simpleMessage("Esiletõstetud"),
        "features": MessageLookupByLibrary.simpleMessage("Omadused"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Fail on liiga suur. Palun valige väiksem fail!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Faili üleslaadimine ebaõnnestus!"),
        "files": MessageLookupByLibrary.simpleMessage("Failid"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtreeri"),
        "fingerprintsTouchID":
            MessageLookupByLibrary.simpleMessage("Sõrmejäljed, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Lõpetage seadistus"),
        "finnish": MessageLookupByLibrary.simpleMessage("Soome"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Ole esimene, kes selle postitusele kommentaari lisab!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Eesnimi"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Eesnime väli on nõutud"),
        "firstRenewal": MessageLookupByLibrary.simpleMessage("Esimene uuendus"),
        "fixedCartDiscount": MessageLookupByLibrary.simpleMessage(
            "Fikseeritud korvi allahindlus"),
        "fixedProductDiscount": MessageLookupByLibrary.simpleMessage(
            "Fikseeritud toote allahindlus"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("selle toote jaoks"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Tasuta"),
        "french": MessageLookupByLibrary.simpleMessage("Prantsuse"),
        "from": MessageLookupByLibrary.simpleMessage("Alates"),
        "fullName": MessageLookupByLibrary.simpleMessage("Täisnimi"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galerii"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Üldised seaded"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Linki genereerimine..."),
        "german": MessageLookupByLibrary.simpleMessage("Saksa"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Hankige teatisi"),
        "getNotified": MessageLookupByLibrary.simpleMessage("Saage teavitus!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Hankige parooli link"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Alusta"),
        "goBack": MessageLookupByLibrary.simpleMessage("Mine tagasi"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Mine tagasi avalehele"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Tagasi aadressi juurde"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Tagasi ülevaatamise juurde"),
        "goBackToShipping": MessageLookupByLibrary.simpleMessage(
            "Tagasi kohaletoimetamise juurde"),
        "greaterDistance": m14,
        "greek": MessageLookupByLibrary.simpleMessage("Kreeka"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Kogumüük"),
        "grouped": MessageLookupByLibrary.simpleMessage("Rühmitatud"),
        "guests": MessageLookupByLibrary.simpleMessage("Külalised"),
        "hasBeenDeleted": MessageLookupByLibrary.simpleMessage("on kustutatud"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Heebrea"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Peida teave"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Peida aadress"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Peida e-post"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Peida kaart"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Peida telefon"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Peida poliitika"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hindi"),
        "history": MessageLookupByLibrary.simpleMessage("Ajalugu"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("Ajalugu"),
        "home": MessageLookupByLibrary.simpleMessage("Kodu"),
        "hour": MessageLookupByLibrary.simpleMessage("Tund"),
        "hoursAgo": m15,
        "hungarian": MessageLookupByLibrary.simpleMessage("Ungari"),
        "hungary": MessageLookupByLibrary.simpleMessage("Ungari"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Olen nõus"),
        "imIn": MessageLookupByLibrary.simpleMessage("Ma olen"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Pildi funktsioon"),
        "imageGallery": MessageLookupByLibrary.simpleMessage("Pildigalerii"),
        "imageGenerate": MessageLookupByLibrary.simpleMessage("Pildi loomine"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Pildivõrk"),
        "inStock": MessageLookupByLibrary.simpleMessage("Laos"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Vale parool"),
        "india": MessageLookupByLibrary.simpleMessage("Hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Indoneesia"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Koheselt sulgege"),
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Vigane telefoninumber"),
        "invalidSMSCode":
            MessageLookupByLibrary.simpleMessage("Vigane SMS-kinnituskood"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Vigane sünniaasta"),
        "invoice": MessageLookupByLibrary.simpleMessage("Arve"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Kas kõik on seatud...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("kirjutab..."),
        "italian": MessageLookupByLibrary.simpleMessage("Itaalia"),
        "item": MessageLookupByLibrary.simpleMessage("Üksus"),
        "itemTotal": MessageLookupByLibrary.simpleMessage("Toote kogusumma: "),
        "items": MessageLookupByLibrary.simpleMessage("tooted"),
        "itsOrdered":
            MessageLookupByLibrary.simpleMessage("Tellimus on esitatud!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Soovin luua konto"),
        "japanese": MessageLookupByLibrary.simpleMessage("Jaapani"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Säilita"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmeri"),
        "korean": MessageLookupByLibrary.simpleMessage("Korea"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdi"),
        "language": MessageLookupByLibrary.simpleMessage("Keeled"),
        "languageSuccess":
            MessageLookupByLibrary.simpleMessage("Keel on edukalt uuendatud"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Perekonnanimi"),
        "lastNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Perekonnanime väli on nõutud"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Viimased tehingud"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Viimased tooted"),
        "layout": MessageLookupByLibrary.simpleMessage("Paigutused"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Hele teema"),
        "link": MessageLookupByLibrary.simpleMessage("Link"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Loendi banneri tüüp"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Loendi banneri video"),
        "listMessages": MessageLookupByLibrary.simpleMessage("Teatised"),
        "listening": MessageLookupByLibrary.simpleMessage("Kuulamine..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Laadimine ebaõnnestus!"),
        "loading": MessageLookupByLibrary.simpleMessage("Laadimine..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Linki laadimine..."),
        "location": MessageLookupByLibrary.simpleMessage("Asukoht"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Ekraani lukustamine ja turvalisus"),
        "login": MessageLookupByLibrary.simpleMessage("Logi sisse"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Sisselogimine tühistati"),
        "loginErrorServiceProvider": m16,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Sisselogimine ebaõnnestus!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Ei saa sisse logida! Palun võtke ühendust administraatoriga, et kontrollida oma kontot/õigusi."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Sisselogimine õnnestus!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Palun logige sisse, et kommenteerida"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Jätkamiseks palun logige sisse"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Logige sisse oma kontole"),
        "logout": MessageLookupByLibrary.simpleMessage("Logi välja"),
        "malay": MessageLookupByLibrary.simpleMessage("Malai"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Mehed kollektsioonid"),
        "manageApiKey": MessageLookupByLibrary.simpleMessage("Halda API-võtit"),
        "manageStock": MessageLookupByLibrary.simpleMessage("Haldage varusid"),
        "map": MessageLookupByLibrary.simpleMessage("Kaart"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Märgi loetuks"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Märgi saadetuks"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Märgi lugematuks"),
        "maxAmountForPayment": m17,
        "maximumFileSizeMb": m18,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Võib-olla hiljem"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Menüü tellimus"),
        "message": MessageLookupByLibrary.simpleMessage("Sõnum"),
        "messageTo": MessageLookupByLibrary.simpleMessage("Saada sõnum"),
        "minAmountForPayment": m19,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Miinimumkogus on"),
        "minutesAgo": m20,
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Mobiilne autentimine"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("hetk tagasi"),
        "monthsAgo": m21,
        "more": MessageLookupByLibrary.simpleMessage("...veel"),
        "moreFromStore": m22,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Rohkem teavet"),
        "morning": MessageLookupByLibrary.simpleMessage("Hommik"),
        "mustBeBoughtInGroupsOf": m23,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Peate valima 1 üksuse"),
        "myCart": MessageLookupByLibrary.simpleMessage("Minu ostukorv"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Minu punktid"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Minu tooted"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Teil pole ühtegi toodet. Proovige luua üks!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Minu rahakott"),
        "myWishList":
            MessageLookupByLibrary.simpleMessage("Minu soovinimekiri"),
        "nItems": m24,
        "name": MessageLookupByLibrary.simpleMessage("Nimi"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Nimi kaardil"),
        "nearbyPlaces":
            MessageLookupByLibrary.simpleMessage("Lähedal asuvad kohad"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Uuenduse mõjutamiseks peate uuesti sisse logima"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Hollandi"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Uus sisu on saadaval!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Uus parool"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Uus variant"),
        "next": MessageLookupByLibrary.simpleMessage("Järgmine"),
        "niceName": MessageLookupByLibrary.simpleMessage("Meeldiv nimi"),
        "no": MessageLookupByLibrary.simpleMessage("Ei"),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Puudub tagasiulatuva ajaloo üksus"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Oih, näib, et blogi ei eksisteeri enam"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Kaamerale pole luba antud. Palun andke see seadme sätetes."),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Vestlust pole veel"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "See ilmub, kui teie kliendid hakkavad teiega vestlema"),
        "noData": MessageLookupByLibrary.simpleMessage("Andmed puuduvad"),
        "noFavoritesYet": MessageLookupByLibrary.simpleMessage(
            "Lemmikuid pole veel lisatud."),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "Allalaadimiseks pole ühtegi faili."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Puudub edasijõudnud ajaloo üksus"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Internetiühendus puudub"),
        "noListingNearby": MessageLookupByLibrary.simpleMessage(
            "Läheduses ei ole ühtegi pakkumist!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Tellimusi pole"),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Seda toodet saavad näha ainult kasutajad, kellel on konkreetne roll."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Palun logige sisse sobivate volitustega, et sellele tootele juurde pääseda, või võtke meiega ühendust lisateabe saamiseks."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Oih, tundub, et see leht ei eksisteeri enam!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Printereid pole"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Tooteid pole"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Tulemust ei leitud"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Ülevaateid pole"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Ühtegi vaba kohta pole"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Ei, aitäh"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Vabandust, videoid ei leitud."),
        "none": MessageLookupByLibrary.simpleMessage("Mitte ükski"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Vabandust, me ei leidnud tulemusi."),
        "notFound": MessageLookupByLibrary.simpleMessage("Pole leitud"),
        "note": MessageLookupByLibrary.simpleMessage("Tellimuse märkus"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Märkus"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Märkus (valikuline)"),
        "notice": MessageLookupByLibrary.simpleMessage("Märkus"),
        "notifications": MessageLookupByLibrary.simpleMessage("Teated"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Teavitame viimastest pakkumistest ja toodete saadavusest"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("sellest tootest"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "on": MessageLookupByLibrary.simpleMessage("sees"),
        "onSale": MessageLookupByLibrary.simpleMessage("Müügil"),
        "onVacation": MessageLookupByLibrary.simpleMessage("Puhkusel"),
        "online": MessageLookupByLibrary.simpleMessage("Võrgus"),
        "openMap": MessageLookupByLibrary.simpleMessage("Kaart"),
        "openNow": MessageLookupByLibrary.simpleMessage("Ava nüüd"),
        "options": MessageLookupByLibrary.simpleMessage("Valikud"),
        "optionsTotal": m25,
        "or": MessageLookupByLibrary.simpleMessage("või"),
        "orLoginWith": MessageLookupByLibrary.simpleMessage("või logige sisse"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Tellimuse kinnitus"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Olete kindel, et soovite tellimuse luua?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Tellimuse kuupäev"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Tellimuse detailid"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Tellimuste ajalugu"),
        "orderId": MessageLookupByLibrary.simpleMessage("Tellimuse ID: "),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("Tellimuse ID"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Tellimuse number"),
        "orderNotes":
            MessageLookupByLibrary.simpleMessage("Tellimuse märkused"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Tellimuse number"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Tühistatud tagasipööratud"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Tühistatud"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Tagasiost"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Lõpetatud"),
        "orderStatusDenied":
            MessageLookupByLibrary.simpleMessage("Tagasi lükatud"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Aegunud"),
        "orderStatusFailed":
            MessageLookupByLibrary.simpleMessage("Makse ebaõnnestus"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("Ootel"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Ootel"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Ootel makset"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Töödeldud"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("Töödeldakse"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Tagastatud"),
        "orderStatusReversed":
            MessageLookupByLibrary.simpleMessage("Tagasipööratud"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Saadetud"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Tühistanud"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Saate oma tellimuse staatust kontrollida meie kohaletoimetamise staatuse funktsiooni abil. Saate tellimuse kinnituse e-kirjaga, kus on üksikasjad teie tellimuse ja jälgimise edenemise kohta."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Saate sisse logida oma kontole, kasutades varem määratletud e-posti ja parooli. Oma kontol saate redigeerida profiiliandmeid, kontrollida tehingute ajalugu ja muuta uudiskirjaga tellimist."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Olete edukalt tellimuse esitanud"),
        "orderSuccessTitle2":
            MessageLookupByLibrary.simpleMessage("Sinu konto"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Tellimuse kokkuvõte"),
        "orderTotal":
            MessageLookupByLibrary.simpleMessage("Tellimuse kogusumma"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Tellimuse jälgimine"),
        "orders": MessageLookupByLibrary.simpleMessage("Tellimused"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("OTP kinnitamine"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Meie pangakontod"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Otsas"),
        "pageView": MessageLookupByLibrary.simpleMessage("Lehe vaatamine"),
        "paid": MessageLookupByLibrary.simpleMessage("Makstud"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Makstud olek"),
        "password": MessageLookupByLibrary.simpleMessage("Parool"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Kleepige oma pildi URL"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Maksa rahakoti abil"),
        "payNow": MessageLookupByLibrary.simpleMessage("Maksa kohe"),
        "payWithAmount": m26,
        "payment": MessageLookupByLibrary.simpleMessage("Makse"),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("Maksemeetod"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "See makseviis ei ole toetatud"),
        "paymentMethods": MessageLookupByLibrary.simpleMessage("Maksemeetodid"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Makse õnnestus"),
        "pending": MessageLookupByLibrary.simpleMessage("Ootel"),
        "persian": MessageLookupByLibrary.simpleMessage("Pärsia"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefon"),
        "phoneEmpty": MessageLookupByLibrary.simpleMessage("Telefon on tühi"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Formaat: +84123456789"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "Telefoninumbri väli on nõutud"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Telefoninumber"),
        "phoneNumberVerification":
            MessageLookupByLibrary.simpleMessage("Telefoninumbri kinnitamine"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Vali kuupäev ja kellaaeg"),
        "placeMyOrder": MessageLookupByLibrary.simpleMessage("Esita tellimus"),
        "playAll": MessageLookupByLibrary.simpleMessage("Mängi kõiki"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Palun lisage hind"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Palun nõustuge meie tingimustega"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Palun lubage juurdepääs kaamerale ja galeriile"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Palun kontrollige internetiühendust!"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Palun valige kategooria"),
        "pleaseEnterProductName":
            MessageLookupByLibrary.simpleMessage("Palun sisestage toote nimi"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Palun täitke oma kood"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Palun suurendage või vähendage kogust jätkamiseks."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Palun täitke kõik nõutud väljad"),
        "pleaseInputFillAllFields":
            MessageLookupByLibrary.simpleMessage("Palun täitke kõik väljad"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Palun valige broneerimise kuupäev"),
        "pleaseSelectALocation":
            MessageLookupByLibrary.simpleMessage("Palun valige asukoht"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Palun valige iga toote atribuudi jaoks valik"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Palun valige igale aktiivsele atribuudile vähemalt 1 variatsiooni atribuut"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Palun valige pildid"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Palun valige vajalikud valikud!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Palun logige oma kontole sisse enne failide üleslaadimist."),
        "pleasefillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Palun täitke kõik väljad korrektselt"),
        "point": MessageLookupByLibrary.simpleMessage("Punkt"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Serveris pole leitud allahindluspunkti konfiguratsiooni"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Palun sisestage allahindluspunkt"),
        "pointMsgMaximumDiscountPoint": MessageLookupByLibrary.simpleMessage(
            "Maksimaalne allahindluspunkt"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Teil pole piisavalt allahindluspunkte. Teie kogu allahindluspunkt on"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Olete jõudnud maksimaalse allahindluspunkti"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Kogu allahindluse väärtus ületab arve summa"),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "Allahindluspunkt on eemaldatud"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Allahindluspunkt on edukalt rakendatud"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Teie punktide korvi rakendamise allahindluse reegel on olemas"),
        "polish": MessageLookupByLibrary.simpleMessage("Poola"),
        "popular": MessageLookupByLibrary.simpleMessage("Populaarne"),
        "popularity": MessageLookupByLibrary.simpleMessage("Populaarsus"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "See aadress salvestatakse teie kohalikule seadmele. See EI ole kasutaja aadress."),
        "postContent": MessageLookupByLibrary.simpleMessage("Sisu"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Teie postituse loomine ebaõnnestus"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Pildi funktsioon"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Postituse haldus"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Avalda toode"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Teie postitus on edukalt loodud"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Pealkiri"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Ettemaks"),
        "prev": MessageLookupByLibrary.simpleMessage("Eelmine"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Hind: Kõrgeast madalaks"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Hind: Madalast kõrgeks"),
        "prices": MessageLookupByLibrary.simpleMessage("Menüüd"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Prindi kviitung"),
        "printer": MessageLookupByLibrary.simpleMessage("Printer"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("Printerit ei leitud"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Printeri valik"),
        "printing": MessageLookupByLibrary.simpleMessage("Printimine..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Privaatsus ja tingimused"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Privaatsuspoliitika"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Privaatsus ja tingimused"),
        "private": MessageLookupByLibrary.simpleMessage("Privaatne"),
        "product": MessageLookupByLibrary.simpleMessage("Toode"),
        "productAdded":
            MessageLookupByLibrary.simpleMessage("Toode on lisatud"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Teie toode ilmub pärast ülevaatuse lõppu."),
        "productName": MessageLookupByLibrary.simpleMessage("Toote nimi"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "Toote tüüp vajab vähemalt ühte varianti"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Toote tüüp lihtne vajab nime ja tavalist hinda"),
        "productOutOfStock":
            MessageLookupByLibrary.simpleMessage("Toode on laost otsas"),
        "productRating": MessageLookupByLibrary.simpleMessage("Sinu hinnang"),
        "productReview": MessageLookupByLibrary.simpleMessage("Toote ülevaade"),
        "productType": MessageLookupByLibrary.simpleMessage("Toote tüüp"),
        "products": MessageLookupByLibrary.simpleMessage("Tooted"),
        "publish": MessageLookupByLibrary.simpleMessage("Avalda"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Loe rohkem laadimiseks"),
        "qty": MessageLookupByLibrary.simpleMessage("kogus"),
        "qtyTotal": m27,
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "Praegune kogus on suurem kui varus olev kogus"),
        "rate": MessageLookupByLibrary.simpleMessage("Hinda"),
        "rateTheApp": MessageLookupByLibrary.simpleMessage("Hinda rakendust"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Hinda seda rakendust"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Kui teile see rakendus meeldib, võtke palun natuke aega, et seda üle vaadata! See aitab meid väga ja ei tohiks võtta rohkem kui üks minut."),
        "rating": MessageLookupByLibrary.simpleMessage("hinnang"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Palun hinnake enne oma kommentaari saatmist"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Telli uuesti"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Loe ülevaateid"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Saadud raha"),
        "receiver": MessageLookupByLibrary.simpleMessage("Vastuvõtja"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Viimased otsingutulemused"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("Sinu hiljutine vaade"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Hiljuti vaadatud"),
        "recents": MessageLookupByLibrary.simpleMessage("Viimased"),
        "recommended": MessageLookupByLibrary.simpleMessage("Soovitatav"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Korduvad summad"),
        "refresh": MessageLookupByLibrary.simpleMessage("Värskenda"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "Tellimuse tagasimakse taotlus ebaõnnestus"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Tellimuse tagasimakse taotlus õnnestus!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Tagastamistaotlus"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Tagasimakse taotletud"),
        "refunds": MessageLookupByLibrary.simpleMessage("Tagasimaksed"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Taasta vastus"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Registreeru kui"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Registreeri müüjana"),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Registreerimine ebaõnnestus"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Registreerimine õnnestus"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Tavahind"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Seotud blogid"),
        "releaseToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Vabastage rohkem laadimiseks"),
        "remove": MessageLookupByLibrary.simpleMessage("Eemalda"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Eemalda soovinimekirjast"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Broneeringu taotlus"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Olete liiga lühikese aja jooksul palunud liiga palju koode. Palun proovige hiljem uuesti."),
        "resend": MessageLookupByLibrary.simpleMessage("SAADA UUESTI"),
        "reset": MessageLookupByLibrary.simpleMessage("Lähtesta"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Lähtesta parool"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Lähtesta oma parool"),
        "results": MessageLookupByLibrary.simpleMessage("Tulemused"),
        "retry": MessageLookupByLibrary.simpleMessage("Proovi uuesti"),
        "review": MessageLookupByLibrary.simpleMessage("Ülevaade"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Ülevaatuse heakskiitmine"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Teie ülevaade on saadetud ja ootab heakskiitu!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Teie ülevaade on saadetud!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Arvustused"),
        "romanian": MessageLookupByLibrary.simpleMessage("Rumeenia"),
        "russian": MessageLookupByLibrary.simpleMessage("Vene"),
        "sale": m28,
        "salePrice": MessageLookupByLibrary.simpleMessage("Müügihind"),
        "save": MessageLookupByLibrary.simpleMessage("Salvesta"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Salvesta aadress"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Aadress on edukalt salvestatud"),
        "saveForLater": MessageLookupByLibrary.simpleMessage("Salvesta hiljem"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Salvesta soovinimekirja"),
        "scannerCannotScan":
            MessageLookupByLibrary.simpleMessage("Seda üksust ei saa skannida"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Tellimuse skannimiseks peate kõigepealt sisse logima"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "See tellimus pole teie kontole saadaval"),
        "search": MessageLookupByLibrary.simpleMessage("Otsi"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Otsige riigi nime või valimiskoodi järgi"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Otsi nime järgi..."),
        "searchForItems": MessageLookupByLibrary.simpleMessage("Otsi tooteid"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Palun sisestage otsinguväljale sisend"),
        "searchOrderId":
            MessageLookupByLibrary.simpleMessage("Otsi tellimuse ID järgi..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Otsi kohta"),
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Otsige aadressi"),
        "secondsAgo": m29,
        "seeAll": MessageLookupByLibrary.simpleMessage("Vaata kõike"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Jätkake uue sisu vaatamist oma rakenduses."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Vaata tellimust"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Vaata arvustusi"),
        "select": MessageLookupByLibrary.simpleMessage("Vali"),
        "selectAddress": MessageLookupByLibrary.simpleMessage("Vali aadress"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Vali kõik"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Valige kuupäevad"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Valige fail tühistatud!"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Vali pilt"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Vali ükski"),
        "selectPrinter": MessageLookupByLibrary.simpleMessage("Valige printer"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Valige roll"),
        "selectStore": MessageLookupByLibrary.simpleMessage("Vali pood"),
        "selectTheColor": MessageLookupByLibrary.simpleMessage("Vali värv"),
        "selectTheFile": MessageLookupByLibrary.simpleMessage("Vali fail"),
        "selectThePoint": MessageLookupByLibrary.simpleMessage("Valige punkt"),
        "selectTheQuantity": MessageLookupByLibrary.simpleMessage("Vali kogus"),
        "selectTheSize": MessageLookupByLibrary.simpleMessage("Vali suurus"),
        "send": MessageLookupByLibrary.simpleMessage("Saada"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Tagasi saatma"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Saada kood"),
        "sendSMStoVendor":
            MessageLookupByLibrary.simpleMessage("Saada SMS poe omanikule"),
        "serbian": MessageLookupByLibrary.simpleMessage("Serbia"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Sessioon on aegunud"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Palun määrake aadress sätete lehel"),
        "settings": MessageLookupByLibrary.simpleMessage("Seaded"),
        "setup": MessageLookupByLibrary.simpleMessage("Seadista"),
        "share": MessageLookupByLibrary.simpleMessage("Jaga"),
        "shipped": MessageLookupByLibrary.simpleMessage("Saadetud"),
        "shipping": MessageLookupByLibrary.simpleMessage("Kohaletoimetamine"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Kohaletoimetamise aadress"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Kohaletoimetamise meetod"),
        "shop": MessageLookupByLibrary.simpleMessage("Pood"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Poekaupluse e-post"),
        "shopName": MessageLookupByLibrary.simpleMessage("Poekaup"),
        "shopOrders": MessageLookupByLibrary.simpleMessage("Poetellimused"),
        "shopPhone":
            MessageLookupByLibrary.simpleMessage("Poekaupluse telefon"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Poekaupluse nimi"),
        "shoppingCartItems": m30,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Lühike kirjeldus"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("Kuva kõik minu tellimused"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Detailid"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Kuva galerii"),
        "showLess": MessageLookupByLibrary.simpleMessage("Näita vähem"),
        "showMore": MessageLookupByLibrary.simpleMessage("Näita rohkem"),
        "signIn": MessageLookupByLibrary.simpleMessage("Logi sisse"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Logi sisse e-posti teel"),
        "signUp": MessageLookupByLibrary.simpleMessage("Registreeru"),
        "signup": MessageLookupByLibrary.simpleMessage("Registreeru"),
        "simple": MessageLookupByLibrary.simpleMessage("Lihtne"),
        "size": MessageLookupByLibrary.simpleMessage("Suurus"),
        "skip": MessageLookupByLibrary.simpleMessage("Jäta vahele"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("Slovaki"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "SMS-kood on aegunud. Palun saatke kinnituskoodi uuesti, et uuesti proovida."),
        "sold": m31,
        "soldBy": MessageLookupByLibrary.simpleMessage("Müünud"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Midagi läks valesti. Palun proovige hiljem uuesti."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Sorteeri"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Sorteerimiskood"),
        "spanish": MessageLookupByLibrary.simpleMessage("Hispaania"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Kõnet ei ole saadaval"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Alusta avastamist"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Alusta ostlemist"),
        "state": MessageLookupByLibrary.simpleMessage("Olek"),
        "stateIsRequired":
            MessageLookupByLibrary.simpleMessage("Maakonna väli on nõutud"),
        "stateProvince":
            MessageLookupByLibrary.simpleMessage("Maakond / Osariik"),
        "status": MessageLookupByLibrary.simpleMessage("Staatus"),
        "stock": MessageLookupByLibrary.simpleMessage("Varu"),
        "stockQuantity": MessageLookupByLibrary.simpleMessage("Varu kogus"),
        "stop": MessageLookupByLibrary.simpleMessage("Peata"),
        "store": MessageLookupByLibrary.simpleMessage("Pood"),
        "storeAddress": MessageLookupByLibrary.simpleMessage("Poe aadress"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Bänner"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Poe kaubamärk"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("Pood on praegu suletud"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Poe e-post"),
        "storeInformation": MessageLookupByLibrary.simpleMessage("Poe info"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Poe loendi banner"),
        "storeLocation": MessageLookupByLibrary.simpleMessage("Poe asukoht"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Poe logo"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Poe mobiilibanner"),
        "storeSettings": MessageLookupByLibrary.simpleMessage("Poe seaded"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Poe liuguribaanner"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Poe staatiline banner"),
        "storeVacation": MessageLookupByLibrary.simpleMessage("Poe puhkus"),
        "stores": MessageLookupByLibrary.simpleMessage("Poodid"),
        "street": MessageLookupByLibrary.simpleMessage("Tänav"),
        "street2": MessageLookupByLibrary.simpleMessage("Tänav 2"),
        "streetIsRequired":
            MessageLookupByLibrary.simpleMessage("Tänava nime väli on nõutud"),
        "streetName": MessageLookupByLibrary.simpleMessage("Tänava nimi"),
        "streetNameApartment": MessageLookupByLibrary.simpleMessage("Korter"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Blok"),
        "submit": MessageLookupByLibrary.simpleMessage("Esita"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Esitage oma postitus"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Vahesumma"),
        "support": MessageLookupByLibrary.simpleMessage("Klienditugi"),
        "swahili": MessageLookupByLibrary.simpleMessage("Suahiili"),
        "swedish": MessageLookupByLibrary.simpleMessage("Rootsi"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("See silt ei eksisteeri"),
        "tags": MessageLookupByLibrary.simpleMessage("Märgendid"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Tee pilt"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tamili"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Puudutage selle asukoha valimiseks"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Rääkimiseks koputage mikrofonile"),
        "tax": MessageLookupByLibrary.simpleMessage("Maks"),
        "thailand": MessageLookupByLibrary.simpleMessage("Tai"),
        "theFieldIsRequired": m32,
        "thisDateIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("See kuupäev pole saadaval"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "See funktsioon ei toeta praegust keelt"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("See on kliendi roll"),
        "thisIsVendorRole":
            MessageLookupByLibrary.simpleMessage("See on müüja roll"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "See platvorm ei toeta veebivaadet"),
        "thisProductNotSupport":
            MessageLookupByLibrary.simpleMessage("See toode ei toeta"),
        "tickets": MessageLookupByLibrary.simpleMessage("Piletid"),
        "time": MessageLookupByLibrary.simpleMessage("Aeg"),
        "title": MessageLookupByLibrary.simpleMessage("Pealkiri"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Pealkiri: A kuni Z"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Pealkiri: Z kuni A"),
        "tooManyFaildedLogin": MessageLookupByLibrary.simpleMessage(
            "Liiga palju ebaõnnestunud sisselogimiskatseid. Palun proovige hiljem uuesti."),
        "topUp": MessageLookupByLibrary.simpleMessage("Täiendage"),
        "topUpProductNotFound":
            MessageLookupByLibrary.simpleMessage("Täiendusprodukti ei leitud"),
        "total": MessageLookupByLibrary.simpleMessage("Kogusumma"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Tellimuse koguväärtus peab olema vähemalt"),
        "totalProducts": m33,
        "totalTax": MessageLookupByLibrary.simpleMessage("Kogumaks"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("Jälgimisnumber on"),
        "trackingPage": MessageLookupByLibrary.simpleMessage("Jälgimisleht"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Tehing tühistatud"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Tehingu detailid"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("Tehing ebaõnnestus"),
        "transactionFee": MessageLookupByLibrary.simpleMessage("Tehingu tasu"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Tehingu tulemus"),
        "transfer": MessageLookupByLibrary.simpleMessage("Ülekanne"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Ülekande kinnitus"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Te ei saa sellele kasutajale üle kanda"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Ülekanne ebaõnnestus"),
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Ülekanne õnnestus"),
        "turkish": MessageLookupByLibrary.simpleMessage("Türgi"),
        "turnOnBle":
            MessageLookupByLibrary.simpleMessage("Lülitage sisse Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Sisestage sõnum..."),
        "typeYourMessage":
            MessageLookupByLibrary.simpleMessage("Sisestage siia oma sõnum..."),
        "typing": MessageLookupByLibrary.simpleMessage("Kirjutamine..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ukraina"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Saadaval pole"),
        "undo": MessageLookupByLibrary.simpleMessage("Tühista"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Maksmata"),
        "update": MessageLookupByLibrary.simpleMessage("Uuenda"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Värskendamine ebaõnnestus!"),
        "updateInfo": MessageLookupByLibrary.simpleMessage("Uuenda infot"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Uuenda parooli"),
        "updateStatus": MessageLookupByLibrary.simpleMessage("Uuenda olekut"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Värskendamine õnnestus!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Uuenda profiili"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Laadi fail üles"),
        "uploadProduct": MessageLookupByLibrary.simpleMessage("Lae toode üles"),
        "uploading": MessageLookupByLibrary.simpleMessage("Laadimine"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m34,
        "useNow": MessageLookupByLibrary.simpleMessage("Kasuta kohe"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Kasuta seda pilti"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "See kasutajanimi/e-post ei ole saadaval."),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Kasutajanimi või parool on vale."),
        "username": MessageLookupByLibrary.simpleMessage("Kasutajanimi"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Kasutajanimi ja parool on kohustuslikud"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Puhkuse teade"),
        "vacationType": MessageLookupByLibrary.simpleMessage("Puhkuse tüüp"),
        "validUntilDate": m35,
        "variable": MessageLookupByLibrary.simpleMessage("Muutuv"),
        "variation": MessageLookupByLibrary.simpleMessage("Varieeruvus"),
        "vendor": MessageLookupByLibrary.simpleMessage("Müüja"),
        "vendorAdmin": MessageLookupByLibrary.simpleMessage("Müüja admin"),
        "vendorInfo": MessageLookupByLibrary.simpleMessage("Müüja info"),
        "verificationCode":
            MessageLookupByLibrary.simpleMessage("Autentimiskood (6 numbrit)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Kinnita"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Rahakoti kaudu"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnami"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Vaata Google Mapsis"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Vaata viimaseid tehinguid"),
        "visible": MessageLookupByLibrary.simpleMessage("Nähtav"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Külasta poodi"),
        "waitForLoad":
            MessageLookupByLibrary.simpleMessage("Oodake piltide laadimist"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Oodake toote avaldamist"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Ootab kinnitust"),
        "walletBalance": MessageLookupByLibrary.simpleMessage("Rahakoti saldo"),
        "walletName": MessageLookupByLibrary.simpleMessage("Rahakoti nimi"),
        "warning": m36,
        "warningCurrencyMessageForWallet": m37,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Leidsime blogi(d)"),
        "weFoundProducts": m38,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Vajame kaamera juurdepääsu QR-koodi või ribakoodi skaneerimiseks."),
        "weSentAnOTPTo":
            MessageLookupByLibrary.simpleMessage("Autentimiskood on saadetud"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Saadame teile teateid uute toodete saadavusest või pakkumistest. Saate selle alati sätetest välja lülitada."),
        "webView": MessageLookupByLibrary.simpleMessage("Veebivaade"),
        "week": m39,
        "welcome": MessageLookupByLibrary.simpleMessage("Tere tulemast"),
        "welcomeUser": m40,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("Millist keelt eelistate?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Palun võtke ühendust administraatoriga oma registreerimise heakskiitmiseks."),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Naiste kollektsioonid"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Kirjutage oma kommentaar"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Kirjutage oma märkus"),
        "yearsAgo": m41,
        "yes": MessageLookupByLibrary.simpleMessage("Jah"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Saate osta ainult ühest poest."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Saate osta ainult"),
        "youHaveAssignedToOrder": m42,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Olete oma aadressi kohalikku faili edukalt salvestanud!"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Sul on \$point punkti"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Sul võib samuti meeldida"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Väljamakse tegemiseks peate sisse logima"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Teilt ei küsita järgmisel korral pärast lõpetamist"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Teie konto on ülevaatamisel. Kui vajate abi, võtke ühendust administraatoriga."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Teie aadress on olemas teie kohalikus"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Aadress on edukalt salvestatud teie kohalikku salvestusruumi"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Teie taotlus on ülevaatamisel."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Sinu ostukorv on tühi"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("Teie broneeringu üksikasjad"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Teie teenistus sel kuul"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Sinu märkus"),
        "yourOrderHasBeenAdded":
            MessageLookupByLibrary.simpleMessage("Teie tellimus on lisatud"),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Teie tellimused"),
        "yourProductIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Teie toode on ülevaatamisel"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Teie kasutajanimi või e-post"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Postiindeks"),
        "zipCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Postiindeksi väli on nõutud")
      };
}
