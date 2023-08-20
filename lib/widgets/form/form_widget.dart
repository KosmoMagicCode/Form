import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class FormWidget extends StatefulWidget {
  FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(S.current.register_page_header)),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                    controller: _nameController,
                    validator: (value) => value == null
                        ? S.of(context).register_page_filed_name_error_text
                        : null,
                    decoration: InputDecoration(
                      labelText:
                          S.of(context).register_page_filed_name_label_text,
                      helperText:
                          S.of(context).register_page_filed_name_helper_text,
                      prefixIcon: const Icon(Icons.person),
                      suffixIcon: IconButton(
                        onPressed: () {},
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
                    onPressed: () {},
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
    if (_formKey.currentState!.validate()) {}
  }
}



// Widget _filedName(BuildContext context) {
//   return TextFormField(
//     controller: _nameController,
//       decoration: InputDecoration(
//     labelText: 'Full Name',
//     helperText: 'Please state your full name',
//     prefixIcon: const Icon(Icons.person),
//     suffixIcon: IconButton(
//       onPressed: () {},
//       icon: Icon(
//         Icons.delete_outline,
//         color: Theme.of(context).focusColor,
//       ),
//     ),
//     enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
//         borderRadius: const BorderRadius.all(
//           Radius.circular(15),
//         )),
//     focusedBorder: OutlineInputBorder(
//         borderSide:
//             BorderSide(width: 1, color: Theme.of(context).indicatorColor),
//         borderRadius: const BorderRadius.all(
//           Radius.circular(15),
//         )),
//   ));
// }
