import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:myapp/data/SampleData.dart';

class MyUsageChart extends StatelessWidget {
  final List<Series<Consumption, String>> seriesList;
  final bool animate;

  MyUsageChart(this.seriesList, {required this.animate});

  factory MyUsageChart.withSampleData() {
    return new MyUsageChart(
      createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      behaviors: [new charts.ChartTitle('kilowatt hours (kWh)',
            behaviorPosition: charts.BehaviorPosition.start,
            titleStyleSpec: charts.TextStyleSpec(fontSize: 11),
            titleOutsideJustification: charts.OutsideJustification.middleDrawArea,)
      ],
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }

}
