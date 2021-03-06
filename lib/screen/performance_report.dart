import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/text_design.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PerformanceReport extends StatefulWidget {
  const PerformanceReport({Key? key}) : super(key: key);

  @override
  _PerformanceReportState createState() => _PerformanceReportState();
}

class _PerformanceReportState extends State<PerformanceReport> {
  TooltipBehavior? _salesToolTipBehavior;
  TooltipBehavior? _valueToolTipBehavior;
  TooltipBehavior? _topToolTipBehavior;
  TooltipBehavior? _bagSizeToolTipBehavior;
  @override
  void initState() {
    _salesToolTipBehavior = TooltipBehavior(enable: true);
    _valueToolTipBehavior = TooltipBehavior(enable: true);
    _topToolTipBehavior = TooltipBehavior(enable: true);
    _bagSizeToolTipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  final List<ChartData> chartData = [
    ChartData('David', 25),
    ChartData('Steve', 38),
    ChartData('Jack', 34),
    ChartData('Others', 52)
  ];
  final List<Historical> _historicalchart = [
    Historical(10),
    Historical(19),
    Historical(41),
    Historical(19),
    Historical(11),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: green,
          title:  Text(
            LocaleKeys.performance_report.tr(),
            style: ReTextStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 50,
                        color: Color(0xFFD8D8D8),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Text(
                                LocaleKeys.satisfaction.tr(),
                                style: TextStyle(
                                  fontFamily: 'Allerta',
                                  fontSize: 15,
                                ),
                              ),
                              const Text(
                                '4.5',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Allerta',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 50,
                        color: Color(0xFFF7CAAC),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Added into bag',
                                style: TextStyle(
                                  fontFamily: 'Allerta',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '15',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Allerta',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: green,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                         LocaleKeys.store_viewed.tr(),
                          style: TextStyle(
                            fontFamily: 'Allerta',
                            fontSize: 15,
                          ),
                        ),
                       const Text(
                          '150',
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Allerta',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(text: LocaleKeys.yearly_sales.tr()),
                  // Enable legend
                  // legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: _salesToolTipBehavior,
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('Jan', 35),
                          SalesData('Feb', 28),
                          SalesData('Mar', 34),
                          SalesData('Apr', 32),
                          SalesData('Jun', 40),
                          SalesData('July', 25),
                          SalesData('Aug', 35),
                          SalesData('Sep', 60),
                          SalesData('Oct', 70),
                          SalesData('Nov', 50),
                          SalesData('Dec', 30),
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(text: LocaleKeys.yearly_order_value.tr()),
                  // Enable legend
                  // legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: _valueToolTipBehavior,
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('Jan', 2025),
                          SalesData('Feb', 500),
                          SalesData('Mar', 100),
                          SalesData('Apr', 3000),
                          SalesData('Jun', 5000),
                          SalesData('July', 2500),
                          SalesData('Aug', 500),
                          SalesData('Sep', 600),
                          SalesData('Oct', 3000),
                          SalesData('Nov', 790),
                          SalesData('Dec', 5600),
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),
              SfCircularChart(
                  title: ChartTitle(text: LocaleKeys.top5_selling_items.tr()),
                  legend: Legend(
                    isVisible: true,
                  ),
                  tooltipBehavior: _topToolTipBehavior,
                  series: <CircularSeries>[
                    // Render pie chart
                    PieSeries<ChartData, String>(
                        dataSource: chartData,
                        pointColorMapper: (ChartData data, _) => data.color,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),
              SfCartesianChart(
                  title: ChartTitle(text: LocaleKeys.bag_size.tr()),
                  tooltipBehavior: _bagSizeToolTipBehavior,
                  series: <ChartSeries>[
                    HistogramSeries<Historical, num>(
                        dataSource: _historicalchart,
                        yValueMapper: (Historical sales, _) => sales.x,
                        binInterval: 5,
                        showNormalDistributionCurve: true,
                        curveColor: const Color.fromRGBO(192, 108, 132, 1),
                        borderWidth: 5),
                  ])
            ],
          )),
        ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

class Historical {
  final num x;

  Historical(this.x);
}
