library bs_dropdown;

import 'dart:async';
import 'dart:html';

import 'package:js_shims/js_shims.dart';
import 'package:ngdart/angular.dart';

part 'dropdown.dart' ;
part 'menu.dart';
part 'toggle.dart';
//part "keyboard_nav.dart";

const bsDropdownDirectives = [BsDropdownDirective, BsDropdownMenuDirective, BsDropdownToggleDirective];

@Deprecated('Renamed to "bsDropdownDirectives')
const NG_BOOTSTRAP_DROPDOWN_DIRECTIVES = bsDropdownDirectives;
