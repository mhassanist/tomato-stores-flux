import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/tools/navigate_tools.dart';
import '../../models/index.dart';
import 'loyalty_provider.dart';

/// [done] if not logged in, direct to login page
/// if logged in, check if has address or not. If has, show phone number
/// if no address direct to add address screen
///
/// connect to firebase and get barcode & points if exists
/// if not, generate barcode = phone number and save it LoyaltyUsers collection
/// show barcode and loyalty points : INVNet
/// firestore cloud function to update user's loyalty points after each new invoice added
///  --
/// show store bill history

class LoyaltyPage extends StatefulWidget {
  const LoyaltyPage({super.key});

  @override
  State<LoyaltyPage> createState() => _LoyaltyPageState();
}

class _LoyaltyPageState extends State<LoyaltyPage> {
  @override
  Widget build(BuildContext context) {
    var _user = Provider.of<UserModel>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoyaltyProvider>(create: (_) {
          return LoyaltyProvider();
        })
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Loyalty"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: _buildBody(context, _user),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, UserModel user) {
    if (user.loggedIn) {
      return _loggedInState(context);
    } else {
      return _notLoggedInState(context);
    }
  }

  Widget _loggedInState(BuildContext context) {
    // return Container(
    //   child: Text('Logged in'),
    // );

    var loyaltyProvider = Provider.of<LoyaltyProvider>(context);
    if (loyaltyProvider.connectionState == ConnectionState.waiting) {
      return Center(child: CircularProgressIndicator());
    } else {
      return _phoneWidget(context, loyaltyProvider.userPhone);
    }
    return Consumer<LoyaltyProvider>(
      builder: (context, userPhoneProvider, _) {
        return FutureBuilder(
          future: userPhoneProvider.fetchUserPhone("msaudi.cse@gmail.com"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
            } else if (snapshot.hasError) {
              return _errorState(context);
            } else {}
          },
        );
      },
    );
  }

  Widget _notLoggedInState(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          NavigateTools.navigateToLogin(
            context,
            replacement: false,
          );
        },
        child: Text("Login"),
      ),
    );
  }

  Widget _errorState(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Error fetching user phone.',
          style: TextStyle(color: Colors.red),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Handle action for adding shipping address
          },
          child: const Text('Add Shipping Address'),
        ),
      ],
    );
  }

  Widget _phoneWidget(BuildContext context, String phoneNumber) {
    return Center(
      child: Text(
        "Phone Number: $phoneNumber",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
//
//
// class LoyaltyPage extends StatefulWidget {
//   const LoyaltyPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoyaltyPage> createState() => _LoyaltyPageState();
// }
//
// class _LoyaltyPageState extends State<LoyaltyPage> {
//   bool isLoggedIn = false;
//
//   @override
//   void initState() {
//     isLoggedIn = UserBox().isLoggedIn;
//     LoyaltyWebService().getUserPhone("msaudi.cse@gmail.com");
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var _user = Provider.of<UserModel>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Loyalty"),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: _user.loggedIn
//               ? Container(
//                   child: Text("I'm logged in: "),
//                 )
//               : Center(
//                   child: ElevatedButton(
//                       onPressed: () {
//                         NavigateTools.navigateToLogin(
//                           context,
//                           replacement: false,
//                         );
//                       },
//                       child: Text("login")),
//                 ),
//         ),
//       ),
//     );
//   }
// }
