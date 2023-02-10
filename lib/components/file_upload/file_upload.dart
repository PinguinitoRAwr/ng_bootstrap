library bs_file_upload;

import 'dart:async';
import 'dart:html';

import 'package:ngdart/angular.dart';

part 'file_select_directive.dart';
part 'file_drop_directive.dart';

const bsFileUploadDirectives = [BsFileSelectDirective, BsFileDropDirective];

@Deprecated('Renamed to "bsFileUploadDirectives"')
const BS_FILE_UPLOAD_DIRECTIVES = bsFileUploadDirectives;
