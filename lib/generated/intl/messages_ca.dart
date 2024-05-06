// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ca locale. All the
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
  String get localeName => 'ca';

  static String m0(x) => "Actiu durant ${x}";

  static String m1(attribute) => "Qualsevol ${attribute}";

  static String m2(point) => "Els teus punts disponibles: ${point}";

  static String m3(state) => "L’adaptador Bluetooth està ${state}";

  static String m4(currency) => "Moneda canviada a ${currency}";

  static String m5(priceRate, pointRate) => "${priceRate} = ${pointRate} Punts";

  static String m6(country) => "El país ${country} no està suportat";

  static String m7(currency) => "${currency} no està suportat";

  static String m8(day) => "fa ${day} dies";

  static String m9(total) => "~${total} km";

  static String m10(timeLeft) => "Acaba dins de ${timeLeft}";

  static String m11(captcha) => "Introdueix ${captcha} per confirmar:";

  static String m12(message) => "Error: ${message}";

  static String m13(time) => "Expira dins de ${time}";

  static String m14(total) => "> ${total} km";

  static String m15(hour) => "fa ${hour} hores";

  static String m16(message) =>
      "Hi ha un problema amb l’aplicació durant la sol·licitud de dades, si us plau, contacta amb l’administrador per solucionar els problemes: ${message}";

  static String m17(currency, amount) =>
      "L’import màxim per utilitzar aquest pagament és ${currency} ${amount}";

  static String m18(size) => "Mida màxima del fitxer: ${size} MB";

  static String m19(currency, amount) =>
      "L’import mínim per utilitzar aquest pagament és ${currency} ${amount}";

  static String m20(minute) => "fa ${minute} minuts";

  static String m21(month) => "fa ${month} mesos";

  static String m22(store) => "Més de ${store}";

  static String m23(number) => "s\'ha de comprar en grups de ${number}";

  static String m24(itemCount) => "${itemCount} articles";

  static String m25(price) => "Total d’opcions: ${price}";

  static String m26(amount) => "Pagar ${amount}";

  static String m27(total) => "Quantitat: ${total}";

  static String m28(percent) => "Descompte ${percent}%";

  static String m29(second) => "fa ${second} segons";

  static String m30(totalCartQuantity) =>
      "Cistella de compra, ${totalCartQuantity} articles";

  static String m31(numberOfUnitsSold) => "Venuts: ${numberOfUnitsSold}";

  static String m32(fieldName) => "El camp ${fieldName} és obligatori";

  static String m33(total) => "${total} productes";

  static String m34(maxPointDiscount, maxPriceDiscount) =>
      "Utilitza un màxim de ${maxPointDiscount} punts per obtenir un descompte de ${maxPriceDiscount} en aquesta comanda!";

  static String m35(date) => "Vàlid fins al ${date}";

  static String m36(message) => "Advertència: ${message}";

  static String m37(defaultCurrency) =>
      "La moneda seleccionada actualment no està disponible per a la funció de cartera, si us plau, canvia-la per ${defaultCurrency}";

  static String m38(length) => "Hem trobat ${length} productes";

  static String m39(week) => "Setmana ${week}";

  static String m40(name) => "Benvingut/da ${name}";

  static String m41(year) => "fa ${year} anys";

  static String m42(total) => "T’han assignat la comanda #${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Sobre nosaltres"),
        "account": MessageLookupByLibrary.simpleMessage("Compte"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Eliminar el teu compte esborra la informació personal de la nostra base de dades."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "El compte està pendent d’aprovació."),
        "accountNumber":
            MessageLookupByLibrary.simpleMessage("Número de compte"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Configuració del compte"),
        "active": MessageLookupByLibrary.simpleMessage("Actiu"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Actiu fa molt temps"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Actiu ara"),
        "addAName": MessageLookupByLibrary.simpleMessage("Afegir un nom"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Afegir una nova publicació"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Afegeix un slug"),
        "addAnAttr": MessageLookupByLibrary.simpleMessage("Afegir un atribut"),
        "addListing": MessageLookupByLibrary.simpleMessage("Afegir llistat"),
        "addNew": MessageLookupByLibrary.simpleMessage("Afegir nou"),
        "addNewBlog": MessageLookupByLibrary.simpleMessage("Afegir nou bloc"),
        "addNewPost":
            MessageLookupByLibrary.simpleMessage("Crear nova publicació"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Afegir producte"),
        "addToCart":
            MessageLookupByLibrary.simpleMessage("Afegir a la cistella"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "S’ha superat la quantitat màxima"),
        "addToCartSucessfully": MessageLookupByLibrary.simpleMessage(
            "s\'ha afegit a la teva cistella"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Afegir a la comanda"),
        "added": MessageLookupByLibrary.simpleMessage("Afegit"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Afegit amb èxit"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Afegint la teva imatge"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Informació addicional"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Serveis addicionals"),
        "address": MessageLookupByLibrary.simpleMessage("Adreça"),
        "adults": MessageLookupByLibrary.simpleMessage("Adults"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Tarda"),
        "agree": MessageLookupByLibrary.simpleMessage("Acceptar"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Privacitat i termes"),
        "albanian": MessageLookupByLibrary.simpleMessage("Albanès"),
        "all": MessageLookupByLibrary.simpleMessage("Tots"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Totes les marques"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Totes les comandes"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Vendes recents"),
        "allProducts":
            MessageLookupByLibrary.simpleMessage("Tots els productes"),
        "allow": MessageLookupByLibrary.simpleMessage("Permetre"),
        "allowCameraAccess": MessageLookupByLibrary.simpleMessage(
            "Permetre l’accés a la càmera?"),
        "almostSoldOut": MessageLookupByLibrary.simpleMessage("Quasi esgotat"),
        "amount": MessageLookupByLibrary.simpleMessage("Quantitat"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Aparença"),
        "apply": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "approve": MessageLookupByLibrary.simpleMessage("Aprovar"),
        "approved": MessageLookupByLibrary.simpleMessage("Aprovat"),
        "arabic": MessageLookupByLibrary.simpleMessage("Àrab"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Estàs segur/a?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Estàs segur/a de voler eliminar el teu compte?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Assignat"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Almenys 3 caràcters..."),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("L’atribut ja existeix"),
        "attributes": MessageLookupByLibrary.simpleMessage("Atributs"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "S’han detectat elements d’àudio. Vols afegir-los al reproductor d’àudio?"),
        "availability": MessageLookupByLibrary.simpleMessage("Disponibilitat"),
        "availablePoints": m2,
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Valoració mitjana"),
        "back": MessageLookupByLibrary.simpleMessage("Enrere"),
        "backOrder": MessageLookupByLibrary.simpleMessage("En retrocomanda"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Tornar a la botiga"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Tornar a la cartera"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Col·leccions de bossetes"),
        "balance": MessageLookupByLibrary.simpleMessage("Saldo"),
        "bank": MessageLookupByLibrary.simpleMessage("Banc"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Tipus de llista de bàner"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Tipus de bàner"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("URL del bàner de Youtube"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Informació bàsica"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Converteix-te en venedor"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengalí"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Adreça de facturació"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "El Bluetooth no està activat"),
        "bleState": m3,
        "blog": MessageLookupByLibrary.simpleMessage("Bloc"),
        "booked": MessageLookupByLibrary.simpleMessage("Ja reservat"),
        "booking": MessageLookupByLibrary.simpleMessage("Reserva"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Reserva cancel·lada"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Confirmat"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Hi ha hagut un error. Si us plau, torna-ho a intentar més tard."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Historial de reserves"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Reservar ara"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Reservat amb èxit"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Resum de la reserva"),
        "bookingUnavailable": MessageLookupByLibrary.simpleMessage(
            "La reserva no està disponible"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bosnià"),
        "brand": MessageLookupByLibrary.simpleMessage("Marca"),
        "brazil": MessageLookupByLibrary.simpleMessage("Portuguès"),
        "burmese": MessageLookupByLibrary.simpleMessage("Birmà"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Compra ara"),
        "by": MessageLookupByLibrary.simpleMessage("per"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Per categoria"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Per preu"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "En registrar-te, acceptes les nostres "),
        "byTag": MessageLookupByLibrary.simpleMessage("Per etiqueta"),
        "call": MessageLookupByLibrary.simpleMessage("Trucada"),
        "callTo": MessageLookupByLibrary.simpleMessage("Trucar a"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Trucar al propietari de la botiga"),
        "canNotCreateOrder":
            MessageLookupByLibrary.simpleMessage("No es pot crear la comanda"),
        "canNotCreateUser":
            MessageLookupByLibrary.simpleMessage("No es pot crear l’usuari."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "No es poden obtenir els mètodes de pagament"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "No es poden obtenir els mètodes d’enviament"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "No es pot obtenir la informació del token."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "No es pot iniciar aquesta aplicació, assegura’t que la teva configuració a config.dart és correcta"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "No es pot carregar aquest enllaç"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Ho sentim, aquest vídeo no pot ser reproduït."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "No es pot guardar la comanda al lloc web"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "No es pot actualitzar la informació de l’usuari."),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel·lar"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "No es pot trobar aquest ID d\'ordre"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "No es permet seleccionar una data passada"),
        "cardHolder":
            MessageLookupByLibrary.simpleMessage("Titular de la targeta"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Número de targeta"),
        "cart": MessageLookupByLibrary.simpleMessage("Cistella"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Descompte de la cistella"),
        "cash": MessageLookupByLibrary.simpleMessage("Efectiu"),
        "categories": MessageLookupByLibrary.simpleMessage("Categories"),
        "category": MessageLookupByLibrary.simpleMessage("Categoria"),
        "change": MessageLookupByLibrary.simpleMessage("Canviar"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Canviar idioma"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Canviar impressora"),
        "changedCurrencyTo": m4,
        "chat": MessageLookupByLibrary.simpleMessage("Xat"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("Missatges"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Xatejar via Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Xatejar via WhatsApp"),
        "chatWithBot":
            MessageLookupByLibrary.simpleMessage("Xatejar amb el Bot"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Xatejar amb el propietari de la botiga"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Comprova el teu correu per l’enllaç de confirmació"),
        "checking": MessageLookupByLibrary.simpleMessage("Comprovant..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Finalitzar compra"),
        "chinese": MessageLookupByLibrary.simpleMessage("Xinès"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Xinès (simplificat)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Xinès (tradicional)"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Tria una categoria"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Tria de la galeria"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Tria del servidor"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Tria un pla"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Tria personal"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Tria un tipus"),
        "chooseYourPaymentMethod": MessageLookupByLibrary.simpleMessage(
            "Tria el teu mètode de pagament"),
        "city": MessageLookupByLibrary.simpleMessage("Ciutat"),
        "cityIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de ciutat és obligatori"),
        "clear": MessageLookupByLibrary.simpleMessage("Netejar"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Buida la cistella"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Esborrar conversa"),
        "close": MessageLookupByLibrary.simpleMessage("Tancar"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Tancat ara"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage(
            "Tarifa extra per contra reemborsament"),
        "color": MessageLookupByLibrary.simpleMessage("Color"),
        "comment": MessageLookupByLibrary.simpleMessage("Comentari"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Si us plau, escriu el teu comentari"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Comentari enviat amb èxit, si us plau, espera fins que el teu comentari sigui aprovat"),
        "complete": MessageLookupByLibrary.simpleMessage("Complet"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Confirmar eliminació del compte"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "El carretó es buidarà quan es realitzi una recàrrega."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Estàs segur/a que vols buidar el carretó?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Estàs segur/a que vols eliminar això? Aquesta acció no es pot desfer."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Estàs segur/a que vols esborrar aquest element?"),
        "connect": MessageLookupByLibrary.simpleMessage("Connectar"),
        "contact": MessageLookupByLibrary.simpleMessage("Contacte"),
        "content": MessageLookupByLibrary.simpleMessage("Contingut"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Continuar al pagament"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Continuar a la revisió"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Continuar a l’enviament"),
        "continues": MessageLookupByLibrary.simpleMessage("Continuar"),
        "conversations": MessageLookupByLibrary.simpleMessage("Converses"),
        "convertPoint": m5,
        "copied": MessageLookupByLibrary.simpleMessage("Copiat"),
        "copy": MessageLookupByLibrary.simpleMessage("Copiar"),
        "country": MessageLookupByLibrary.simpleMessage("País"),
        "countryIsNotSupported": m6,
        "countryIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de país és obligatori"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Codi de cupó"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "El cupó s’ha desat amb èxit."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "El teu codi de cupó no és vàlid"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Felicitats! El codi de cupó s’ha aplicat amb èxit"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Crear un compte"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "La teva publicació s’ha creat amb èxit com a esborrany. Si us plau, revisa-ho al teu lloc d’administració."),
        "createPost": MessageLookupByLibrary.simpleMessage("Crear publicació"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Crear producte"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Crear totes les variants"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Creat el: "),
        "currencies": MessageLookupByLibrary.simpleMessage("Monedes"),
        "currencyIsNotSupported": m7,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Contrasenya actual"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Actualment només tenim"),
        "customer": MessageLookupByLibrary.simpleMessage("Client"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Detall del client"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Nota del client"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Txec"),
        "danish": MessageLookupByLibrary.simpleMessage("Danès"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Tema fosc"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Tauler"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Dades buides"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Data ascendent"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Data de reserva"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Data descendent"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Data de finalització"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Data: Més recents"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Data: Més antics"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Data d’inici"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Data i hora"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Tancament per dates"),
        "daysAgo": m8,
        "debit": MessageLookupByLibrary.simpleMessage("Dèbit"),
        "decline": MessageLookupByLibrary.simpleMessage("Rebutjar"),
        "delete": MessageLookupByLibrary.simpleMessage("Esborrar"),
        "deleteAccount":
            MessageLookupByLibrary.simpleMessage("Eliminar compte"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Estàs segur/a que vols eliminar el teu compte? Si us plau, llegeix com afectarà l’eliminació del compte."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Compte eliminat amb èxit. La teva sessió ha expirat."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Esborrar-ho tot"),
        "delivered": MessageLookupByLibrary.simpleMessage("Lliurat"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Lliurat a"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Repartidor:"),
        "deliveryDate":
            MessageLookupByLibrary.simpleMessage("Data de lliurament"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Detalls de lliurament"),
        "deliveryManagement":
            MessageLookupByLibrary.simpleMessage("Lliurament"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Sense dades. Aquesta comanda ha estat eliminada."),
        "description": MessageLookupByLibrary.simpleMessage("Descripció"),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("No has rebut el codi?"),
        "direction": MessageLookupByLibrary.simpleMessage("Direcció"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Desactivar compra"),
        "discount": MessageLookupByLibrary.simpleMessage("Descompte"),
        "displayName": MessageLookupByLibrary.simpleMessage("Nom mostrat"),
        "distance": m9,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Encara no tens cap transacció"),
        "doYouWantToExitApp":
            MessageLookupByLibrary.simpleMessage("Vols sortir de l’aplicació?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Vols tancar la sessió?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "Apple Pay no està disponible en aquest dispositiu!"),
        "done": MessageLookupByLibrary.simpleMessage("Fet"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("No tens un compte?"),
        "download": MessageLookupByLibrary.simpleMessage("Descarregar"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Descarregar aplicació"),
        "draft": MessageLookupByLibrary.simpleMessage("Esborrany"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Conductor assignat"),
        "duration": MessageLookupByLibrary.simpleMessage("Durada"),
        "dutch": MessageLookupByLibrary.simpleMessage("Holandès"),
        "earnings": MessageLookupByLibrary.simpleMessage("Guany"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar: "),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Edita la informació del producte"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Editar"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egipci"),
        "email": MessageLookupByLibrary.simpleMessage("Correu electrònic"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Eliminar el teu compte et donarà de baixa de totes les llistes de correu."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "El correu electrònic que has introduït no existeix. Si us plau, torna-ho a intentar."),
        "emailIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de correu electrònic és obligatori"),
        "emailSubscription": MessageLookupByLibrary.simpleMessage(
            "Subscripció per correu electrònic"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sembla que encara no has afegit cap article a la bossa. Comença a comprar per omplir-la."),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "El teu comentari no pot estar buit"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Encara no has cercat articles. Comencem ara: nosaltres et ajudarem."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "No hi ha opcions d’enviament disponibles. Si us plau, assegura’t que la teva adreça s’ha introduït correctament, o contacta amb nosaltres si necessites ajuda."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "El nom d\'usuari/correu electrònic està buit"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Toca qualsevol cor al costat d’un producte per afegir-lo als preferits. Els guardarem aquí per a tu!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Activar per al pagament"),
        "enableForLogin": MessageLookupByLibrary.simpleMessage(
            "Activar per a l’inici de sessió"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Activar per a la cartera"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Activar mode vacances"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Si us plau, selecciona una data després de la primera data"),
        "endsIn": m10,
        "english": MessageLookupByLibrary.simpleMessage("Anglès"),
        "enterCaptcha": m11,
        "enterSendedCode":
            MessageLookupByLibrary.simpleMessage("Introdueix el codi enviat a"),
        "enterYourEmail": MessageLookupByLibrary.simpleMessage(
            "Introdueix el teu correu electrònic"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Introdueix el teu correu electrònic o nom d’usuari"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Introdueix el teu nom"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Introdueix els teus cognoms"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Si us plau, introdueix el teu número de mòbil"),
        "enterYourPassword": MessageLookupByLibrary.simpleMessage(
            "Introdueix la teva contrasenya"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Introdueix el teu número de telèfon per començar."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Introdueix el teu número de telèfon"),
        "error": m12,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "La quantitat introduïda és més gran que l’actual saldo de la cartera. Si us plau, torna-ho a intentar!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Si us plau, introdueix una adreça de correu electrònic vàlida."),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Si us plau, introdueix una contrasenya d’almenys 8 caràcters"),
        "evening": MessageLookupByLibrary.simpleMessage("Vespre"),
        "events": MessageLookupByLibrary.simpleMessage("Esdeveniments"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Data de lliurament prevista"),
        "expired": MessageLookupByLibrary.simpleMessage("Expirat"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Data d’expiració"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MM/AA"),
        "expiringInTime": m13,
        "external": MessageLookupByLibrary.simpleMessage("Extern"),
        "extraServices":
            MessageLookupByLibrary.simpleMessage("Serveis addicionals"),
        "failToAssign":
            MessageLookupByLibrary.simpleMessage("Error en assignar usuari"),
        "failedToGenerateLink":
            MessageLookupByLibrary.simpleMessage("Error en generar l’enllaç"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Error en carregar la configuració de l’aplicació. Si us plau, torna-ho a intentar o reinicia l’aplicació."),
        "failedToLoadImage":
            MessageLookupByLibrary.simpleMessage("Error en carregar la imatge"),
        "favorite": MessageLookupByLibrary.simpleMessage("Preferits"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Funció no disponible"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Productes destacats"),
        "featured": MessageLookupByLibrary.simpleMessage("Destacat"),
        "features": MessageLookupByLibrary.simpleMessage("Característiques"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "El fitxer és massa gran. Si us plau, tria un fitxer més petit!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "La pujada del fitxer ha fallat!"),
        "files": MessageLookupByLibrary.simpleMessage("Fitxers"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtre"),
        "fingerprintsTouchID": MessageLookupByLibrary.simpleMessage(
            "Empremtes dactilars, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Acabar la configuració"),
        "finnish": MessageLookupByLibrary.simpleMessage("Finès"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Sigues el primer a comentar aquesta publicació!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Nom"),
        "firstNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de nom és obligatori"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Primera renovació"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Descompte fixe al carretó"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Descompte fixe al producte"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("d’aquest producte"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Gratuït"),
        "french": MessageLookupByLibrary.simpleMessage("Francès"),
        "from": MessageLookupByLibrary.simpleMessage("Des de"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nom complet"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Configuració general"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Generant enllaç..."),
        "german": MessageLookupByLibrary.simpleMessage("Alemany"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Rebre notificacions"),
        "getNotified":
            MessageLookupByLibrary.simpleMessage("Rebre notificacions!"),
        "getPasswordLink": MessageLookupByLibrary.simpleMessage(
            "Obtenir enllaç de contrasenya"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Començar"),
        "goBack": MessageLookupByLibrary.simpleMessage("Tornar enrere"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Tornar a la pàgina d’inici"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Tornar a l’adreça"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Tornar a la revisió"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Tornar a l’enviament"),
        "greaterDistance": m14,
        "greek": MessageLookupByLibrary.simpleMessage("Grec"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Vendes brutes"),
        "grouped": MessageLookupByLibrary.simpleMessage("Agrupat"),
        "guests": MessageLookupByLibrary.simpleMessage("Convidats"),
        "hasBeenDeleted":
            MessageLookupByLibrary.simpleMessage("ha estat eliminat"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebreu"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Amagar sobre"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Amagar adreça"),
        "hideEmail":
            MessageLookupByLibrary.simpleMessage("Amagar correu electrònic"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Amagar mapa"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Amagar telèfon"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Amagar política"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hindi"),
        "history": MessageLookupByLibrary.simpleMessage("Història"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("Historial"),
        "home": MessageLookupByLibrary.simpleMessage("Inici"),
        "hour": MessageLookupByLibrary.simpleMessage("Hora"),
        "hoursAgo": m15,
        "hungarian": MessageLookupByLibrary.simpleMessage("Hongarès"),
        "hungary": MessageLookupByLibrary.simpleMessage("Hongarès"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Estic d’acord amb"),
        "imIn": MessageLookupByLibrary.simpleMessage("Estic dins"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Imatge destacada"),
        "imageGallery":
            MessageLookupByLibrary.simpleMessage("Galeria d’imatges"),
        "imageGenerate": MessageLookupByLibrary.simpleMessage("Generar imatge"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Imatge de xarxa"),
        "inStock": MessageLookupByLibrary.simpleMessage("En estoc"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Contrasenya incorrecta"),
        "india": MessageLookupByLibrary.simpleMessage("Hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Indonès"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Tancament immediat"),
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telèfon no vàlid"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Codi de verificació SMS no vàlid"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Any de naixement no vàlid"),
        "invoice": MessageLookupByLibrary.simpleMessage("Factura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Està tot configurat...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("està escrivint..."),
        "italian": MessageLookupByLibrary.simpleMessage("Italià"),
        "item": MessageLookupByLibrary.simpleMessage("Ítem"),
        "itemTotal": MessageLookupByLibrary.simpleMessage("Total d’articles: "),
        "items": MessageLookupByLibrary.simpleMessage("articles"),
        "itsOrdered": MessageLookupByLibrary.simpleMessage("S\'ha comandat!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Vull crear un compte"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japonès"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Mantenir"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("Coreà"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurd"),
        "language": MessageLookupByLibrary.simpleMessage("Idiomes"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "L’idioma s’ha actualitzat amb èxit"),
        "lao": MessageLookupByLibrary.simpleMessage("Laosià"),
        "lastName": MessageLookupByLibrary.simpleMessage("Cognoms"),
        "lastNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de cognoms és obligatori"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Últimes transaccions"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Productes més recents"),
        "layout": MessageLookupByLibrary.simpleMessage("Disseny"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Tema clar"),
        "link": MessageLookupByLibrary.simpleMessage("Enllaç"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Tipus de bàner de llista"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Vídeo de bàner de llista"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Llista de missatges"),
        "listening": MessageLookupByLibrary.simpleMessage("Escoltant..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Error en la càrrega!"),
        "loading": MessageLookupByLibrary.simpleMessage("Carregant..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Carregant enllaç..."),
        "location": MessageLookupByLibrary.simpleMessage("Ubicació"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Pantalla de bloqueig i seguretat"),
        "login": MessageLookupByLibrary.simpleMessage("Iniciar sessió"),
        "loginCanceled": MessageLookupByLibrary.simpleMessage(
            "L’inici de sessió s’ha cancel·lat"),
        "loginErrorServiceProvider": m16,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Error en iniciar sessió!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "No es pot iniciar sessió! Si us plau, contacta amb l’administrador per comprovar el teu compte/rol."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Sessió iniciada amb èxit!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Si us plau, inicia sessió per comentar"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Si us plau, inicia sessió per continuar"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Inicia sessió al teu compte"),
        "logout": MessageLookupByLibrary.simpleMessage("Tancar sessió"),
        "malay": MessageLookupByLibrary.simpleMessage("Malai"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Col·leccions d’home"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Gestionar clau API"),
        "manageStock": MessageLookupByLibrary.simpleMessage("Gestionar estoc"),
        "map": MessageLookupByLibrary.simpleMessage("Mapa"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead":
            MessageLookupByLibrary.simpleMessage("Marcar com a llegit"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Marcar com a enviat"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Marcar com a no llegit"),
        "maxAmountForPayment": m17,
        "maximumFileSizeMb": m18,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Potser més tard"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Ordre del menú"),
        "message": MessageLookupByLibrary.simpleMessage("Missatge"),
        "messageTo": MessageLookupByLibrary.simpleMessage("Enviar missatge a"),
        "minAmountForPayment": m19,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("La quantitat mínima és"),
        "minutesAgo": m20,
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Verificació mòbil"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("fa un moment"),
        "monthsAgo": m21,
        "more": MessageLookupByLibrary.simpleMessage("...més"),
        "moreFromStore": m22,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Més informació"),
        "morning": MessageLookupByLibrary.simpleMessage("Matí"),
        "mustBeBoughtInGroupsOf": m23,
        "mustSelectOneItem": MessageLookupByLibrary.simpleMessage(
            "Has de seleccionar 1 element"),
        "myCart": MessageLookupByLibrary.simpleMessage("La meva cistella"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Els meus punts"),
        "myProducts":
            MessageLookupByLibrary.simpleMessage("Els meus productes"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "No tens cap producte. Prova de crear-ne un!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("La meva cartera"),
        "myWishList":
            MessageLookupByLibrary.simpleMessage("La meva llista de desitjos"),
        "nItems": m24,
        "name": MessageLookupByLibrary.simpleMessage("Nom"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Nom a la targeta"),
        "nearbyPlaces": MessageLookupByLibrary.simpleMessage("Llocs propers"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Necessites tornar a iniciar sessió per fer efectiva l’actualització"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Holandès"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Contingut nou disponible!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nova contrasenya"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Nova variació"),
        "next": MessageLookupByLibrary.simpleMessage("Següent"),
        "niceName": MessageLookupByLibrary.simpleMessage("Nom agradable"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "No hi ha elements anteriors a l’historial"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Vaja, sembla que el blog ja no existeix"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "No s\'ha concedit permís per a la càmera. Si us plau, concedeix-ho a la configuració del teu dispositiu."),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Encara no hi ha converses"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Apareixerà un cop els teus clients comencin a xatejar amb tu"),
        "noData": MessageLookupByLibrary.simpleMessage("No hi ha més dades"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Encara no hi ha preferits."),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "No hi ha fitxers per descarregar."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "No hi ha elements següents a l’historial"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Sense connexió a Internet"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("No hi ha llistats a prop!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Sense comandes"),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Ho sentim, aquest producte no està accessible per al teu rol actual."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Aquest producte està disponible per a usuaris amb rols específics."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Si us plau, inicia sessió amb les credencials apropiades per accedir a aquest producte o contacta’ns per a més informació."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Vaja, sembla que aquesta pàgina ja no existeix!"),
        "noPrinters":
            MessageLookupByLibrary.simpleMessage("No hi ha impressores"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Sense producte"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("No s’han trobat resultats"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Sense opinions"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("No hi ha llocs disponibles"),
        "noThanks": MessageLookupByLibrary.simpleMessage("No, gràcies"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Ho sentim, no s’han trobat vídeos."),
        "none": MessageLookupByLibrary.simpleMessage("Cap"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Ho sentim, no hem trobat cap resultat."),
        "notFound": MessageLookupByLibrary.simpleMessage("No s’ha trobat"),
        "note": MessageLookupByLibrary.simpleMessage("Nota de comanda"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("nota"),
        "noteTransfer": MessageLookupByLibrary.simpleMessage("Nota (opcional)"),
        "notice": MessageLookupByLibrary.simpleMessage("Avís"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificacions"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Notificar les últimes ofertes i disponibilitat de productes"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("d’aquest producte"),
        "ok": MessageLookupByLibrary.simpleMessage("D’acord"),
        "on": MessageLookupByLibrary.simpleMessage("a"),
        "onSale": MessageLookupByLibrary.simpleMessage("En oferta"),
        "onVacation": MessageLookupByLibrary.simpleMessage("De vacances"),
        "online": MessageLookupByLibrary.simpleMessage("En línia"),
        "openMap": MessageLookupByLibrary.simpleMessage("Mapa"),
        "openNow": MessageLookupByLibrary.simpleMessage("Obert ara"),
        "options": MessageLookupByLibrary.simpleMessage("Opcions"),
        "optionsTotal": m25,
        "or": MessageLookupByLibrary.simpleMessage("O"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("o inicia sessió amb"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Confirmació de comanda"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Estàs segur/a de voler crear la comanda?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Data de la comanda"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Detalls de la comanda"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Historial de comandes"),
        "orderId": MessageLookupByLibrary.simpleMessage("ID de comanda: "),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("ID de comanda"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Número de comanda"),
        "orderNotes":
            MessageLookupByLibrary.simpleMessage("Notes de la comanda"),
        "orderNumber":
            MessageLookupByLibrary.simpleMessage("Número de comanda"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Cancel·lació revertida"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Cancel·lat"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Càrrega retornada"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Completat"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Denegat"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Expirat"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Fallit"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("En espera"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Pendent"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Pagament pendent"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Processat"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("Processant"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Reemborsat"),
        "orderStatusReversed": MessageLookupByLibrary.simpleMessage("Revertit"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Enviat"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Anul·lat"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Pots comprovar l’estat de la teva comanda utilitzant la nostra funció d’estat de lliurament. Rebràs un correu electrònic de confirmació de la comanda amb els detalls de la teva comanda i un enllaç per seguir-ne el progrés"),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Pots iniciar sessió al teu compte utilitzant el correu electrònic i la contrasenya definits anteriorment. Al teu compte pots editar les dades del teu perfil, comprovar l’historial de transaccions, editar la subscripció al butlletí."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Has realitzat la comanda amb èxit"),
        "orderSuccessTitle2":
            MessageLookupByLibrary.simpleMessage("El teu compte"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Resum de la comanda"),
        "orderTotal":
            MessageLookupByLibrary.simpleMessage("Total de la comanda"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Seguiment de la comanda"),
        "orders": MessageLookupByLibrary.simpleMessage("Comandes"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("Verificació OTP"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Detalls del nostre banc"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Fora d’estoc"),
        "pageView": MessageLookupByLibrary.simpleMessage("Vista de pàgina"),
        "paid": MessageLookupByLibrary.simpleMessage("Pagat"),
        "paidStatus":
            MessageLookupByLibrary.simpleMessage("Estat del pagament"),
        "password": MessageLookupByLibrary.simpleMessage("Contrasenya"),
        "pasteYourImageUrl": MessageLookupByLibrary.simpleMessage(
            "Enganxa l’URL de la teva imatge"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Pagar amb la cartera"),
        "payNow": MessageLookupByLibrary.simpleMessage("Pagar ara"),
        "payWithAmount": m26,
        "payment": MessageLookupByLibrary.simpleMessage("Pagament"),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Mètode de pagament"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Aquest mètode de pagament no està suportat"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Mètodes de pagament"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Pagament amb èxit"),
        "pending": MessageLookupByLibrary.simpleMessage("Pendent"),
        "persian": MessageLookupByLibrary.simpleMessage("Persa"),
        "phone": MessageLookupByLibrary.simpleMessage("Telèfon"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("El telèfon està buit"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Format: +84123456789"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de número de telèfon és obligatori"),
        "phoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telèfon"),
        "phoneNumberVerification": MessageLookupByLibrary.simpleMessage(
            "Verificació del número de telèfon"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Tria una data i hora"),
        "placeMyOrder":
            MessageLookupByLibrary.simpleMessage("Realitzar la comanda"),
        "playAll": MessageLookupByLibrary.simpleMessage("Reprodueix-ho tot"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Si us plau, afegeix un preu"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Si us plau, accepta els nostres termes"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Si us plau, permet l’accés a la càmera i la galeria"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Si us plau, comprova la connexió a Internet!"),
        "pleaseChooseCategory": MessageLookupByLibrary.simpleMessage(
            "Si us plau, tria una categoria"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Si us plau, introdueix el nom del producte"),
        "pleaseFillCode": MessageLookupByLibrary.simpleMessage(
            "Si us plau, introdueix el teu codi"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Si us plau, augmenta o disminueix la quantitat per continuar."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Si us plau, omple els camps requerits"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Si us plau, omple tots els camps"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Si us plau, selecciona una data"),
        "pleaseSelectALocation": MessageLookupByLibrary.simpleMessage(
            "Si us plau, tria una ubicació"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Si us plau, tria una opció per a cada atribut del producte"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Si us plau, selecciona almenys 1 atribut de variació per a cada atribut actiu"),
        "pleaseSelectImages": MessageLookupByLibrary.simpleMessage(
            "Si us plau, selecciona imatges"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Si us plau, selecciona les opcions requerides!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Si us plau, inicia sessió al teu compte abans de pujar cap fitxer."),
        "pleasefillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Si us plau, omple tots els camps correctament"),
        "point": MessageLookupByLibrary.simpleMessage("Punt"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "No s’ha trobat cap configuració de punt de descompte al servidor"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Si us plau, introdueix el punt de descompte"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Punt de descompte màxim"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "No tens prou punts de descompte. El teu total de punts de descompte és"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Has arribat al punt de descompte màxim"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "El valor total de descompte supera el total de la factura"),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "El punt de descompte s’ha eliminat"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "El punt de descompte s’ha aplicat amb èxit"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Hi ha una regla de descompte per aplicar els teus punts a la cistella"),
        "polish": MessageLookupByLibrary.simpleMessage("Polonès"),
        "popular": MessageLookupByLibrary.simpleMessage("Popular"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularitat"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Aquesta adreça es guardarà al teu dispositiu local. NO és l’adreça de l’usuari."),
        "postContent": MessageLookupByLibrary.simpleMessage("Contingut"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "La creació de la teva publicació ha fallat"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Imatge destacada"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Gestió de publicacions"),
        "postProduct":
            MessageLookupByLibrary.simpleMessage("Publicar producte"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "La teva publicació s’ha creat amb èxit"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Títol"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Prepagat"),
        "prev": MessageLookupByLibrary.simpleMessage("Anterior"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Preu: D’alt a baix"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Preu: De baix a alt"),
        "prices": MessageLookupByLibrary.simpleMessage("Menús"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Imprimir rebut"),
        "printer": MessageLookupByLibrary.simpleMessage("Impressora"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("No s’ha trobat l’impressora"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Selecció d’impressora"),
        "printing": MessageLookupByLibrary.simpleMessage("Imprimint..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Privacitat i termes"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Política de privadesa"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Privacitat i termes"),
        "private": MessageLookupByLibrary.simpleMessage("Privat"),
        "product": MessageLookupByLibrary.simpleMessage("Producte"),
        "productAdded": MessageLookupByLibrary.simpleMessage("Producte afegit"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "El teu producte apareixerà després de la revisió."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Ho sentim, aquest producte no pot ser accedit ja que ha caducat."),
        "productName": MessageLookupByLibrary.simpleMessage("Nom del producte"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "El nom del producte no pot estar buit"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "El tipus de producte variable necessita almenys una variant"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "El tipus de producte simple necessita el nom i el preu regular"),
        "productOutOfStock": MessageLookupByLibrary.simpleMessage(
            "Hi ha un producte sense estoc"),
        "productRating":
            MessageLookupByLibrary.simpleMessage("La teva valoració"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Revisió del producte"),
        "productType":
            MessageLookupByLibrary.simpleMessage("Tipus de producte"),
        "products": MessageLookupByLibrary.simpleMessage("Productes"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("ID de PromptPay:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("Nom de PromptPay:"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("Tipus de PromptPay:"),
        "publish": MessageLookupByLibrary.simpleMessage("Publicar"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Estira per carregar més"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "El codi QR s’ha guardat amb èxit."),
        "qRCodeSaveFailure":
            MessageLookupByLibrary.simpleMessage("Error en guardar el codi QR"),
        "qty": MessageLookupByLibrary.simpleMessage("qtat"),
        "qtyTotal": m27,
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "La quantitat actual és més gran que la quantitat en estoc"),
        "rate": MessageLookupByLibrary.simpleMessage("Valorar"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Valora l’aplicació"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Valora aquesta aplicació"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Si t\'agrada aquesta aplicació, si us plau, dedica una mica del teu temps a valorar-la! Realment ens ajuda i no hauries de trigar més d\'un minut."),
        "rating": MessageLookupByLibrary.simpleMessage("Valoració"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Si us plau, valora abans d’enviar el teu comentari"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Reordenar"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Opinions"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Diners rebuts"),
        "receiver": MessageLookupByLibrary.simpleMessage("Receptor"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Cerques recents"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("La teva vista recent"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Vist recentment"),
        "recents": MessageLookupByLibrary.simpleMessage("Recents"),
        "recommended": MessageLookupByLibrary.simpleMessage("Recomanat"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Totals recurrents"),
        "refresh": MessageLookupByLibrary.simpleMessage("Actualitzar"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "La sol·licitud de reemborsament de la comanda ha fallat"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "S’ha sol·licitat amb èxit el reemborsament de la teva comanda!"),
        "refundRequest": MessageLookupByLibrary.simpleMessage(
            "Sol·licitud de reemborsament"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Reemborsament sol·licitat"),
        "refunds": MessageLookupByLibrary.simpleMessage("Reembossaments"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Regenerar resposta"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Registrar com a"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Registrar com a venedor"),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("El registre ha fallat"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Registre amb èxit"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Preu regular"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Blocs relacionats"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Allibera per carregar més"),
        "remove": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "removeFromWishList": MessageLookupByLibrary.simpleMessage(
            "Eliminar de la llista de desitjos"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Sol·licitar reserva"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Has sol·licitat massa codis en poc temps. Si us plau, torna-ho a intentar més tard."),
        "resend": MessageLookupByLibrary.simpleMessage(" REENVIAR"),
        "reset": MessageLookupByLibrary.simpleMessage("Reiniciar"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Restablir contrasenya"),
        "resetYourPassword": MessageLookupByLibrary.simpleMessage(
            "Restableix la teva contrasenya"),
        "results": MessageLookupByLibrary.simpleMessage("Resultats"),
        "retry": MessageLookupByLibrary.simpleMessage("Tornar a intentar"),
        "review": MessageLookupByLibrary.simpleMessage("Revisió"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Aprovació de la revisió"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "El teu comentari s’ha enviat i està esperant aprovació!"),
        "reviewSent": MessageLookupByLibrary.simpleMessage(
            "El teu comentari s’ha enviat!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Comentaris"),
        "romanian": MessageLookupByLibrary.simpleMessage("Romanès"),
        "russian": MessageLookupByLibrary.simpleMessage("Rus"),
        "sale": m28,
        "salePrice": MessageLookupByLibrary.simpleMessage("Preu de venda"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Desar adreça"),
        "saveAddressSuccess":
            MessageLookupByLibrary.simpleMessage("Adreça desada amb èxit"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Desa per més tard"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Guardar codi QR"),
        "saveToWishList": MessageLookupByLibrary.simpleMessage(
            "Desa a la llista de desitjos"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Aquest ítem no es pot escanejar"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Per escanejar una comanda, primer has d’iniciar sessió"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Aquesta comanda no està disponible per al teu compte"),
        "search": MessageLookupByLibrary.simpleMessage("Cerca"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Cerca per nom del país o codi de trucada"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Cerca per nom..."),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Cerca articles"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Si us plau, escriu alguna cosa al camp de cerca"),
        "searchOrderId":
            MessageLookupByLibrary.simpleMessage("Cerca amb ID de comanda..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Cercar lloc"),
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Cercant adreça"),
        "secondsAgo": m29,
        "seeAll": MessageLookupByLibrary.simpleMessage("Veure-ho tot"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Continua per veure el nou contingut a la teva aplicació."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Veure comanda"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Veure comentaris"),
        "select": MessageLookupByLibrary.simpleMessage("Seleccionar"),
        "selectAddress":
            MessageLookupByLibrary.simpleMessage("Selecciona adreça"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Seleccionar tot"),
        "selectDates":
            MessageLookupByLibrary.simpleMessage("Seleccionar dates"),
        "selectFileCancelled": MessageLookupByLibrary.simpleMessage(
            "Selecció de fitxer cancel·lada!"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Selecciona imatge"),
        "selectNone":
            MessageLookupByLibrary.simpleMessage("No seleccionar res"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Seleccionar impressora"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Seleccionar rol"),
        "selectStore":
            MessageLookupByLibrary.simpleMessage("Seleccionar botiga"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Selecciona el color"),
        "selectTheFile":
            MessageLookupByLibrary.simpleMessage("Selecciona l’arxiu"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Selecciona el punt"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Selecciona la quantitat"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Selecciona la mida"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Tornar"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Obtenir codi"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Enviar SMS al propietari de la botiga"),
        "serbian": MessageLookupByLibrary.simpleMessage("Serbi"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("La sessió ha caducat"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Si us plau, configura una adreça a la pàgina de configuració"),
        "settings": MessageLookupByLibrary.simpleMessage("Configuració"),
        "setup": MessageLookupByLibrary.simpleMessage("Configurar"),
        "share": MessageLookupByLibrary.simpleMessage("Compartir"),
        "shipped": MessageLookupByLibrary.simpleMessage("Enviat"),
        "shipping": MessageLookupByLibrary.simpleMessage("Enviament"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Adreça d’enviament"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Mètode d’enviament"),
        "shop": MessageLookupByLibrary.simpleMessage("Botiga"),
        "shopEmail": MessageLookupByLibrary.simpleMessage(
            "Correu electrònic de la botiga"),
        "shopName": MessageLookupByLibrary.simpleMessage("Nom de la botiga"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Comandes de la botiga"),
        "shopPhone":
            MessageLookupByLibrary.simpleMessage("Telèfon de la botiga"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Slug de la botiga"),
        "shoppingCartItems": m30,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Descripció curta"),
        "showAllMyOrdered": MessageLookupByLibrary.simpleMessage(
            "Mostrar totes les meves comandes"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Detalls"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Mostrar galeria"),
        "showLess": MessageLookupByLibrary.simpleMessage("Mostrar menys"),
        "showMore": MessageLookupByLibrary.simpleMessage("Mostrar més"),
        "signIn": MessageLookupByLibrary.simpleMessage("Iniciar sessió"),
        "signInWithEmail": MessageLookupByLibrary.simpleMessage(
            "Iniciar sessió amb correu electrònic"),
        "signUp": MessageLookupByLibrary.simpleMessage("Registrar-se"),
        "signup": MessageLookupByLibrary.simpleMessage("Registrar-se"),
        "simple": MessageLookupByLibrary.simpleMessage("Simple"),
        "size": MessageLookupByLibrary.simpleMessage("Mida"),
        "skip": MessageLookupByLibrary.simpleMessage("Ometre"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("Eslovac"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "El codi SMS ha caducat. Si us plau, torna a enviar el codi de verificació i torna-ho a provar."),
        "sold": m31,
        "soldBy": MessageLookupByLibrary.simpleMessage("Venut per"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Hi ha hagut un problema. Si us plau, torna-ho a intentar més tard."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Ordenar per"),
        "sortCode":
            MessageLookupByLibrary.simpleMessage("Codi de classificació"),
        "spanish": MessageLookupByLibrary.simpleMessage("Espanyol"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Parla no disponible"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Comença a explorar"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Comença a comprar"),
        "state": MessageLookupByLibrary.simpleMessage("Estat"),
        "stateIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp d’estat és obligatori"),
        "stateProvince":
            MessageLookupByLibrary.simpleMessage("Estat / Província"),
        "status": MessageLookupByLibrary.simpleMessage("Estat"),
        "stock": MessageLookupByLibrary.simpleMessage("Estoc"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Quantitat en estoc"),
        "stop": MessageLookupByLibrary.simpleMessage("Aturar"),
        "store": MessageLookupByLibrary.simpleMessage("Botiga"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Adreça de la botiga"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Bàner"),
        "storeBrand":
            MessageLookupByLibrary.simpleMessage("Marca de la botiga"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("La botiga està tancada ara"),
        "storeEmail": MessageLookupByLibrary.simpleMessage(
            "Correu electrònic de la botiga"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Informació de la botiga"),
        "storeListBanner": MessageLookupByLibrary.simpleMessage(
            "Bàner de llista de la botiga"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Ubicació de la botiga"),
        "storeLogo":
            MessageLookupByLibrary.simpleMessage("Logotip de la botiga"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Bàner mòbil de la botiga"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Configuració de la botiga"),
        "storeSliderBanner": MessageLookupByLibrary.simpleMessage(
            "Bàner de diapositives de la botiga"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Bàner estàtic de la botiga"),
        "storeVacation":
            MessageLookupByLibrary.simpleMessage("Vacances de la botiga"),
        "stores": MessageLookupByLibrary.simpleMessage("Botigues"),
        "street": MessageLookupByLibrary.simpleMessage("Carrer"),
        "street2": MessageLookupByLibrary.simpleMessage("Carrer 2"),
        "streetIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de nom del carrer és obligatori"),
        "streetName": MessageLookupByLibrary.simpleMessage("Nom del carrer"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Apartament"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Bloc"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Envia la teva publicació"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "support": MessageLookupByLibrary.simpleMessage("Suport"),
        "swahili": MessageLookupByLibrary.simpleMessage("Suahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("Suec"),
        "tagNotExist": MessageLookupByLibrary.simpleMessage(
            "Aquesta etiqueta no existeix"),
        "tags": MessageLookupByLibrary.simpleMessage("Etiquetes"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Fer foto"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tàmil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Toca per seleccionar aquesta ubicació"),
        "tapTheMicToTalk":
            MessageLookupByLibrary.simpleMessage("Toca el micròfon per parlar"),
        "tax": MessageLookupByLibrary.simpleMessage("Impost"),
        "thailand": MessageLookupByLibrary.simpleMessage("Tailandès"),
        "theFieldIsRequired": m32,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Aquesta data no està disponible"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Aquesta funcionalitat no suporta l’idioma actual"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Aquest és el rol de client"),
        "thisIsVendorRole":
            MessageLookupByLibrary.simpleMessage("Aquest és el rol de venedor"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Aquesta plataforma no suporta la vista web"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Aquest producte no està suportat"),
        "tickets": MessageLookupByLibrary.simpleMessage("Entrades"),
        "time": MessageLookupByLibrary.simpleMessage("Temps"),
        "title": MessageLookupByLibrary.simpleMessage("Títol"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Títol: A a Z"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Títol: Z a A"),
        "tooManyFaildedLogin": MessageLookupByLibrary.simpleMessage(
            "Massa intents d’inici de sessió fallits. Si us plau, torna-ho a intentar més tard."),
        "topUp": MessageLookupByLibrary.simpleMessage("Recarregar"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Producte de recàrrega no trobat"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "El valor total de la comanda ha de ser com a mínim de"),
        "totalProducts": m33,
        "totalTax": MessageLookupByLibrary.simpleMessage("Impost total"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("El número de seguiment és"),
        "trackingPage":
            MessageLookupByLibrary.simpleMessage("Pàgina de seguiment"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transacció cancel·lada"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Detall de la transacció"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("La transacció ha fallat"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Comissió de transacció"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Resultat de la transacció"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transferir"),
        "transferConfirm": MessageLookupByLibrary.simpleMessage(
            "Confirmació de transferència"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "No pots transferir a aquest usuari"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("La transferència ha fallat"),
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Transferència amb èxit"),
        "turkish": MessageLookupByLibrary.simpleMessage("Turc"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Activar Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Escriu un missatge..."),
        "typeYourMessage": MessageLookupByLibrary.simpleMessage(
            "Escriu el teu missatge aquí..."),
        "typing": MessageLookupByLibrary.simpleMessage("Escrivint..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ucraïnès"),
        "unavailable": MessageLookupByLibrary.simpleMessage("No disponible"),
        "undo": MessageLookupByLibrary.simpleMessage("Desfer"),
        "unpaid": MessageLookupByLibrary.simpleMessage("No pagat"),
        "update": MessageLookupByLibrary.simpleMessage("Actualitzar"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Error en actualitzar!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Actualitzar informació"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Actualitzar contrasenya"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("Actualitzar estat"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Actualitzat amb èxit!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Actualitzar perfil"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Pujar fitxer"),
        "uploadProduct": MessageLookupByLibrary.simpleMessage("Pujar producte"),
        "uploading": MessageLookupByLibrary.simpleMessage("Pujant"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m34,
        "useNow": MessageLookupByLibrary.simpleMessage("Utilitza ara"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Utilitza aquesta imatge"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Aquest nom d’usuari/correu electrònic no està disponible."),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "El nom d’usuari o la contrasenya són incorrectes."),
        "username": MessageLookupByLibrary.simpleMessage("Nom d’usuari"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Es requereix nom d’usuari i contrasenya"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Missatge de vacances"),
        "vacationType":
            MessageLookupByLibrary.simpleMessage("Tipus de vacances"),
        "validUntilDate": m35,
        "variable": MessageLookupByLibrary.simpleMessage("Variable"),
        "variation": MessageLookupByLibrary.simpleMessage("Variació"),
        "vendor": MessageLookupByLibrary.simpleMessage("Venedor"),
        "vendorAdmin":
            MessageLookupByLibrary.simpleMessage("Administrador del venedor"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Informació del venedor"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Codi de verificació (6 dígits)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Verificar"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Amb la cartera"),
        "video": MessageLookupByLibrary.simpleMessage("Vídeo"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamita"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Veure a Google Maps"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Veure transaccions recents"),
        "visible": MessageLookupByLibrary.simpleMessage("Visible"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Visitar botiga"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "Esperant la càrrega d’imatge"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Esperant publicar producte"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Esperant confirmació"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Saldo de la cartera"),
        "walletName": MessageLookupByLibrary.simpleMessage("Nom de la cartera"),
        "warning": m36,
        "warningCurrencyMessageForWallet": m37,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Hem trobat bloc(s)"),
        "weFoundProducts": m38,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Necessitem accés a la càmera per escanejar el codi QR o el codi de barres."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "S\'ha enviat un codi d\'autenticació a"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "T’enviarem notificacions quan hi hagi nous productes disponibles o ofertes. Sempre pots desactivar-ho a la configuració."),
        "webView": MessageLookupByLibrary.simpleMessage("Vista web"),
        "week": m39,
        "welcome": MessageLookupByLibrary.simpleMessage("Benvingut/a"),
        "welcomeUser": m40,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("Quin idioma prefereixes?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Si us plau, posa’t en contacte amb l’administrador per aprovar la teva inscripció."),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Col·leccions de dona"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Escriu el teu comentari"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Escriu la teva nota"),
        "yearsAgo": m41,
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Només pots comprar d’una única botiga."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Només pots comprar"),
        "youHaveAssignedToOrder": m42,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Has guardat l’adreça al teu fitxer local amb èxit!"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Tens \$point punts"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Potser també t’agradarà"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Necessites iniciar sessió per fer el pagament"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "No se’t tornarà a preguntar la propera vegada després de completar-ho"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "El teu compte està en revisió. Si us plau, contacta amb l’administrador si necessites ajuda"),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "La teva adreça ja existeix en el teu dispositiu"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "L\'adreça s\'ha desat al teu dispositiu"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "La teva sol·licitud està en revisió."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("La teva bossa està buida"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("Detall de la teva reserva"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Els teus guanys aquest mes"),
        "yourNote": MessageLookupByLibrary.simpleMessage("La teva nota"),
        "yourOrderHasBeenAdded":
            MessageLookupByLibrary.simpleMessage("La teva comanda s’ha afegit"),
        "yourOrders":
            MessageLookupByLibrary.simpleMessage("Les teves comandes"),
        "yourProductIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "El teu producte està en revisió"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "El teu nom d’usuari o correu electrònic"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Codi postal"),
        "zipCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "El camp de codi postal és obligatori")
      };
}
