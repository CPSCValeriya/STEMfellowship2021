import 'package:charts_flutter/flutter.dart' as charts;
import 'package:myapp/charts/StackedAreaLine.dart';

const secondaryMeasureAxisId = 'secondaryMeasureAxisId';

/// Create series list with multiple series
List<charts.Series<Consumption, String>> createSampleData() {
  final myConsumption = [
    new Consumption('Aug 29', 23),
    new Consumption('Aug 30', 19),
    new Consumption('Aug 31', 17),
    new Consumption('Sept 1', 11),
    new Consumption('Sept 2', 21),
    new Consumption('Sept 3', 17),
    new Consumption('Sept 4', 16),
    new Consumption('Sept 5', 19),
  ];

  return [
    new charts.Series<Consumption, String>(
        id: 'My Consumption',
        domainFn: (Consumption consumption, _) => consumption.day,
        measureFn: (Consumption consumption, _) => consumption.kWh,
        data: myConsumption,
        colorFn: (consuption, num) => charts.MaterialPalette.green.shadeDefault,
        fillColorFn: (consumption, num) {
          if (consumption.kWh > 25) {
            return charts.MaterialPalette.red.shadeDefault;
          } else {
            return charts.MaterialPalette.green.shadeDefault;
          }
        },
        labelAccessorFn: (Consumption kWh, _) => '${kWh.kWh.toString()}')
  ];
}

/// Sample ordinal data type.
class Consumption {
  final String day;
  final int kWh;
  Consumption(this.day, this.kWh);
}
