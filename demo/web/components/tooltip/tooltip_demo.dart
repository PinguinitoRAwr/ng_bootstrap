import 'package:ngdart/angular.dart';
import 'package:ngforms/angular_forms.dart';
import 'package:ng_bootstrap/ng_bootstrap.dart';

@Component(selector: 'tooltip-demo',
    templateUrl: 'tooltip_demo.html',
    directives: [BsTooltipComponent, coreDirectives, formDirectives],
    styles: [
      '''
    /* Specify styling for tooltip contents */
    bs-tooltip.customClass ng-deep .tooltip-inner {
        color: #880000;
        background-color: #ffff66;
        box-shadow: 0 6px 12px rgba(0,0,0,.175);
    }
    /* Hide arrow */
    bs-tooltip.customClass.bs-tooltip-top ng-deep .arrow::before {
        border-top-color: #ffff66;
    }
  '''
    ])
class TooltipDemo {
  String dynamicTooltip = 'Hello, World!';
  String dynamicTooltipText = 'dynamic';
  String htmlTooltip = "I've been made <b>bold</b>!";
  String inputModel;
}
