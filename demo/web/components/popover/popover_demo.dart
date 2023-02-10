import 'package:ngdart/angular.dart';
import 'package:ngforms/angular_forms.dart';
import 'package:ng_bootstrap/ng_bootstrap.dart';

@Component(selector: 'popover-demo',
    templateUrl: 'popover_demo.html',
    directives: [bsDirectives, coreDirectives, formDirectives])
class PopoverDemo {
  String name = 'Jhon Doe';
}
