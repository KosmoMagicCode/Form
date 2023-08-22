import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../generated/l10n.dart';

class FormWidget extends StatefulWidget {
  FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _lifeStoryController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();


  var _hiddenPass = true;
  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _lifeStoryController.dispose();
    _passController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mobileFormatter = PhoneNumberTextInputFormatter();
    final List<String> countries = ['Russia', 'Ukraine', 'Germany', 'France'];
    String selectedCountry = 'Russia';
    return Scaffold(
      key: _scaffoldKey,
        appBar: AppBar(title: Text(S.current.register_page_header)),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                    controller: _nameController,
                    validator: _validateName,
                    decoration: InputDecoration(
                      labelText:
                          S.of(context).register_page_filed_name_label_text,
                      helperText:
                          S.of(context).register_page_filed_name_helper_text,
                      prefixIcon: const Icon(Icons.person),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _nameController.clear();
                        },
                        icon: Icon(
                          Icons.delete_outline,
                          color: Theme.of(context).focusColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Theme.of(context).primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).indicatorColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _phoneController,
                    maxLength: 15,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      mobileFormatter,
                    ],
                    validator: (value) => _validatePhone(value!)
                        ? null
                        : S.current.phone_error_text_symbol,
                    decoration: InputDecoration(
                      labelText: S.of(context).phone_label_text,
                      helperText: S.of(context).phone_helper_text,
                      prefixIcon: const Icon(Icons.phone),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _phoneController.clear();
                        },
                        icon: Icon(
                          Icons.delete_outline,
                          color: Theme.of(context).focusColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Theme.of(context).primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).indicatorColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: _validateEmail,
                    decoration: InputDecoration(
                      labelText: S.of(context).email_label_text,
                      icon: const Icon(Icons.mail),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).indicatorColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.map),
                      labelText: 'Country?'),
                  items: countries.map((country) {
                    return DropdownMenuItem(
                      child: Text(country),
                      value: country,
                    );
                  }).toList(),
                  onChanged: (country) {
                    print(country);
                    setState(() {
                      selectedCountry = country as String;
                      //newUser.country = country;
                    });
                  },
                  value: selectedCountry,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    controller: _lifeStoryController,
                    maxLines: 3,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(100),
                    ],
                    decoration: InputDecoration(
                      labelText: S.of(context).life_story,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Theme.of(context).primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).indicatorColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    controller: _passController,
                    maxLength: 20,
                    obscureText: _hiddenPass,
                    validator: _validatePass,
                    decoration: InputDecoration(
                      hintText: S.current.password_hint_text,
                      labelText: S.current.password_label_text,
                      icon: const Icon(Icons.security),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _hiddenPass = !_hiddenPass;
                          });
                        },
                        icon: _hiddenPass
                            ? Icon(
                                Icons.visibility,
                                color: Theme.of(context).hintColor,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Theme.of(context).hintColor,
                              ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).indicatorColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    controller: _confirmPassController,
                    maxLength: 20,
                    obscureText: _hiddenPass,
                    // validator: _validatePass,
                    decoration: InputDecoration(
                      hintText: S.current.confirm_password_hint_text,
                      labelText: S.current.confirm_password_label_text,
                      icon: const Icon(Icons.edit),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).indicatorColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 50)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).indicatorColor),
                      overlayColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                    ),
                    onPressed: _submitForm,
                    child: Text(
                      S.of(context).register_page_button_text,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
          ),
        ));
  }

  void _submitForm() {

    if (_formKey.currentState!.validate()) {
      print(_nameController.text);
      print(_phoneController.text);
      _formKey.currentState!.save();
    } else {
     _showMessage(message: S.current.message_error_form);
    }
  }

void _showMessage({required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.red,
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
    );
}

  String? _validateName(String? value) {
    final nameExp = RegExp(r'^[A-Za-z ]+$');
    if (value == null || value == '') {
      return S.current.register_page_filed_name_error_text_empty;
    } else if (!nameExp.hasMatch(value)) {
      return S.current.register_page_filed_name_error_text_symbol;
    } else {
      return null;
    }
  }

  bool _validatePhone(String value) {
    final phoneExp = RegExp(r'^\(\d\d\d\) \d\d\d\-\d\d-\d\d$');
    return phoneExp.hasMatch(value);
  }

  String? _validateEmail(String? value) {
    if (value == null || value == '') {
      return S.current.email_error_text_empty;
    } else if (!_emailController.text.contains('@') ||
        !_emailController.text.contains('.')) {
      return S.current.email_error_not_et;
    } else {
      return null;
    }
  }

  String? _validatePass(String? value) {
    if (value == null) {
      return S.current.pass_error_is_empty;
    } else if (value.length < 8) {
      return S.current.pass_error_lenght;
    } else if (_passController.text != _confirmPassController.text) {
      return S.current.pass_error_dont_match;
    } else {
      return null;
    }
  }
}

class PhoneNumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;
    final StringBuffer newText = new StringBuffer();
    if (newTextLength >= 3) {
      newText.write(
          '(' + newValue.text.substring(0, usedSubstringIndex = 3) + ') ');
      if (newValue.selection.end >= 5) selectionIndex += 3;
    }
    if (newTextLength >= 6) {
      newText.write(newValue.text.substring(3, usedSubstringIndex = 6));
      if (newValue.selection.end >= 6) selectionIndex++;
    }
    if (newTextLength >= 8) {
      newText.write(
          '-' + newValue.text.substring(6, usedSubstringIndex = 8) + '-');
      if (newValue.selection.end >= 8) selectionIndex++;
    }
    if (newTextLength >= 9) {
      newText.write(newValue.text.substring(8, usedSubstringIndex = 9));
      if (newValue.selection.end >= 9) selectionIndex++;
    }
    if (newTextLength >= usedSubstringIndex)
      newText.write(newValue.text.substring(usedSubstringIndex));
    return new TextEditingValue(
      text: newText.toString(),
      selection: new TextSelection.collapsed(offset: newText.length),
    );
  }
}
