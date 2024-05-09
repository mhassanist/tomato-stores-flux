import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/boxes.dart';
import 'address_provider.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _countryController =
      TextEditingController(text: "Egypt");
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddressUpdateNotifier>(
      create: (_) => AddressUpdateNotifier(),
      child: Consumer<AddressUpdateNotifier>(
        builder: (context, notifier, _) {
          return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                backgroundColor: Theme.of(context).primaryColorLight,
                leading: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.arrow_back_ios),
                ),
                title: Text(
                  "Add Address",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        controller: _countryController,
                        decoration: InputDecoration(labelText: 'Country'),
                        readOnly: true,
                      ),
                      TextFormField(
                        controller: _cityController,
                        decoration: InputDecoration(labelText: 'City'),
                        validator: (value) => value == null || value.isEmpty
                            ? 'Please enter a city'
                            : null,
                      ),
                      TextFormField(
                        controller: _streetController,
                        decoration: InputDecoration(labelText: 'Street'),
                        maxLines: 3,
                        validator: (value) => value == null || value.isEmpty
                            ? 'Please enter a street address'
                            : null,
                      ),
                      TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(labelText: 'Phone Number'),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a phone number';
                          }
                          if (value.length != 11 || !value.startsWith('01')) {
                            return 'Phone number must be 11 digits and start with 01';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await notifier.updateAddress(
                                UserBox().userInfo!.id!,
                                UserBox().userInfo!.firstName!,
                                UserBox().userInfo!.lastName!,
                                _countryController.text,
                                _cityController.text,
                                _streetController.text,
                                " ", // Assuming second street is optional and blank
                                _phoneNumberController.text,
                              );
                              if (notifier.updateState ==
                                  UpdateAddressStates.success) {
                                Navigator.of(context)
                                    .pop(); // Close the page on successful update
                              } else if (notifier.updateState ==
                                      UpdateAddressStates.errorUpdateAddress ||
                                  notifier.updateState ==
                                      UpdateAddressStates.errorWebAccess) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'Failed to update address, please try again.')),
                                );
                              }
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }

  @override
  void dispose() {
    _countryController.dispose();
    _cityController.dispose();
    _phoneNumberController.dispose();
    _streetController.dispose();
    super.dispose();
  }
}
