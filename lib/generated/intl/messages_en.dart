// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "register_page_button_text":
            MessageLookupByLibrary.simpleMessage("Submit form"),
        "register_page_filed_name_error_text":
            MessageLookupByLibrary.simpleMessage("The field can\'t be empty"),
        "register_page_filed_name_helper_text":
            MessageLookupByLibrary.simpleMessage("Please state your full name"),
        "register_page_filed_name_label_text":
            MessageLookupByLibrary.simpleMessage("Full Name"),
        "register_page_header":
            MessageLookupByLibrary.simpleMessage("Register Page")
      };
}
