part of bs_date_picker;

/// Creates a [BsMonthPickerComponent], this will be the view showed in the [NgBsDatePicker] when user clicks
/// month header button
@Component(
    selector: 'bs-month-picker',
    templateUrl: 'month_picker.html',
    directives: [coreDirectives],
    providers: [BsDatePickerComponent])
class BsMonthPickerComponent {
  /// parent [BsDatePickerInnerComponent]
  BsDatePickerComponent datePicker;

  /// label that appears in the year button header
  String yearTitle;

  /// label that appears in the day button header
  String dayTitle;

  /// rows that will be displayed in the month view
  List<List<DisplayedDate>> rows = <List<DisplayedDate>>[];

  /// provides the maximum mode
  String maxMode = 'year';

  void refreshViewHandler() {
    var initDate = datePicker._initDate;
    num year = initDate.year;
    var months = List.generate(
      12,
      (i) => datePicker.createDateObject(
        DateTime(year, i + 1, 1),
        datePicker.formatMonth,
      ),
    );
    dayTitle = datePicker.dateFilter(initDate, datePicker.formatDay);
    yearTitle = datePicker.dateFilter(initDate, datePicker.formatYear);
    rows = datePicker.split(months, 3);
  }
}
